module CxxBulletPrintMWE

using Bullet3
using .Bullet3.Libdl
using Cxx

bullet_include_dir = joinpath(dirname(pathof(Bullet3)),  "..", "deps", "usr", "include")

addHeaderDir(joinpath(bullet_include_dir, "bullet"), kind=C_System)
cxxinclude(joinpath(bullet_include_dir, "bullet/btBulletDynamicsCommon.h"))

pv = @cxxnew btVector3(0,0,0)

@show pv

v = icxx"*($(pv));"
@show v
end # module
