# **FERDI LEGAL DATA paperless web app**
 - this repo is based on the paperless app
 - paperless is a Document Management System that enables one to effectively manage documents in different formats
 - the web app allows the user to upload documents and automatically extract the text from it
 - it also enables the user to add tags to the document, search in titles and text
## How to run the notebooks
 - **load_files.ipynb** is a notebook that enables the user to upload the texts a specified location folder; this will help the user upload a large amount of documents
 - it also helps the user add and correct the OCRized texts into the database; this is useful for documents that cannot be OCRized using paperless (the documents that have been ocrized using LLMs)
## What does the notebook/repo do
This repo will create the infrastucrure and architecture for the paperless app
- prerequisites:
    - UBUNTU 22.04 machine/vm/WSL2
    - python 3.12.8
    - pip3
    - jupyter engine: Jupyter Notebooks or Jupyter Lab or a IDE with a Jupyter
      externsion (i.e. VSCode with Jupter extension)
    - docker engine installed
    - docker compose installed
steps:
```bash
cd docker_compose
docker compose up -d # this will set up the whole infrastructure and app
docker compose down # this will remove and stop everything
```
 - once you've set up the app, you can access the paperless app, using either the *ip of the machine or vm* or *the name of the server* (will be referred to as address):
    -   paperless app:
            http://address:8000/
            username: paperless
            password: paperless
    -   posgres db UI:
            http://address:5050/
            username:admin@domain.com
            password:LEGIS_PASS_123

                - you will need to connect to the paperless db, by adding a new connection to: host: paperless-db-1, port: 5432, username: paperless, password: paperless
                - the above will help you manage the db and run queries
## SQL files
The folder contains sql scripts to be used:
 - create the specific Ferdi database: create_tabes.sql
 - create paperless tags: create_tags.sql
 - get different kind of data; these will be used by the above mentioned notebook
            
