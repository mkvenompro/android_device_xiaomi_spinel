#!/system/bin/sh

function enable_ultracapture()
{
	printf "打开MIC通路++\n"
	tinymix 'UL1_CH1 ADDA_UL_CH1' '1'
	tinymix 'UL1_CH1 ADDA_UL_CH2' '1'
	tinymix 'UL1_CH2 ADDA_UL_CH2' '1'
	tinymix 'UL1_CH2 ADDA_UL_CH1' '1'
	tinymix 'ADC L Mux' 'Left Preamplifier'
	tinymix 'ADC R Mux' 'Right Preamplifier'
	tinymix 'PGA L Mux' 'AIN0'
	tinymix 'PGA R Mux' 'AIN2'
	

	tinycap /sdcard/us_mic.wav -D 0 -d 9 -r $1 -b $2 -c $3 -T $4
	printf "录音结束\n"
}

function disable_ultracapture
{
	printf "关闭MIC通路++\n"
	tinymix 'ADC L Mux' 'Idle'
	tinymix 'ADC R Mux' 'Idle'
	tinymix 'PGA L Mux' 'None'
	tinymix 'PGA R Mux' 'None'
	tinymix 'UL1_CH1 ADDA_UL_CH1' '0'
	tinymix 'UL1_CH1 ADDA_UL_CH2' '0'
	tinymix 'UL1_CH2 ADDA_UL_CH2' '1'
	tinymix 'UL1_CH2 ADDA_UL_CH1' '1'
}

if test -z $1 
then
   printf "输入参数格式：capture.sh 96000(SampleRate) 16(SampleBit) 2(SampleChannel) 6(Time:s)\n"
else

   enable_ultracapture $1 $2 $3 $4
   disable_ultracapture

fi
