%matrices
function [YA, YB] = ejerc3c()
    A = [1 2 1; 0 0 0; 1 1 0];
    B = [5 0 0; 0 4 0; 0 0 3];
    y = [1; 2; 3];
    YA = proj_YE(y, A);
    YB = proj_YE(y, B);   
end

function projection = proj_YE(y, matE)
    coef = (matE*matE')/(matE'*matE);
    projection = coef*y;
end