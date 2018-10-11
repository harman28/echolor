# echolor [![Build](https://api.travis-ci.org/harman28/echolor.svg?branch=master)](https://travis-ci.org/harman28/echolor)
Echo with colour, meant for your command line.

### Wait what, does this really need to be a gem?
No, you're right. It doesn't. Adding the following snippet to your `.bashrc` would perfectly replicate what this gem does.
(Full list of color codes shared [here](echolor.sh))
```sh
COLOUR_CODE_BLUE='\033[0;34m'
COLOUR_CODE_NC='\033[0m'

function echolor() {
  upcase=$(echo $1 | awk '{print toupper($0)}')
  code="COLOUR_CODE_$upcase"
  echo -e "${!code}${@:2}${COLOUR_CODE_NC}"
}
```
But that's a mouthful, and not easy to share. It's far easier to use a package manager to install a gem that gives you an executable for use on your command line.
I also thought this would be a nice way to learn how Ruby testing for executables works.

### Installation
```
gem install echolor
```

### Usage
```sh
$> echolor -h
Usage: echolor [options] [color] [text]

Available option(s):
    -n                               Skips newline

Available colors:
  black
  light_black
  red
  light_red
  green
  light_green
  yellow
  light_yellow
  blue
  light_blue
  magenta
  light_magenta
  cyan
  light_cyan
  white
  light_white
  default
$> echolor red "ERROR"
ERROR # In red tho
$> echolor red ERROR: An error message
ERROR: An error message # In red tho
$> echolor -n red "ERROR"
ERROR$> echo green "END"
END # In green tho
```
