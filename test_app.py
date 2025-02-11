import pytest
from app import app

def test_index():
    with app.test_client() as tester:
        response = tester.get('/')
        assert response.status_code == 200
        assert b"Hello, World!" in response.data

if __name__ == "__main__":
    pytest.main()
