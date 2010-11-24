-- transliterate russian text with latin symbols
function make_tr()
	local conv = require("iconv")
	cd = iconv.new("CP1251", "UTF-8")

	local v = {}
v["�"]="a" v["�"]="A" v["�"]="b" v["�"]="B" v["�"]="v" v["�"]="V" v["�"]="g" v["�"]="G" v["�"]="d" v["�"]="D" v["�"]="e" v["�"]="E" v["�"]="yo" v["�"]="YO" v["�"]="zh" v["�"]="ZH" v["�"]="z" v["�"]="Z" v["�"]="i" v["�"]="I" v["�"]="j" v["�"]="J" v["�"]="k" v["�"]="K" v["�"]="l" v["�"]="L" v["�"]="m" v["�"]="M" v["�"]="n" v["�"]="N" v["�"]="o" v["�"]="O" v["�"]="p" v["�"]="P" v["�"]="r" v["�"]="R" v["�"]="s" v["�"]="S" v["�"]="t" v["�"]="T" v["�"]="u" v["�"]="U" v["�"]="f" v["�"]="F" v["�"]="x" v["�"]="X" v["�"]="c" v["�"]="C" v["�"]="ch" v["�"]="CH" v["�"]="sh" v["�"]="SH" v["�"]="w" v["�"]="W" v["�"]="~" v["�"]="~" v["�"]="'" v["�"]="'" v["�"]="y" v["�"]="Y" v["�"]="e'" v["�"]="E'" v["�"]="yu" v["�"]="YU" v["�"]="ya" v["�"]="YA" 
	return function(str)
		local cp1251 = cd:iconv(str)
		local tr = string.gsub(cp1251, ".", v)
		return tr
	end
end
