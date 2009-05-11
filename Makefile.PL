# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

name     'userdeb';
version  '1.0';
license  'GPL';
abstract 'Create custom debian package from user account';

requires 'File::Spec'     => 0;
requires 'Getopt::Std';
requires 'File::Basename';
requires 'File::Spec';
requires 'File::HomeDir';
requires 'File::Copy';
requires 'File::Path';
requires 'File::Glob';
requires 'Sys::Hostname';
requires 'Cwd';

build_requires  'Test::More'    => '0.42';

install_script  'bin/userdeb';

auto_install;

WriteAll;
