using Clang.Generators
using Liburing_jll  # replace this with your jll package

cd(@__DIR__)
include_dir = normpath(Liburing_jll.artifact_dir, "include")
options = load_options(joinpath(@__DIR__, "generator.toml"))
args = get_default_args()
headers = [joinpath(include_dir, "liburing.h")]
# create context
ctx = create_context(headers, args, options)
# run generator
build!(ctx)
