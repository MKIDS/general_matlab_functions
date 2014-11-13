function out = socketFillArray(fd,command, data,safe)
if(~exist('safe','var'))
    safe=1;
end

command_header = htonAll(uint32([command, 0, length(data),0]));
data_conv = htonAll(data);
out = [command_header; data_conv];
if(safe)
    if(fd.BytesToOutput+length(out) + 10000 > fd.OutputBufferSize)
        error('buffer about to overflow!');
    end
end
fwrite(fd,out);
