---
uid: ResetTheStorageComponent
---

# Reset the Storage component

When applied at the storage component level, the Reset command deletes all event and configuration data related to the Storage component and restarts Edge Data Store.

To reset the Storage component, follow these steps:

1. Open a tool capable of making HTTP requests.

1. Run a POST command to the following endpoint, replacing `<port_number>` with the port specified for EDS:

    ```http
    http://localhost:<port_number>/api/v1/administration/Storage/Reset
    ```

    Example using curl and the default port:

    ```bash
    curl -d "" http://localhost:5590/api/v1/Administration/Storage/Reset
    ```

    An HTTP status 204 message indicates success.
