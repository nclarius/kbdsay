#!/bin/bash

declare -A keymap=(
#[""]""
#[""]="1"
#[""]="2"
#[""]="3"
#[""]="4"
#[""]="5"
#[""]="6"
[" "]="7"
#[""]="8"
#[""]="9"
#[""]="10"
#[""]="11"
#[""]="12"
#[""]="13"
#[""]="14"
#[""]="15"
#[""]="16"
#[""]="17"
#[""]="18"
#[""]="19"
#[""]="20"
#[""]="21"
#[""]="22"
["<"]="23"
["y"]="24"
["x"]="25"
["c"]="26"
["v"]="27"
["b"]="28"
["n"]="29"
["m"]="30"
[","]="31"
["."]="32"
["-"]="33"
#[""]="34"
#[""]="35"
#[""]="36"
#[""]="37"
#[""]="38"
#[""]="39"
#[""]="40"
#[""]="41"
#[""]="42"
#[""]="43"
["a"]="44"
["s"]="45"
["d"]="46"
["f"]="47"
["g"]="48"
["h"]="49"
["j"]="50"
["k"]="51"
["l"]="52"
["ö"]="53"
["ä"]="54"
["#"]="55"
#[""]="56"
#[""]="57"
#[""]="58"
#[""]="59"
#[""]="60"
#[""]="61"
#[""]="62"
#[""]="63"
#[""]="64"
["q"]="65"
["w"]="66"
["e"]="67"
["r"]="68"
["t"]="69"
["z"]="70"
["u"]="71"
["i"]="72"
["o"]="73"
["p"]="74"
["ü"]="75"
["+"]="76"
#["enter"]="77"
#[""]="78"
#[""]="79"
#[""]="80"
#[""]="81"
#[""]="82"
#[""]="83"
#[""]="84"
["1"]="85"
["2"]="86"
["3"]="87"
["4"]="88"
["5"]="89"
["6"]="90"
["7"]="91"
["8"]="92"
["9"]="93"
["0"]="94"
["ß"]="95"
#[""]="96"
#[""]="97"
#["backspace"]="98"
#[""]="99"
#[""]="100"
#[""]="101"
#[""]="102"
#[""]="103"
#[""]="104"
#[""]="105"
#[""]="106"
#[""]="107"
#[""]="108"
#[""]="109"
#[""]="110"
#[""]="111"
#[""]="112"
#[""]="113"
#[""]="114"
#[""]="115"
#[""]="116"
#[""]="117"
#[""]="118"
#[""]="119"
#[""]="120"
#[""]="121"
#[""]="122"
#[""]="123"
#[""]="124"
#[""]="125"
)

msg=$1
for ((i = 0; i < ${#msg}; i++)); do
    char="${msg:i:1}"
    deviceId="${keymap[$char]}"
    colorFile="/sys/class/leds/rgb:kbd_backlight_$deviceId/multi_intensity"
    echo "255 255 255" | sudo tee "$colorFile"
    sleep 1
    echo "0 0 0" | sudo tee "$colorFile"
done
