# Auth0 Allowed Web Origins Container
This is a docker container Github Action that supports updating the Allowed Web Origins property of an Auth0 application during a deployment process. The main purpose of this is to support ephemeral environments where subdomain changes can cause breaking authentication flows due to a more secure Allowed Web Origins property (not accepting wildcards).

## Inputs
| Name | Description | Is Required? | Default |
|------|-------------|--------------|---------|
| `auth0-domain` | The domain of the application in Auth0. | :heavy_check_mark: | |
| `auth0-mgmt-client-id` | The client id used when acquiring a token for the Auth0 mgmt api. | :heavy_check_mark: | |
| `auth0-mgmt-client-secret` | The client secret used when acquiring a token for the Auth0 mgmt api. | :heavy_check_mark: | |
|`auth0-app-id` | The application id to add/remove the allowed web origin field. | :heavy_check_mark: | |
| `origin` | The origin to be added/removed from the Auth0 application. | :heavy_check_mark: | |
| `remove` | Should the origin be removed from the application? If false, the origin is added to the application. | :heavy_check_mark: | `false` |  

## Example Usage to Add `https://localhost`
```yaml
uses: tomdsmartdata/auth0-allowed-web-origins@v1
with:
    auth0-domain: https://dev-1acu2c4b.auth0.com
    auth0-mgmt-client-id: heRjegYPwEaJFj76t7x8AJYLGPsbB4Ts
    auth0-mgmt-client-secret: tRSQ7orA2AWqiZabpBVIAbhHB-E4j21fXWrAgw366EOcGtyuSvFrRMOd6w08vqgY
    auth0-app-id: wwxzTeQ3z33Gowt1vCIxJRTNs3FxjZd1
    origin: https://localhost
```
## Example Usage to Remove `https://localhost`
```yaml
uses: tomdsmartdata/auth0-allowed-web-origins@v1
with:
    auth0-domain: https://dev-1acu2c4b.auth0.com
    auth0-mgmt-client-id: heRjegYPwEaJFj76t7x8AJYLGPsbB4Ts
    auth0-mgmt-client-secret: tRSQ7orA2AWqiZabpBVIAbhHB-E4j21fXWrAgw366EOcGtyuSvFrRMOd6w08vqgY
    auth0-app-id: wwxzTeQ3z33Gowt1vCIxJRTNs3FxjZd1
    origin: https://localhost
    remove: true
```
