function out = leadingZeros(in)

in_v = in(:);

for i=1:length(in_v)
    v=in_v(i);
    v_bin = v.bin;
    v_nz = v_bin=='1';
%     v_cs = cumsum(v_nz);
    loc = find(v_nz, 1, 'first');
    if(isempty(loc))
        loc=length(v_bin);
    end
    out_v(i) = loc-1;
end

out = reshape(out_v, size(in));
