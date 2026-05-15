-- Tell Qt and GTK apps to use Wayland backend, fall back to X11
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("GDK_BACKEND", "wayland,x11,*")

-- Force electon apps to use wayland
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
