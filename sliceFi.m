function out = sliceFi(in,bits,offset)
for i=1:length(in)
    element_chosen=in(i);
    out_bin(i,:) = element_chosen.bin;
end

inds=offset:(offset+bits-1);
out=bin2dec(out_bin(:,inds));
end