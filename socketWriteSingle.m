function out = socketWriteSingle(fd,command, data)
out = htonAll(uint32([command, 0]));
out(end+1:end+4)=htonAll(single(data));
fwrite(fd,out);
