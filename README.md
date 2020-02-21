# Parser Docker Variables

Parser docker variables to javascript

## Usage

```
$ . parser.sh
```

or by bpkg

```
$ curl -Lo- "https://raw.githubusercontent.com/bpkg/bpkg/master/setup.sh" | bash
$ bpkg install parser-docker-variables -g
$ parser-docker-variables
```

## Example

**Docker variables**

```
API_URL="http://www.example.com"
AUTH_TOKEN="xxxxxx"
```

### Result

```js
window.apiUrl = "http://www.example.com";
window.authToken = "xxxxxx";
```

## License

Parser Docker Variables is open source software [licensed as MIT](https://github.com/andrelmlins/parser-docker-variables/blob/master/LICENSE).
