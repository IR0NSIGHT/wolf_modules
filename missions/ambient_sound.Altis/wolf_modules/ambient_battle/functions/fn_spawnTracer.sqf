//spawn a bullet global, attach lights to it on each client
//fnc_spawnTracer: 
params["_vector","_color","_pos"];
diag_log ["################################# fnc_spawnTracer called with: ",["_vector","_color"],_this];
systemChat "tracer spawned";
private _bullet = "B_408_Ball" createVehicle _pos;
//spawn a client local light on each clientOwner
[_bullet,_color] remoteExec ["IRN_fnc_spawnTracerLight",0];
_bullet setVelocity _vector;




