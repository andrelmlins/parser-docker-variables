# Parser Docker Variables

Parser docker variables to javascript

## Install

with **bpkg**:

```bash
$ bpkg install andrelmlins/parser-docker-variables -g
```

with **Homebrew**:

```bash
$ brew install andrelmlins/parser-docker-variables
```

with **curl**:

```bash
$ curl -L https://raw.github.com/andrelmlins/parser-docker-variables/master/parser-docker-variables.sh -o ~/bin/parser-docker-variables && chmod +x ~/bin/parser-docker-variables
```

## Usage

```bash
$ parser-docker-variables
```

or

```bash
$ parser-docker-variables {filename} {pattern}
```

## Example

**Docker variables**

```
API_URL="http://www.example.com"
AUTH_TOKEN="xxxxxx"
```

**Result**

```js
window.apiUrl = "http://www.example.com";
window.authToken = "xxxxxx";
```

## License

Parser Docker Variables is open source software [licensed as MIT](https://github.com/andrelmlins/parser-docker-variables/blob/master/LICENSE).
