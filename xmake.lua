add_requires("conan::Catch/1.9.6@bincrafters/stable", {alias = "catch"})
add_requires("conan::protobuf/3.5.1@bincrafters/stable", {alias = "protobuf"})
add_requires("conan::nanomsg/1.1.2@bincrafters/stable", {alias = "nanomsg"})
add_requires("conan::libsodium/1.0.18@_/_", {alias = "libsodium"})

-- add modes: debug and release
add_rules("mode.debug", "mode.release")

-- debug mode settings
if is_mode("debug") then 
    set_symbols("debug")
    set_optimize("none")
end

-- release mode settings
if is_mode("release") then 
    set_symbols("hidden")
    set_optimize("smallest")
    set_strip("all")
end


-- add target
target("kairos")

    -- set kind
    set_kind("binary")

    -- add files
    add_files("src/*.cpp")

    -- add packages
    add_packages("libsodium")
