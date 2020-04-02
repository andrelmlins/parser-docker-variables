# Parser Docker Variables

Parser Docker Variables for javascript

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

with **Antigen**:

Add `antigen bundle andrelmlins/parser-docker-variables` to your `.zshrc` with your other antigen commands

With **Zgen**:

Add `zgen load andrelmlins/parser-docker-variables` to your `.zshrc` with your other zgen commands

## Usage

Basic use:

```bash
$ parser-docker-variables [options] [pattern]
```

with "pbcopy":

```bash
$ parser-docker-variables | pbcopy
```

with "echo file":

```bash
echo $(parser-docker-variables) >> env.js
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

## Options

| Name      | Description  | Usage           |
| --------- | ------------ | --------------- |
| `version` | Show version | `-V, --version` |
| `help`    | Show help    | `-h, --help`    |

## License

Parser Docker Variables is open source software [licensed as MIT](https://github.com/andrelmlins/parser-docker-variables/blob/master/LICENSE).
