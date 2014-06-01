//this function takes a string of format "x.x,x.x"
function database_format(string)
{
	alert("called");
	split = string.split(",");
	return split;
}
//this fuction takes an array of 2 numbers, the number should be from 0 to 24 with .5 as the only acceptable floating value
//this fuction can take output from database_format()
function human_format(value)
{
	var correct_format = new Array();
	var i = 0;
	var pm = false;
	while(i < value.length)
	{
		var value_num = parseFloat(value[i]);
		if(value_num > 12)
		{
			if(value_num != 24)
				pm = true;
			value_num = value_num - 12;
		}
		else if(value_num == 12)
			pm = true;
		if(value_num == 0)
			value_num = 12;
		else if(value_num == 0.5)
			value_num = 12.5;
		var string_num = value_num.toString();
		var split = string_num.split('.');
		if(split.length == 1)
			correct_format[i] = split[0] + ":" + "00";
		else if(split.length > 1)
			correct_format[i] = split[0] + ":" + "30";
	
		if(pm == true)
			correct_format[i] += "pm";
		else
			correct_format[i] += "am";
		i++;
	}

	return correct_format;
}
