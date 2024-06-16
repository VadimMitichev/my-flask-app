# tests/test_app.py

from app import app

def test_home_page():
    client = app.test_client()

    # Отправляем GET-запрос к главной странице
    rv = client.get('/')

    # Проверяем статус код ответа
    assert rv.status_code == 200

    # Проверяем, содержит ли ответ страницы указанную фразу
    expected_phrase = 'Flask веб-сервером'
    assert expected_phrase.encode('utf-8') in rv.data
