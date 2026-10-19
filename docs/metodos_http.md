# Documentación de Métodos HTTP

En esta sección se documenta el funcionamiento de los 5 métodos HTTP principales consumiendo la API pública de JSONPlaceholder (`https://jsonplaceholder.typicode.com/posts`).

---

## 1. GET
* **¿Para qué sirve?:** Se utiliza para solicitar y obtener datos de un servidor. No modifica el estado del recurso.
* **Ejemplo de uso (Thunder Client / fetch):**
  * **URL:** `GET https://jsonplaceholder.typicode.com/posts/1`
  * **Body:** N/A (no requiere cuerpo)
  * **Código de Estado (Status):** `200 OK`

---

## 2. POST
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