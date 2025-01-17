---
uid: RetrieveProductVersionInformation
---

# Retrieve product version information

The product version information includes the Edge Data Store version number, the .NET Core version, the Core CLR version, and the operating system. This information can be useful for troubleshooting purposes.

To retrieve the product version of EDS, follow these steps:

1. Open a tool capable of making HTTP requests.

1. Run a GET command to the following endpoint, replacing `<port_number>` with the port specified for EDS:

  ```http
  http://localhost:<port_number>/api/v1/diagnostics/productinformation
  ```

   Example using curl and the default port number:

   ```bash
   curl -v http://localhost:5590/api/v1/Diagnostics/ProductInformation
   ```
