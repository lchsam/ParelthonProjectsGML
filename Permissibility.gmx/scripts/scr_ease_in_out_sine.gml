/// scr_ease_in_out_sine(time_passed, start_value, delta, total_time)
//time can be anything, in percentage, in frames, in seconds.

var time_passed = argument0;
var start_value = argument1;
var delta = argument2;
var total_time = argument3;


return -delta/2 * (cos(pi*time_passed/total_time) - 1) + start_value;
