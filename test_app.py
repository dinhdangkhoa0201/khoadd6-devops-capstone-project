from app import app

def test_home():
    with app.test_client() as client:
        res = client.get("/")

        assert res.status_code == 200
