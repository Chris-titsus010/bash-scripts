#! binbash

input="Pour apprendre rapidement à taper à toute vitesse, entrainez-vous fréquemment en adoptant la bonne technique. Soignez votre posture, optez pour un éclairage adéquat, positionnez vos mains correctement sur le clavier, regardez votre écran et utilisez tous vos doigts pour frapper les touches. Au début, concentrez-vous sur la précision, plutôt que la vitesse. Vous pourrez ainsi bâtir une mémoire musculaire qui guidera vos gestes sans le faire consciemment. Ensuite, exercez-vous à accélérer la cadence. En quelques semaines, vous observerez déjà des progrès."

for (( i=0; i<=${#input}-1; i++ ))
do
	char=${input:$i:1}
	nonAlpha=true

	if [[ "$char" =~ [a-zA-Z0-9] ]]
	then
		if [[ ! "$char" =~ [àáâãäÆæçèéêëìíîĩïñòóôõöŒœùúûü™] ]]
		then
			xdotool key $char
			nonAlpha=false
		fi
	fi

	if $nonAlpha
	then
		case $char in
			(" ")	xdotool key space ;;
			("à")	xdotool key agrave ;;
			("á")	xdotool key aacute ;;
			("â")	xdotool key acircumflex ;;
			("ã")	xdotool	key atilde ;;
			("ä")	xdotool key adiaeresis ;;
			("Æ")	xdotool key AE ;;
			("æ")	xdotool key ae ;;
			("ç")	xdotool key ccedilla ;;
			("è")	xdotool key egrave ;;
			("é")	xdotool key eacute ;;
			("ê")	xdotool key ecircumflex ;;
			("ë")	xdotool key ediaeresis ;;
			("ì")	xdotool key igrave ;;
			("í")	xdotool key iacute ;;
			("î")	xdotool key icircumflex ;;
			("ĩ")	xdotool key itilde ;;
			("ï")	xdotool key idiaeresis ;;
			("ñ")	xdotool key ntilde ;;
			("ò")	xdotool key ograve ;;
			("ó")	xdotool key oacute ;;
			("ô")	xdotool key ocircumflex ;;
			("õ")	xdotool key otilde ;;
			("ö")	xdotool key odiaeresis ;;
			("Œ")	xdotool key OE ;;
			("œ")	xdotool key oe ;;
			("ù")	xdotool key ugrave ;;
			("ú")	xdotool key uacute ;;
			("û")	xdotool key ucircumflex ;;
			("ü")	xdotool key udiaeresis ;;
			("'")	xdotool key apostrophe ;;
			("\"")	xdotool key quotedbl ;;
			("‘")	xdotool key leftsinglequotemark ;;
			("’")	xdotool key rightsinglequotemark ;;
			("“")	xdotool key leftdoublequotemark ;;
			("”")	xdotool key rightdoublequotemark ;;
			("\`")	xdotool key grave ;;
			("´")	xdotool key acute ;;
			("˝")	xdotool key doubleacute ;;
			("'")	xdotool key quoteright ;;
			("′")	xdotool key minutes ;;
			("″")	xdotool key seconds ;;
			(",")	xdotool key comma ;;
			(".")	xdotool key period ;;
			(";")	xdotool key semicolon ;;
			(":")	xdotool key colon ;;
			("!")	xdotool key exclam ;;
			("¡")	xdotool key exclamdown ;;
			("?")	xdotool key question ;;
			("¿")	xdotool key questiondown ;;
			("#")	xdotool key numbersign ;;
			("+")	xdotool key plus ;;
			("=")	xdotool key equal ;;
			("<")	xdotool key less ;;
			(">")	xdotool key greater ;;
			("«")	xdotool key guillemotleft ;;
			("»")	xdotool key guillemotright ;;
			("%")	xdotool key percent ;;
			("µ")	xdotool key mu ;;
			("-")	xdotool key minus ;;
			("_")	xdotool key underscore ;;
			("~")	xdotool key asciitilde ;;
			("/")	xdotool key slash ;;
			("\\")	xdotool key backslash ;;
			("(")	xdotool key parenleft ;;
			(")")	xdotool key parenright ;;
			("[")	xdotool key bracketleft ;;
			("]")	xdotool key bracketright ;;
			("{")	xdotool key braceleft ;;
			("}")	xdotool key braceright ;;
			("|")	xdotool key bar ;;
			("&")	xdotool key ampersand ;;
			("$")	xdotool key dollar ;;
			("£")	xdotool key sterling ;;
			("¥")	xdotool key yen ;;
			("€")	xdotool key EuroSign ;;
			("¢")	xdotool key cent ;;
			("¤")	xdotool key currency ;;
			("©")	xdotool key copyright ;;
			("™")	xdotool key trademark ;;
			("®")	xdotool key registered ;;
			("§")	xdotool key section ;;
			("*")	xdotool key asterisk ;;
			("°")	xdotool key degree ;;
			("@")	xdotool key at ;;
			("^")	xdotool key asciicircum ;;
			("¨")	xdotool key diaeresis ;;
		esac
	fi
done
