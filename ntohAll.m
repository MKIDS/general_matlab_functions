function out = ntohAll(in,type,~)
if(isempty(in))
    out=[];
    return
end
if(length(in(1,:))~=1)
    in=in.';
end

if(strcmp(type,'char'))
    type='uint8';
    cc=true;
else
    cc=false;
end



if(strcmp(type,'int64') || strcmp(type,'uint64') || strcmp(type,'double'))
    rslen = 8;
elseif(strcmp(type,'int32') || strcmp(type,'uint32') || strcmp(type,'single'))
    rslen = 4;
elseif (strcmp(type,'int16') || strcmp(type,'uint16'))
    rslen=2;
elseif (strcmp(type,'int8') || strcmp(type,'uint8') || strcmp(type,'char'))
    rslen=1;
else
    error('unsupported type');
end

in_rs = reshape(in,rslen,length(in)/rslen);
if(length(in_rs(:,1))>1 && length(in_rs(1,:))>1)
%     in_rs=in_rs.';
end 
% out=zeros(1,length(in)/rslen);


if(cc)
    out=char(in).';
else
    for i=1:length(in_rs(1,:)) 
        out(i)=typecast(in_rs(end:-1:1,i),type);
    end
    
end