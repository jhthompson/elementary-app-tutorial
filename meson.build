# project name and programming language
project('com.github.jhthompson.elementary-app-tutorial', 'vala', 'c')

# create a new executable, list the files we want to compile, list the dependencies we need, and install
executable(
  meson.project_name(),
  'src/Application.vala',
  dependencies: [
    dependency('gtk+-3.0')
  ],
  install: true
)

# install our .desktop file so the Applications Menu will see it
install_data(
  join_paths('data', meson.project_name() + '.desktop'),
  install_dir: join_paths(get_option('datadir'), 'applications')
)

# install our .appdata.xml files so AppCenter will see it
install_data(
  join_paths('data', meson.project_name() + '.appdata.xml'),
  install_dir: join_paths(get_option('datadir'), 'metainfo')
)
