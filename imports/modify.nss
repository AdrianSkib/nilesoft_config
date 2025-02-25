// modify items
// Remove items by identifiers
modify(mode=mode.multiple
	where=this.id(
		id.restore_previous_versions,
		id.cast_to_device,
		id.give_access_to,
		id.include_in_library
		)
	vis=vis.remove)

modify(find="*Git*"
	vis=vis.remove)

modify(find="*Visual*"
	vis=vis.remove)

modify(find="*Scan with*"
	vis=vis.remove)

modify(find="*Customize this folder*"
	vis=vis.remove)

modify(find="*Add to favourites*"
	vis=vis.remove)

modify(find="*Copy as path*"
	vis=vis.remove)

modify(type="recyclebin" where=window.is_desktop and this.id==id.empty_recycle_bin pos=1 sep)

modify(find="unpin*" pos="bottom" menu=title.more_options)
modify(find="pin*" pos="top" menu=title.more_options)

// Onedrive
modify(find="*Always keep on this device*" pos=1 menu="Onedrive")
modify(find="*Free up space*" pos=2 menu="Onedrive")
modify(find="*Copy link*" pos=3 menu="Onedrive")
modify(find="*Manage access*" pos=4 menu="Onedrive")
modify(find="*View online*" pos=5 menu="Onedrive")
modify(find="*Folder color*" pos=6 menu="Onedrive")
modify(find="*Version history*" pos=7 menu="Onedrive")


modify(mode=mode.multiple
	where=this.id(
		id.send_to,
		id.share,
		id.create_shortcut,
		id.set_as_desktop_background,
		id.rotate_left,
		id.rotate_right,
		id.map_network_drive,
		id.disconnect_network_drive,
		id.format,
		id.eject,
		id.print
	)
	pos=1 menu=title.more_options)

modify(find="*7-Zip*"
	pos=2 menu=title.more_options)