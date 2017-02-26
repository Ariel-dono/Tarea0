function[n] = distanciaEuclidiana(V)
 n = sqrt(sum(V.*V));
end

function[n] = distanciaManhattan(V)
 n = abs(sum(V.*V));
end

function[n] = distanciaLinfinito(V)
 n = max(abs(V));
end