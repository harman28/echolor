#! /bin/sh
# Bash function to replace this whole gem

COLOUR_CODE_BLACK='\033[0;30m'
COLOUR_CODE_BLUE='\033[0;34m'
COLOUR_CODE_BROWN='\033[0;33m'
COLOUR_CODE_GRAY='\033[0;37m'
COLOUR_CODE_GREEN='\033[0;32m'
COLOUR_CODE_PURPLE='\033[0;35m'
COLOUR_CODE_RED='\033[0;31m'
COLOUR_CODE_WHITE='\033[1;37m'
COLOUR_CODE_YELLOW='\033[1;33m'
COLOUR_CODE_NC='\033[0m'

# Uses above codes to colour things more easily
# Replacement for echo, first arg is the colour
# Usage:
# echolor yellow "this is a gentle warning"
# echolor red this is a warning
function echolor() {
  upcase=$(echo $1 | awk '{print toupper($0)}')
  code="COLOUR_CODE_$upcase"
  echo -e "${!code}${@:2}${COLOUR_CODE_NC}"
}
