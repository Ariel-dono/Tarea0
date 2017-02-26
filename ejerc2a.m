%multivariable
function ejerc2a()
    graphFunctionPlane();
    gradientPlane();
    gradientPlaneManualParams();
end

function gradientPlaneManualParams()
    [X, Y] = meshgrid([6520.27 0; 0 -5105822.2]);
    z = (X.^3).*(Y.^2)+1;
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
    z = (X.^3).*(Y.^2)+1;
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
    z = (X.^3).*(Y.^2)+1;
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