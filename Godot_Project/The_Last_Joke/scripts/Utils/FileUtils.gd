extends Object

class_name FileUtils

var fileName

func _init(_fileName : String = "") -> void:
	fileName = _fileName

func parseFileByLines() -> Array:
	var lines : Array
	var file = FileAccess.open(fileName, FileAccess.READ)
	if file == null:
		print ("Can't load ", fileName)
		lines.clear()
		return lines
	while not file.eof_reached(): # iterate through all lines until the end of file is reached
		var line = file.get_line()
		if line.length() > 2:
			lines.append(line)
	file.close()
	return lines
