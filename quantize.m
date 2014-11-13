function out = quantize(in,nBits)
%     in_scaled = in*2^(nBits-1);
%     in_quant = round(in_scaled);
%     out=in_quant/2^(nBits-1);
if(nBits==inf)
    out=in;
else
    out= round(in*2^(nBits-1))/2^(nBits-1);
end
end