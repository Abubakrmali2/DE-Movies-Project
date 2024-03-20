import io
import pandas as pd
import requests
from zipfile import ZipFile

if 'data_loader' not in globals():
    from mage_ai.data_preparation.decorators import data_loader
if 'test' not in globals():
    from mage_ai.data_preparation.decorators import test


@data_loader
def load_data_from_api(*args, **kwargs):
    """
    Template for loading data from API
    """
    url = 'https://files.grouplens.org/datasets/movielens/ml-1m.zip'
    response = requests.get(url)
    #wget url
    #unzip ml-1m.zip
    with ZipFile(io.BytesIO(response.content), 'r') as zip_ref:
        zip_ref.extractall('ml-1m')

    m_column_names = ['MovieID', 'Title', 'Genres']
    dfm = pd.read_csv('ml-1m/ml-1m/movies.dat', delimiter='::', encoding='ISO-8859-1',header=None, names=m_column_names, engine='python')

    #r_column_names = ['UserID','MovieID','Rating','Timestamp']
    #dfr = pd.read_csv('ml-1m/ml-1m/ratings.dat', delimiter='::', engine='python',header=None, names=r_column_names)

    #return dfm #pd.read_csv(io.StringIO(response.text), sep=',')
    return dfm



@test
def test_output(output, *args) -> None:
    """
    Template code for testing the output of the block.
    """
    assert output is not None, 'The output is undefined'
