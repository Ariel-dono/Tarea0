%matrices
function resultado = ejerc4b()
    A = [9 13 3 6; 13 11 7 6; 3 7 4 7; 6 6 7 10];
    resultado = isOrtonormal(A);
end

function resultado = isOrtonormal(matrix)
    maxI = length(matrix);
    resultado = true;
    for i = 1:maxI
       resultado = isNormalized(matrix(1:i)); 
    end
end

function resultado = isNormalized(vector)
    l2Norm = vector.^2;
    l2Norm = sum(l2Norm);
    l2Norm = sqrt(l2Norm);
    if(ne(l2Norm, 1))
        resultado = false;
    else
        resultado = true;
    end
end