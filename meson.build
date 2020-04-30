# project name and programming language
project('com.github.jhthompson.elementary-app-tutorial', 'vala', 'c')

# include the translations modules
i18n = import('i18n')

# set our translation domain
add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format (meson.project_name()), language:'c')

# create a new executable, list the files we want to compile, list the dependencies we need, and install
executable(
  meson.project_name(),
  'src/Application.vala',
  dependencies: [
    dependency('gtk+-3.0')
  ],
  install: true
)

# translate and install our .desktop file
i18n.merge_file(
  input: join_paths('data', meson.project_name() + '.desktop.in'),
  output: meson.project_name() + '.desktop',
  po_dir: join_paths(meson.source_root(), 'po'),
  type: 'desktop',
  install: true,
  install_dir: join_paths(get_option('datadir'), 'applications')
)

# translate and install our .appdata file
i18n.merge_file(
  input: join_paths('data', meson.project_name() + '.appdata.xml.in'),
  output: meson.project_name() + '.appdata.xml',
  po_dir: join_paths(meson.source_root(), 'po'),
  install: true,
  install_dir: join_paths(get_option('datadir'), 'metainfo')
)

subdir('po')

# # install our .desktop file so the Applications Menu will see it
# install_data(
#   join_paths('data', meson.project_name() + '.desktop'),
#   install_dir: join_paths(get_option('datadir'), 'applications')
# )

# # install our .appdata.xml files so AppCenter will see it
# install_data(
#   join_paths('data', meson.project_name() + '.appdata.xml'),
#   install_dir: join_paths(get_option('datadir'), 'metainfo')
# )
