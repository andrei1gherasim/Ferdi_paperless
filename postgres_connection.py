import psycopg2
import pandas as pd

from sqlalchemy import create_engine

psql_conn_config ={
    "HOSTNAME": "cs.assist-ai.ro",
    "DATABASE": "paperless",
    "USERNAME": "paperless",
    "PASSWORD": "paperless",
}

def create_psql_connection(psql_conn_config=psql_conn_config):
    conn = psycopg2.connect(
        host = psql_conn_config.get("HOSTNAME"),
        database = psql_conn_config.get("DATABASE"),
        user = psql_conn_config.get("USERNAME"),
        password = psql_conn_config.get("PASSWORD")
    )

    return conn

def create_psql_engine(psql_conn_config=psql_conn_config):
    # Create a connection string
    host = psql_conn_config.get("HOSTNAME")
    database = psql_conn_config.get("DATABASE")
    user = psql_conn_config.get("USERNAME")
    password = psql_conn_config.get("PASSWORD")

    engine = create_engine(f'postgresql+psycopg2://{user}:{password}@{host}:port/{database}')

    return engine



def get_postgress_data(query):
    """
    Returns result of query as a pandas df
    Params:
        query, str, postgres sql compatible query
        psql_conn_config, dict, default psql_conn_config, 
                        psql connection details
    Returns:
        df, pandas DataFrame, containing the query result
    """
    conn = create_psql_connection()

    # Execute the query and load the data into a pandas DataFrame
    df = pd.read_sql(query, conn)

    # Close the connection
    conn.close()

    return df

def write_to_postgress_table(df, table_name, engine, if_exists='replace', index_=False):

    df.to_sql(table_name, engine, if_exists=if_exists, index=index_)
    