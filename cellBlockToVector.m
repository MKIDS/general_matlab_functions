function out = cellBlockToVector(varargin)
out=[];
if(isempty(varargin))
    return;
end 
din=varargin;
assert(all(size(din{1})==1),'must have input VECTOR, not matrix... fool!');
d1=din{1};
doPrime=length(d1(:,1))==1; %if it's just a row vector, we'll have to transpose everything
if(doPrime)
    d1=d1.';
end



out=repmat(d1,1,length(d1));
for i=1:length(din)
    if(doPrime)
        out(:,i)=din{i}.';
    else
        out(:,i)=din{i};
    end
end
