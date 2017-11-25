function [ MMM ] = Scaling_fn(MM)
    [Q QQ]=size(MM);
    for i=1:QQ
    max_MM = max(MM(:,i));
    min_MM = min(MM(:,i));
    avg_MM = sum(MM(:,i))/ Q;
    MMM(:,i)= (MM(:,i) - avg_MM.*ones(Q,1))*2./(max_MM-min_MM);
    end
end