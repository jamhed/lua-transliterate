-- transliterate russian text with latin symbols
function make_tr()
	local conv = require("iconv")
	cd = iconv.new("CP1251", "UTF-8")

	local v = {}
v["à"]="a" v["À"]="A" v["á"]="b" v["Á"]="B" v["â"]="v" v["Â"]="V" v["ã"]="g" v["Ã"]="G" v["ä"]="d" v["Ä"]="D" v["å"]="e" v["Å"]="E" v["¸"]="yo" v["¨"]="YO" v["æ"]="zh" v["Æ"]="ZH" v["ç"]="z" v["Ç"]="Z" v["è"]="i" v["È"]="I" v["é"]="j" v["É"]="J" v["ê"]="k" v["Ê"]="K" v["ë"]="l" v["Ë"]="L" v["ì"]="m" v["Ì"]="M" v["í"]="n" v["Í"]="N" v["î"]="o" v["Î"]="O" v["ï"]="p" v["Ï"]="P" v["ð"]="r" v["Ð"]="R" v["ñ"]="s" v["Ñ"]="S" v["ò"]="t" v["Ò"]="T" v["ó"]="u" v["Ó"]="U" v["ô"]="f" v["Ô"]="F" v["õ"]="x" v["Õ"]="X" v["ö"]="c" v["Ö"]="C" v["÷"]="ch" v["×"]="CH" v["ø"]="sh" v["Ø"]="SH" v["ù"]="w" v["Ù"]="W" v["ú"]="~" v["Ú"]="~" v["ü"]="'" v["Ü"]="'" v["û"]="y" v["Û"]="Y" v["ý"]="e'" v["Ý"]="E'" v["þ"]="yu" v["Þ"]="YU" v["ÿ"]="ya" v["ß"]="YA" 
	return function(str)
		local cp1251 = cd:iconv(str)
		local tr = string.gsub(cp1251, ".", v)
		return tr
	end
end
