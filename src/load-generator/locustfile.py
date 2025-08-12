from locust import HttpUser, task, between

class PlatformUser(HttpUser):
    wait_time = between(1, 3)

    @task(3)
    def browse_products(self):
        self.client.get("/api/products")

    @task(2)
    def view_cart(self):
        self.client.get("/api/cart")

    @task(1)
    def checkout(self):
        self.client.post("/api/checkout", json={"items": []})

    @task(1)
    def get_recommendations(self):
        self.client.get("/api/recommendations")
