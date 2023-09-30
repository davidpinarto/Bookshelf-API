# Bookshelf-API
In this API You can Create, Read, Update, and Delete a Book.

## How to deploy Bookshelf-API
- Install Node.js
  The first thing You should have to deploy this app is Node.js (v14.x above), I develop this app with Node.js v19.7.0.
- Open Your terminal.
- Go to Bookshelf-API root directory `(ex. cd ~/Bookshelf-API)` .
- Then run this command on terminal:
  ```
  npm install.
  npm run start (for production).
  npm run start-dev (for development).
  ```
## API Documentation
### Add Book
- Method: POST
- URL: /books
- Status Code: 200
- Body Request:
  ```
  {
    "name": string,
    "year": number,
    "author": string,
    "summary": string,
    "publisher": string,
    "pageCount": number,
    "readPage": number,
    "reading": boolean
  }
  ```
- Response Body:
  ```
  {
    "status": "success",
    "message": "Buku berhasil ditambahkan",
    "data": {
        "bookId": "1L7ZtDUFeGs7VlEt"
    }
  }
  ```

### Get Book
- Method: GET
- URL: /books
- Status Code: 200
- Response Body:
  ```
  {
    "status": "success",
    "data": {
        "books": [
            {
                "id": "Qbax5Oy7L8WKf74l",
                "name": "Book A",
                "publisher": "John Doe"
            },
            {
                "id": "1L7ZtDUFeGs7VlEt",
                "name": "Book B",
                "publisher": "Jane Doe"
            },
            {
                "id": "K8DZbfI-t3LrY7lD",
                "name": "Book C",
                "publisher": "Bill G"
            }
        ]
    }
  }
  ```

### Get Detail Book by Id
- Method: GET
- URL: /books/{bookId}
- Status Code: 200
- Response Body:
  ```
  {
    "status": "success",
    "data": {
        "book": {
            "id": "Qbax5Oy7L8WKf74l",
            "name": "Book A",
            "year": 2011,
            "author": "John Doe",
            "summary": "Lorem Dolor sit Amet",
            "publisher": "John Doe",
            "pageCount": 200,
            "readPage": 26,
            "finished": false,
            "reading": false,
            "insertedAt": "2023-03-05T06:14:28.930Z",
            "updatedAt": "2023-03-05T06:14:30.718Z"
        }
    }
  }
  ```
### Edit Book by Id
- Method: PUT
- URL: /books/{bookId}
- Status Code: 200
- Body Request:
  ```
  {
    "name": string,
    "year": number,
    "author": string,
    "summary": string,
    "publisher": string,
    "pageCount": number,
    "readPage": number,
    "reading": boolean
  }
  ```
- Response Body:
  ```
  {
    "status": "success",
    "message": "Buku berhasil diperbarui"
  }
  ```

### Delete Book by Id
- Method: DELETE
- URL: /books/{bookId}
- Status Code: 200
- Response Body:
  ```
  {
    "status": "success",
    "message": "Buku berhasil dihapus"
  }
  ```
