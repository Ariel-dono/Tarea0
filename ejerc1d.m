%Vectores
function [angleV1V2, angleV2V3, angleV1V3] = ejerc1d()
    v1 = [-0.3; 0.8; 0.1];
    v2 = [0.5; 0.2; 0.4];
    v3 = [1/sqrt(2); -1/sqrt(2); 0];
    angleV1V2 = twoVectorsAngleSize(v1, v2);
    angleV2V3 = twoVectorsAngleSize(v2, v3);
    angleV1V3 = twoVectorsAngleSize(v1, v3);
end

function result = twoVectorsAngleSize(vecA, vecB)
    sizeVecA = size(vecA);
    sizeVecB = size(vecB);
    if eq(sizeVecA, sizeVecB)
        magnVecA = magnVector(vecA);
        magnVecB = magnVector(vecB);
        result = atand(magnVecA / magnVecB);
    else
        fprintf('Error parametros invalidos');
    end
end

function result = magnVector(vector)
    pow2Vector = power(vector, 2);
    sumVectorElem = sum(pow2Vector, 1);
    sumVectorElem = sum(sumVectorElem, 2);
    result = sqrt(sumVectorElem);
    return;
end

