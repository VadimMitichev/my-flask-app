# tests/test_app.py

from ..app import app  # Измененный импорт

def test_home_page():
    client = app.test_client()

    # Пример теста на проверку статуса кода
    rv = client.get('/')
    assert rv.status_code == 200

    # Пример теста на проверку содержимого ответа
    assert b'Hello, World!' in rv.data
