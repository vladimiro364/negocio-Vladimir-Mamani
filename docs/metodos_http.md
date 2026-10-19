# Documentación de Métodos HTTP - Práctica Web III

En este documento se detallan los 5 métodos HTTP principales consultando la API pública de pruebas [JSONPlaceholder](https://jsonplaceholder.typicode.com/posts).

---

## 1. GET
* **¿Para qué sirve?:** Se utiliza para solicitar y obtener información del servidor sin modificar ningún dato.
* **URL:** `https://jsonplaceholder.typicode.com/posts/1`
* **Body:** N/A (No requiere)
* **Código de estado:** `200 OK`

---

## 2. POST
* **¿Para qué sirve?:** Se utiliza para enviar datos al servidor y crear un nuevo recurso.
* **URL:** `https://jsonplaceholder.typicode.com/posts`
* **Body (JSON):**
```json
{
  "title": "Nuevo Post",
  "body": "Contenido de prueba para el método POST",
  "userId": 1
}