function out = htonAll(in)
% cls = class(in);
if(isa(in,'double') || isa(in,'uint64') || isa(in,'int64'))
    rslen=8;
elseif(isa(in,'int32') || isa(in,'uint32') || isa(in,'float'))
    rslen=4;
elseif(isa(in,'int16') || isa(in,'uint16'))
    rslen=2;
elseif(isa(in,'char') || isa(in,'int8') || isa(in,'uint8'))
    rslen=1;
else
    error('I need another type!');
end
if(isa(in,'char'))
    out_recast = char(typecast(uint8(in+0),'uint8'));
else
    out_recast = char(typecast(in,'uint8'));
end


out_len = length(in);
out_rs = reshape(out_recast,rslen,out_len);
out_reo = out_rs(end:-1:1,:);
out=out_reo(:);

