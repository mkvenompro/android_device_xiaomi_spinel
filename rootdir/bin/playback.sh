#!/system/bin/sh
function enable_playback
{
    printf "打开听筒通路++\n"
    tinymix 'SPK1 FSAMP Scene' 'RCV'
    tinymix 'SPK1 FSAMP Switch' 'On'
    tinymix 'SPK2 FSAMP Switch' 'Off'
    tinymix 'aw87xxx_profile_switch_0' 'Receiver'
    tinymix 'aw87xxx_profile_switch_1' 'Off'
    tinymix 'oca72xxx_profile_switch_0' 'Receiver'
    tinymix 'oca72xxx_profile_switch_1' 'Off'
    tinymix 'DAC In Mux' 'Normal Path'
    tinymix 'RCV Mux' 'Voice Playback'
    tinymix 'Handset Volume' '5'
    tinymix 'ADDA_DL_CH1 DL7_CH1' '1'
    tinymix 'ADDA_DL_CH2 DL7_CH2' '1'
}
function disable_playback
{
    printf "关闭播放通路++\n"
    tinymix 'RCV Mux' 'Open'
    tinymix 'ADDA_DL_CH1 DL7_CH1' '0'
    tinymix 'ADDA_DL_CH2 DL7_CH2' '0'
    tinymix 'SPK1 FSAMP Switch' 'Off'
    tinymix 'SPK1 FSAMP Scene' 'MUSIC'
    tinymix 'SPK2 FSAMP Switch' 'Off'
    tinymix 'Handset Volume' '31'
    tinymix 'aw87xxx_profile_switch_0' 'Off'
    tinymix 'aw87xxx_profile_switch_1' 'Off'
    tinymix 'oca72xxx_profile_switch_0' 'Off'
    tinymix 'oca72xxx_profile_switch_1' 'Off'
}

enable_playback
printf "start playing\n"
tinyplay /vendor/etc/mmigroup/ultrasound.wav -D 0 -d 7
disable_playback
