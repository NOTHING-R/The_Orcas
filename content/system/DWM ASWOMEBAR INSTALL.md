+++
title = "DWM ASWOMEBAR INSTALL"
date = "2026-02-27"
author = ""
+++


# DWM Awesomebar Patch Setup (Arch Linux)


## Overview

To use the Awesomebar patch in DWM on Arch Linux, we need to:

1.  Use the correct DWM version (6.6) compatible with the patch.
2.  Apply the patch cleanly.
3.  Compile and install the patched DWM.


## Step 0: Preconditions

-   Make sure base-devel tools installed:
-   Inside the dwm source folder.


## Step 1: Check current DWM version

    cat config.mk | grep VERSION

-   Expected output example:

    VERSION = 6.8


## Step 2: Check Git status

    git status

-   Confirm you are in the dwm source folder.
-   Clean up any untracked or compiled files if needed.


## Step 3: Clean the repository

    git reset --hard
    git clean -fd

-   Removes all local changes, compiled objects, and untracked files.
-   Output should show removal of files like \`config.h\`, \`dwm\`, \`\*.o\`, patch files, etc.


## Step 4: Confirm version after cleanup

    git describe --tags

-   Should output something like:

    6.8-3-gc3dd6a8


## Step 5: Switch to compatible DWM version for Awesomebar patch

    git checkout 6.6

-   Now you are in a detached HEAD state at version 6.6, which matches the patch.
-   Output example:

    HEAD is now at 693d94d bump version to 6.6


## Step 6: Download the Awesomebar patch

    curl -O https://dwm.suckless.org/patches/awesomebar/dwm-awesomebar-6.6.diff

-   This will download \`dwm-awesomebar-6.6.diff\` into your current folder.


## Step 7: Apply the patch

    patch -p1 < dwm-awesomebar-6.6.diff

-   Expected output:

    patching file config.def.h
    Hunk #2 succeeded at 66 (offset -1 lines).
    Hunk #3 succeeded at 88 (offset -1 lines).
    patching file dwm.c

-   No errors or \`.rej\` files should appear. If conflicts exist, resolve manually.


## Step 8: Create config.h

    cp config.def.h config.h

-   Ensures the new config includes the patched changes.


## Step 9: Compile and install DWM

    sudo make clean install

-   Cleans old binaries, compiles patched DWM, and installs it to \`/usr/local/bin/dwm\`.
-   Output should show compilation of \`drw.c\`, \`dwm.c\`, \`util.c\`, and copying \`dwm\` binary and man page.


## Step 10: Run DWM

    startx

-   Or select DWM from your display manager (SDDM/LightDM/XDM).
-   The Awesomebar should now appear and function.


## Notes / Tips

-   We used Git to:
    -   Reset to a clean state (\`reset\`, \`clean\`)
    -   Switch to compatible version (\`checkout 6.6\`)
    -   Apply patch safely
-   Using DWM 6.6 ensures patch compatibility. Using 6.8 directly would cause compile/runtime issues.
-   Backup config.h before patching:

    cp config.h config.h.backup

-   If needed, you can revert to 6.8 later:

    git checkout 6.8


## Summary

1.  Clean source → 6.6 version → download patch → apply → config.h → make install → startx
2.  Now DWM is running with Awesomebar patch applied successfully.

