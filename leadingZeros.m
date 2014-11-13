function out = leadingZeros_v2(in)

in_v = in(:);

v_nz = in_v.bin=='1';
v_nz = [v_nz ones(length(in)*2,1)];

for i=1:length(in_v)
    loc(i) = find(v_nz(i,:), 1, 'first');
%     if(isempty(loc))
%         loc=length(v_bin);
%     end
end
    out_v = loc-1;

out = reshape(out_v, size(in));
