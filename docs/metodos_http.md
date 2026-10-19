<<<<<<< HEAD
# Documentación de Métodos HTTP - Práctica Web III

En este documento se detallan los 5 métodos HTTP principales consultando la API pública de pruebas [JSONPlaceholder](https://jsonplaceholder.typicode.com/posts).
=======
# Documentación de Métodos HTTP

En esta sección se documenta el funcionamiento de los 5 métodos HTTP principales consumiendo la API pública de JSONPlaceholder (`https://jsonplaceholder.typicode.com/posts`).
>>>>>>> 6d58558559ab4345859616d27fe134a76616d9b3

---

## 1. GET
<<<<<<< HEAD
* **¿Para qué sirve?:** Se utiliza para solicitar y obtener información del servidor sin modificar ningún dato.
* **URL:** `https://jsonplaceholder.typicode.com/posts/1`
* **Body:** N/A (No requiere)
* **Código de estado:** `200 OK`
=======
* **¿Para qué sirve?:** Se utiliza para solicitar y obtener datos de un servidor. No modifica el estado del recurso.
* **Ejemplo de uso (Thunder Client / fetch):**
  * **URL:** `GET https://jsonplaceholder.typicode.com/posts/1`
  * **Body:** N/A (no requiere cuerpo)
  * **Código de Estado (Status):** `200 OK`
>>>>>>> 6d58558559ab4345859616d27fe134a76616d9b3

---

## 2. POST
<<<<<<< HEAD
* **¿Para qué sirve?:** Se utiliza para enviar datos al servidor y crear un nuevo recurso.
* **URL:** `https://jsonplaceholder.typicode.com/posts`
* **Body (JSON):**
```json
{
  "title": "Nuevo Post",
  "body": "Contenido de prueba para el método POST",
  "userId": 1
}
=======
* **¿Para qué sirve?:** Se utiliza para enviar datos al servidor con el fin de crear un nuevo recurso.
* **Ejemplo de uso (Thunder Client / fetch):**
  * **URL:** `POST https://jsonplaceholder.typicode.com/posts`
  * **Body (JSON):**
    ```json
    {
      "title": "Nuevo Post de Prueba",
      "body": "Contenido del post creado para la práctica.",
      "userId": 1
    }
    ```
  * **Código de Estado (Status):** `201 Created`

---

## 3. PUT
* **¿Para qué sirve?:** Se utiliza para reemplazar por completo un recurso existente con una nueva representación.
* **Ejemplo de uso (Thunder Client / fetch):**
  * **URL:** `PUT https://jsonplaceholder.typicode.com/posts/1`
  * **Body (JSON):**
    ```json
    {
      "id": 1,
      "title": "Post Completamente Reemplazado",
      "body": "Nuevo contenido total.",
      "userId": 1
    }
    ```
  * **Código de Estado (Status):** `200 OK`

---

## 4. PATCH
* **¿Para qué sirve?:** Se utiliza para actualizar parcialmente un recurso existente (modifica solo los campos enviados).
* **Ejemplo de uso (Thunder Client / fetch):**
  * **URL:** `PATCH https://jsonplaceholder.typicode.com/posts/1`
  * **Body (JSON):**
    ```json
    {
      "title": "Solo actualizo el titulo"
    }
    ```
  * **Código de Estado (Status):** `200 OK`

---

## 5. DELETE
* **¿Para qué sirve?:** Se utiliza para eliminar un recurso específico del servidor.
* **Ejemplo de uso (Thunder Client / fetch):**
  * **URL:** `DELETE https://jsonplaceholder.typicode.com/posts/1`
  * **Body:** N/A (no requiere cuerpo)
  * **Código de Estado (Status):** `200 OK`

---

## Diferencia entre PUT y PATCH
La principal diferencia entre **PUT** y **PATCH** radica en el alcance de la modificación:

* **PUT (Reemplazo total):** Requiere enviar la representación completa del objeto. Si falta algún campo en el body enviando una solicitud PUT, ese campo puede sobreescribirse como nulo o borrarse en el servidor.
* **PATCH (Actualización parcial):** Solo requiere enviar los campos específicos que se desean modificar. Los demás atributos del recurso original se mantienen intactos.
>>>>>>> 6d58558559ab4345859616d27fe134a76616d9b3
