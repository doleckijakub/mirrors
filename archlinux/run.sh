#!/bin/bash

RSYNC="${RSYNC:-/usr/bin/rsync}"
MIRROR="${MIRROR:-rsync://rsync.archlinux.org/archlinux/}"
OPTIONS="${OPTIONS:--rlptH --safe-links --delete-after}"
UPDATE_INTERVAL="${UPDATE_INTERVAL:-1h}"

sync_mirror() {
    echo "Starting sync from $MIRROR with options: $OPTIONS"
    $RSYNC $OPTIONS "$MIRROR" /srv/archlinuxmirror
    echo "Sync completed. Next update in $UPDATE_INTERVAL."
}

while true; do
    sync_mirror
    sleep "$UPDATE_INTERVAL"
done

