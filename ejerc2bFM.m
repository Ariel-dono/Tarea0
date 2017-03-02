%multivariable
function ejerc2bFM()
    graphFunctionPlane();
    gradientPlane();
    gradientPlaneManualParams();
end

function gradientPlaneManualParams()
    [X, Y] = meshgrid([59.90 517.55; 10.05 1100.63]);
    z = exp(X) + exp(Y) + 2.*X.^2 + 4.*Y + 3;
    [DX,DY] = gradient(z);
    figure;
    contour(X, Y, z);
    hold on;
    quiver(X, Y, DX, DY);
    hold off;
end

function gradientPlane()
    x = -50:.1:50;
    [X, Y] = meshgrid(x);
    z = exp(X) + exp(Y) + 2.*X.^2 + 4.*Y + 3;
    [DX, DY] = gradient(z);
    figure;
    contour(X, Y, z);
    hold on;
    quiver(X, Y, DX, DY);
    hold off;
end

function graphFunctionPlane()
    x = -50:.1:50;
    [X, Y] = meshgrid(x);
    z = exp(X) + exp(Y) + 2.*X.^2 + 4.*Y + 3;
    z1 = z.*0;
    figure; surf(X, Y, z);
    shading flat;
    xlabel('x');
    ylabel('y');
    zlabel('z');
    hold on;
    surf(X, Y, z1);
    hold on;
end