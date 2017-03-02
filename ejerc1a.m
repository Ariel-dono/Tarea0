%Vectores
function ejerc1a()
   v1 = [-0.3; 0.8; 0.1];
   v2 = [0.5; 0.2; 0.4];
   v3 = [1/sqrt(2); -1/sqrt(2); 0];
   plotter(v1);
   plotter(v2);
   plotter(v3);
end

function plotter(vector)
    figure;
    quiver3(0,0,0,vector(1), vector(2), vector(3));
end