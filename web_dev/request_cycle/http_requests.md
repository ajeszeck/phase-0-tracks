What are some common HTTP status codes?
 - GET - Requests data from a specific resource
 - POST - Submits data to be processed to a specific resource 
 - HEAD - Same as GET but returns only HTTP headers and no document body
 - PUT - Uploads a representation of the specified URI
 - DELETE - Deletes the specified resource
 - OPTIONS - Returns the HTTP methods that the server supports
 - CONNECT - Converts the request connection to a transparent TCP/IP tunnel
What is the difference between a GET request and a POST request? When might each be used?
 - A GET request is used to request resources, and a POST request is used to submit data to a resource. 
What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
 - A cookie is a bit of information that is sent to your computer by a website while you are using it and stored on your computer using your web browser. Used to store peristant data related to web browsing, so it can remember things upon further use of that website. Cookies are passed as HTTP headers when the server is responding to a request, this cookie is then stored on the user's computer.