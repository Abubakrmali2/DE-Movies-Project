import pandas as pd
if 'transformer' not in globals():
    from mage_ai.data_preparation.decorators import transformer
if 'test' not in globals():
    from mage_ai.data_preparation.decorators import test


@transformer
def transform(data, *args, **kwargs):
    """
    Template code for a transformer block.

    Add more parameters to this function if this block has multiple parent blocks.
    There should be one parameter for each output variable from each parent block.

    Args:
        data: The output from the upstream parent block
        args: The output from any additional upstream blocks (if applicable)

    Returns:
        Anything (e.g. data frame, dictionary, array, int, str, etc.)
    """
    # Specify your transformation logic here
    dfm=pd.DataFrame(data)

    dfm['MovieDate'] =dfm['Title'].str.extract(r'\((\d{4})\)$')
    dfm['MovieDate'] =pd.to_datetime(dfm['MovieDate'], format='%Y')
    dfm['MovieDate'] = dfm['MovieDate'].dt.strftime('%Y')
    #dfm['MovieDate'] = dfm['Title'].str.extract(r'\((\d{4})\)$')
    dfm['Title'] = dfm['Title'].str.extract(r'^(.*?)\s*\(\d{4}\)$')


    return dfm


@test
def test_output(output, *args) -> None:
    """
    Template code for testing the output of the block.
    """
    assert output is not None, 'The output is undefined'
