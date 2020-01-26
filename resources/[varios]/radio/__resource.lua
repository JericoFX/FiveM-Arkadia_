resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"
-- http://www.skyrock.fm/stream.php/tunein16_128mp3.mp3
-- Example custom radios
supersede_radio "RADIO_01_CLASS_ROCK" { url = "http://20863.live.streamtheworld.com:80/CADENASER_SC", volume = 0.2, name = "CadenaSer" }
supersede_radio "RADIO_02_POP" { url = "http://20103.live.streamtheworld.com:80/LOS40_SC", volume = 0.2, name = "40" }
supersede_radio "RADIO_03_HIPHOP_NEW" { url = "http://212.129.60.86:9968/stream", volume = 0.2, name = "EuropaFM" }
supersede_radio "RADIO_04_PUNK" { url = "http://195.55.74.212/rtva/canalflamenco.mp3?GKID=ca705c0ca4f411e99c0600163e914f69&fspref=aHR0cDovL3d3dy5saXN0ZW5saXZlLmV1L3NwYWluLmh0bWw%3D", volume = 0.2, name = "Flamenco" }
supersede_radio "RADIO_05_TALK_01" { url = "http://18433.live.streamtheworld.com:80/KEBUENA_SC", volume = 0.2, name = "Kbuena" }
supersede_radio "RADIO_06_COUNTRY" { url = "http://195.55.74.204/cope/cadena100-low.mp3", volume = 0.5, name = "cadena100" }
supersede_radio "RADIO_07_DANCE_01" { url = "http://mp3channels.webradio.antenne.de/classic-rock-live", volume = 0.2, name = "rock" }
supersede_radio "RADIO_08_MEXICAN" { url = "http://edge-202a.fra-lg.cdn.addradio.net/swr/swr/raka11/mp3/128/stream.mp3", volume = 0.2, name = "hiphop" }
supersede_radio "RADIO_09_HIPHOP_OLD" { url = "http://radioweb.radiomarcabarcelona.com:9000/stream", volume = 0.2, name = "marca" }
supersede_radio "RADIO_12_REGGAE" { url = "http://51.255.235.165:5092/stream", volume = 0.2, name = "blus" }
supersede_radio "RADIO_13_JAZZ" { url = "http://20723.live.streamtheworld.com:80/RADIOLE_SC", volume = 0.2, name = "Virgin Radio" }
supersede_radio "RADIO_14_DANCE_02" { url = "http://icepool.silvacast.com/KLASSIK1.mp3", volume = 0.2, name = "Nostalgie" }
supersede_radio "RADIO_15_MOTOWN" { url = "http://212.111.2.151:8000/rm_hard_256.mp3", volume = 0.2, name = "Cherie FM" }
supersede_radio "RADIO_16_SILVERLAKE" { url = "http://edge-audio-02-gos1.sharp-stream.com:80/tcnation.mp3", volume = 0.2, name = "Europe 1" }
supersede_radio "RADIO_17_FUNK" { url = "http://5.135.155.232:8009/stream", volume = 0.2, name = "Voltage" }
supersede_radio "RADIO_18_90S_ROCK" { url = "http://generationfm.ice.infomaniak.ch/generationfm-high.mp3", volume = 0.2, name = "Generations" }
supersede_radio "RADIO_11_TALK_02" { url = "http://start-latina.ice.infomaniak.ch/start-latina-high.mp3", volume = 0.2, name = "Latina" }
supersede_radio "RADIO_20_THELAB" { url = "http://streaming.radio.rtl2.fr/rtl2-1-48-192", volume = 0.2, name = "RTL2" }
supersede_radio "RADIO_21_DLC_XM17" { url = "http://vibration.ice.infomaniak.ch/vibration-high.mp3", volume = 0.2, name = "Vibration" }
supersede_radio "RADIO_22_DLC_BATTLE_MIX1_RADIO" { url = "http://onlyrai.ice.infomaniak.ch/onlyrai-high.aac", volume = 0.2, name = "Urban Hit" }

files {
	"index.html"
}

ui_page "index.html"

client_scripts {
	"data.js",
	"client.js"
}
