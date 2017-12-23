/// scr_ease_in_out_circ(time_passed, start_value, delta, total_time)
//time can be anything, in percentage, in frames, in seconds.

var time_passed = argument0;
var start_value = argument1;
var delta = argument2;
var total_time = argument3;


time_passed /= total_time/2;
if (time_passed < 1) { return -delta/2 * (sqrt(1 - time_passed*time_passed) - 1) + start_value; }
time_passed -= 2;
return delta/2 * (sqrt(1 - time_passed*time_passed) + 1) + start_value;
