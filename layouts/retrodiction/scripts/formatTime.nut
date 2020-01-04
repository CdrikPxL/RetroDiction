function formatTime(var, unit="s") {
  if (unit = "s") totalSeconds = var;

  time = {
    seconds = totalSeconds % 60,
    minutes = floor((totalSeconds % 3600) / 60),
    hours = floor((totalSeconds % 86400) / 3600),
    days = floor((totalSeconds % (86400 * 30)) / 86400),
  }

  string = "";

  if (time.days > 0) string =" Days: " + time.days;
  if (time.hours > 0) string =" Hours: " + time.hours;
  if (time.minutes > 0) string =" Minutes: " + time.minutes;
  if (time.seconds > 0) string =" Seconds: " + time.seconds;

  return lstrip(string);
}
