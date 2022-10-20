getPlaneNormal([0,0,1],[2,2,3],[0,3,1])
function planeNormal = getPlaneNormal( point1, point2, point3 )

    % Calculate first vector in plane by subtracting the first point's 
    % coordinates from the second point
    inPlaneVec1 = point2 - point1;
    
    % Calculate second vector in plane by subtracting the first point's 
    % coordinates from the third point
    inPlaneVec2 = point1 - point3; % FIXME
    
    % Calculate vector normal to the plane by calculationg the cross product 
    % of the two vectors lying in the plane
    planeNormal = cross(inPlaneVec2,inPlaneVec1) % FIXME
 
end