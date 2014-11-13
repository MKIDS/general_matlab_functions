function out = socketWriteInt(fd,command, data)
out = htonAll(uint32([command, 0, data]));
fwrite(fd,out);
