// sub_select.js
// Auto-select subtitle track if it matches a regex pattern

var regex = /.*full.*|.*dialog.*|@ani_animesh.*/i;
var blacklist = /signs\/songs.*|signs$|Sing & Song|^Forced$/i;   // Should probably not include 'Forced'

function select_subtitle() {
    var tracks = mp.get_property_native("track-list");
    for (var i = 0; i < tracks.length; i++) {
        var track = tracks[i];
        if (track.type === "sub") {
            var title = track.title || "";
            var lang = track.lang || "";
            var id = track.id;

            if (regex.test(title) || regex.test(lang)) {
                if (mp.get_property_number("sid") != id) {
                    // mp.set_property_number("sid", id);
                    mp.set_property('file-local-options/sid', id)
                    mp.msg.info("Selected subtitle track id=" + id + ", lang=" + lang + ", title=" + title);
                } else {
                    mp.msg.info("The best subtitle was already selected " + "(track_id=" + get_property_number("sid", id) + ")");
                }
                return;
            }
        }
    }
    var current_sid = mp.get_property_number("sid")
    for (var i = 0; i < tracks.length; i++) {
        var track = tracks[i];
        if (track.type === "sub" && track.id == current_sid) {
            var title = track.title || "";
            var lang = track.lang || "";
            if (blacklist.test(title)) {
                current_sid += 1;
                mp.set_property('file-local-options/sid', current_sid)
                mp.msg.info("The selected subtitle had blacklisted stuff, selected the next subtitle track (subtitle track id=" + current_sid + ")");
                return;
            }
        }
    }

    mp.msg.info("No explicit subtitle found from your regex");
}

// Call after file is loaded
mp.register_event("file-loaded", select_subtitle);

