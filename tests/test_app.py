# tests/test_app.py

import pytest
from app import app

@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

def test_home_page(client):
    rv = client.get('/')
    assert b'Hello, World!' in rv.data
