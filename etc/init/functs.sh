GOOD=$'\e[32;01m'
WARN=$'\e[33;01m'
BAD=$'\e[31;01m'
HILITE=$'\e[36;01m'
BRACKET=$'\e[34;01m'
NORMAL=$'\e[0m'
ENDCOL=$'\e[A\e['$(( COLS - 8 ))'C'

ebegin() {
	echo -e " ${GOOD}*${NORMAL} $*"
}

eend() {
	local retval="${1:-0}" efunc="${2:-eerror}" msg
	shift 2

	if [[ ${retval} == "0" ]] ; then
		msg="${BRACKET}[ ${GOOD}ok${BRACKET} ]${NORMAL}"
	else
		msg="${BRACKET}[ ${BAD}!!${BRACKET} ]${NORMAL} $*"
	fi
	echo -e "${ENDCOL} ${msg}"
}



