/// scr_ease_out_quart(time_passed, start_value, delta, total_time)
//time can be anything, in percentage, in frames, in seconds.

var time_passed = argument0;
var start_value = argument1;
var delta = argument2;
var total_time = argument3;


time_passed /= total_time;
time_passed--;
return -delta * (time_passed*time_passed*time_passed*time_passed - 1) + start_value;
