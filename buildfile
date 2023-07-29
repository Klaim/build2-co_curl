# Glue buildfile that "pulls" all the packages in the project.
#
import pkgs = [dir_paths] $process.run_regex(\
  cat $src_root/packages.manifest, '\s*location\s*:\s*(\S+)\s*', '\1')

./: $pkgs


define workspace: alias

workspace{init} :
{{
  diag bdep $src_root
  bdep init -d $src_root/ -C $src_root/build-msvc/ @msvc cc config.cxx=cl config.bin.lib=static
  bdep init -d $src_root/ -C $src_root/build-clang/ @clang cc config.cxx=clang++ config.bin.lib=static
}}

workspace{clear}:
{{
  # diag bdep $src_root
  # b clean
  # bdep deinit -a
  rm -rf $src_root/build-msvc/ $src_root/build-clang/ .bdep/
}}
