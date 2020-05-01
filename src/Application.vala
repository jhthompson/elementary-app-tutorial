/*
* Copyright (c) 2011-2018 Jeremy Thompson (https://jhthompson.ca)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Jeremy Thompson <jhthompson@upei.ca>
*/

public class MyApp : Gtk.Application {
  public MyApp () {
    Object (
      application_id: "com.github.jhthompson.elementary-app-tutorial",
      flags: ApplicationFlags.FLAGS_NONE
    );
  }

  protected override void activate() {
    var main_window = new Gtk.ApplicationWindow(this);
    main_window.default_height = 300;
    main_window.default_width = 300;
    main_window.title = _("Notification Test");

    var title_label = new Gtk.Label (_("Notifications"));
    var show_button = new Gtk.Button.with_label(_("Show"));

    var grid = new Gtk.Grid();
    grid.orientation = Gtk.Orientation.VERTICAL;
    grid.row_spacing = 6;
    grid.add(title_label);
    grid.add(show_button);

    show_button.clicked.connect(() => {
        var notification = new Notification(_("Hello World"));
        notification.set_body(_("This is my first notification"));

        send_notification("com.github.jhthompson.elementary-app-tutorial", notification);
    });

    main_window.add(grid);
    main_window.show_all();
  }
  

  public static int main(string [] args) {
    var app = new MyApp();
    return app.run(args);
  }
}
