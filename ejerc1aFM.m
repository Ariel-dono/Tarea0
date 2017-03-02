function ejerc1aFM()
    graphFunctionPlane1();
    graphFunctionPlane2();
end

function graphFunctionPlane1()
    x = -50:.1:50;
    [X, Y] = meshgrid(x);
    z = (X.*0.5)+(Y.*0.2);
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

function graphFunctionPlane2()
    x = -50:.1:50;
    [X, Y] = meshgrid(x);
    z = (X.*-0.1)+(Y.*0.05);
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