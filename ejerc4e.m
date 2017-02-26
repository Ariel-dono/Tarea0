%Matrices
function [evalues, evectors] = ejerc4e()
    A = [15 74.785; 1 7.569];
    [evalues, evectors] = eigenValVec(A);
end

function [eigenVecs, eigenVals] = eigenValVec(Matrix)
    [eigenVecs, eigenVals] = eig(Matrix);
end