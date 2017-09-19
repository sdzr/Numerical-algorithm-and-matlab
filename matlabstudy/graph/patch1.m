vert=[1 1 1;1 2 1;2 2 1;2 1 1;1 1 2;1 2 2;2 2 2;2 1 2];
face=[1 2 3 4;2 6  7 3;4 3 7 8;1 5 8 4;1 2 6 5;5 6 7 8];
patch('faces',face,'vertices',vert,'FaceColor','b');
view(3);
axis square; 