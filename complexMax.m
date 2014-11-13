function max_fin = complexMax(val,dim)
if(exist('dim','var'))
    max_r = max(abs(real(val)),[],dim);
    max_i = max(abs(imag(val)),[],dim);
    max_fin=max(max_r, max_i);
else
    max_r = max(abs(real(val)));
    max_i = max(abs(imag(val)));
    max_fin=max(max_r, max_i);
end

