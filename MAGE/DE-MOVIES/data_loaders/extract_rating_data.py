import io
import pandas as pd
import requests
if 'data_loader' not in globals():
    from mage_ai.data_preparation.decorators import data_loader
if 'test' not in globals():
    from mage_ai.data_preparation.decorators import test


@data_loader
def load_data_from_api(*args, **kwargs):
    """
    Template for loading data from API
    """
    #url = ''
    #response = requests.get(url)
    r_column_names = ['UserID','MovieID','Rating','Timestamp']
    dfr = pd.read_csv('ml-1m/ml-1m/ratings.dat', delimiter='::', engine='python',header=None, names=r_column_names)


    return dfr


@test
def test_output(output, *args) -> None:
    """
    Template code for testing the output of the block.
    """
    assert output is not None, 'The output is undefined'
