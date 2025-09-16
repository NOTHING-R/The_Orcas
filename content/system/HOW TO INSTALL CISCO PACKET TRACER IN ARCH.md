+++
title = "HOW TO INSTALL CISCO PACKET TRACER IN ARCH"
date = "2025-09-16"
author = ""
+++


# Download

Cisco Packet Tracer donwload korar jonno first a [NETCAD.COM](https://www.netacad.com/) a jeye sign up korte hobe. Sign up korar pore [Download](https://www.netacad.com/resources/lab-downloads?courseLang=en-US) link a click kore download korte hobe. Er pore arch aur theke packettracer ta clone korte hobe:

    git clone https://aur.archlinux.org/packettracer.git
    cd packettracer

er pore amra j file ta download korci oita k packettracer directory te move ba copy korte hobe. 

    cp <name of the file> packettracer/ 

abong last command for install:

    makepkg -sri


### Prerequisites
1. **Cisco Networking Academy Account**: You need an account with Cisco Networking Academy (NetAcad) or Skills for All to download the Packet Tracer `.deb` package. Sign up at [netacad.com](https://www.netacad.com/) or [skillsforall.com](https://skillsforall.com/) if you don’t have one.
2. **Arch Linux AUR Access**: Packet Tracer is available through the Arch User Repository (AUR), but it requires manual steps since the `.deb` file must be downloaded from Cisco’s official site.
3. **Dependencies**: Ensure you have `git`, `base-devel`, and an AUR helper (e.g., `yay` or `paru`) installed. You may also need `qt5-webkit` or other dependencies depending on the Packet Tracer version.

### Installation Steps
1. **Install Required Tools**:
   Install `git` and `base-devel` if not already present:
   ```bash
   sudo pacman -S git base-devel
   ```
   Optionally, install an AUR helper like `yay` or `paru`:
   ```bash
   sudo pacman -S yay
   ```
   or
   ```bash
   sudo pacman -S paru
   ```

2. **Download Cisco Packet Tracer**:
   - Log in to your Cisco Networking Academy account at [netacad.com](https://www.netacad.com/resources/lab-downloads) or [skillsforall.com](https://skillsforall.com/resources/lab-downloads).
   - Navigate to the Resources section, find Packet Tracer, and download the Linux `.deb` package (e.g., `CiscoPacketTracer_822_amd64_signed.deb` for version 8.2.2 or `CiscoPacketTracer900_Open_Beta_July_Build700_linux_amd64_Exp20251231.deb` for version 9.0.0 beta).
   - Save the `.deb` file to a known location, such as `~/Downloads`.

3. **Clone the Packet Tracer AUR Repository**:
   Clone the `packettracer` package from the AUR:
   ```bash
   git clone https://aur.archlinux.org/packettracer.git
   cd packettracer
   ```

4. **Move and Rename the `.deb` File**:
   The AUR package expects the `.deb` file to have a specific name matching the `PKGBUILD` file. For example, for Packet Tracer 8.2.2:
   ```bash
   mv ~/Downloads/CiscoPacketTracer_822_amd64_signed.deb ./CiscoPacketTracer822_amd64_signed.deb
   ```
   For version 9.0.0 beta, check the `PKGBUILD` file in the cloned directory to confirm the expected filename and rename accordingly:
   ```bash
   mv ~/Downloads/CiscoPacketTracer900_Open_Beta_July_Build700_linux_amd64_Exp20251231.deb ./CiscoPacketTracer900_amd64_signed.deb
   ```
   Ensure the `.deb` file is in the `packettracer` directory.

5. **Build and Install the Package**:
   Build the package using `makepkg`:
   ```bash
   makepkg -sri
   ```
   - The `-s` flag installs missing dependencies.
   - The `-r` flag removes build dependencies after installation.
   - The `-i` flag installs the resulting package.
   If you use an AUR helper like `yay` or `paru`, you can alternatively run:
   ```bash
   yay -S packettracer
   ```
   or
   ```bash
   paru -S packettracer
   ```
   Note: If the build fails due to missing dependencies, install them with `sudo pacman -S <package>` and retry.

6. **Accept the EULA**:
   During the installation, the Cisco End User License Agreement (EULA) will be displayed. Read it and accept the terms to proceed.

7. **Launch Packet Tracer**:
   After installation, start Packet Tracer from the terminal:
   ```bash
   packettracer
   ```
   Or use the desktop environment’s application menu (a `.desktop` file is created in `/usr/share/applications`).

8. **Log In**:
   On first launch, log in with your Cisco Networking Academy or Skills for All credentials. If the in-app browser fails to load, select the “Skills for All” login option, which uses your system’s default browser.

### Troubleshooting
- **Wayland Issues**: If Packet Tracer crashes or the UI renders incorrectly on a Wayland session, run it with the `QT_QPA_PLATFORM=xcb` environment variable:
  ```bash
  QT_QPA_PLATFORM=xcb packettracer
  ```
  Alternatively, add this to your `.config/uwsm/env` file for persistent use.[](https://wiki.archlinux.org/title/Packet_Tracer)[](https://aur.archlinux.org/packages/packettracer)
- **Login Issues**: If the NetAcad login gets stuck, use the “Skills for All” option to redirect to your system browser.[](https://aur.archlinux.org/packages/packettracer)
- **Missing Dependencies**: If `makepkg` fails due to missing dependencies (e.g., `lib32-libpng`, `qt5-webkit`), install them manually:
  ```bash
  sudo pacman -S qt5-webkit
  ```
  Check the `PKGBUILD` file for specific dependencies.[](https://bbs.archlinux.org/viewtopic.php?id=150886)
- **PTDIR Environment Variable**: If assessments fail with a “directory not found” error, log out and back in to set the `PTDIR` environment variable, or run:
  ```bash
  source /etc/profile.d/packettracer.sh
  ```[](https://github.com/Aethalides/archlinux-packet-tracer)
- **Beta Version Note**: If using Packet Tracer 9.0.0 beta, note that it expires on December 31, 2025. Use version 8.2.2 for stability.[](https://www.packettracernetwork.com/download-packet-tracer.html)

### Alternative: Packet Tracer Installer Script
For a simpler approach, use the community-provided installer script from GitHub:
- Clone the repository:
  ```bash
  git clone https://github.com/pr00x/Cisco-Packet-Tracer-Arch-Linux-Installer.git
  cd Cisco-Packet-Tracer-Arch-Linux-Installer
  ```
- Make the script executable and run it with the `.deb` file:
  ```bash
  chmod +x packettracer_installer.sh
  sudo ./packettracer_installer.sh ~/Downloads/CiscoPacketTracer_822_amd64_signed.deb
  ```
  This script automates extraction, dependency installation, and integration.[](https://github.com/pr00x/Cisco-Packet-Tracer-Arch-Linux-Installer)

### Notes
- **EULA Compliance**: Ensure you have permission to use Packet Tracer, as it’s restricted to Cisco Networking Academy students, instructors, and alumni. Read the EULA at `/usr/share/licenses/packettracer/COPYRIGHT`.[](https://wiki.archlinux.org/title/Packet_Tracer)
- **Avoid Unofficial Sources**: Only download Packet Tracer from Cisco’s official website to ensure authenticity. Verify the SHA256 checksum if provided.[](https://www.packettracernetwork.com/download-packet-tracer.html)
- **Alternatives**: If Packet Tracer is not suitable, consider open-source alternatives like **GNS3** or **Wireshark** for network simulation and analysis.[](https://wiki.archlinux.org/title/Packet_Tracer)[](https://www.wireshark.org/)

If you meant a different tool (e.g., a packet analyzer like Wireshark), please clarify, and I can provide specific instructions for that. For further assistance, let me know your setup details or any errors you encounter!### Installing Cisco Packet Tracer on Arch Linux

Cisco Packet Tracer is a network simulation tool provided by Cisco for educational purposes. It's not natively available in the official Arch Linux repositories, but you can install it using the Arch User Repository (AUR) package `packettracer`, which adapts the official Ubuntu .deb package for Arch. Note that you must have a valid Cisco Networking Academy (NetAcad) account to download the official software, as it's free only for students, instructors, and alumni. Always review the End-User License Agreement (EULA) after installation.

#### Prerequisites
- A Cisco Networking Academy account (sign up at [netacad.com](https://www.netacad.com) if you don't have one).
- Install the `base-devel` package group for building AUR packages:  
  ```
  sudo pacman -S --needed base-devel git
  ```
- Ensure your system is up to date:  
  ```
  sudo pacman -Syu
  ```
- The installation requires the Ubuntu 64-bit version of Packet Tracer (latest stable is typically 8.2.x as of recent updates).

#### Step-by-Step Installation
1. **Download the Official Packet Tracer .deb File:**  
   Log in to your NetAcad account at [www.netacad.com](https://www.netacad.com). Navigate to the "Resources" or "Downloads" section, and download the Ubuntu Desktop 64-bit .deb package (e.g., `CiscoPacketTracer_820_Ubuntu_64bit.deb`). Save it to a convenient location, like your Downloads folder.

2. **Clone the AUR Package:**  
   Open a terminal and clone the `packettracer` AUR repository:  
   ```
   git clone https://aur.archlinux.org/packettracer.git
   ```  
   This creates a `packettracer` directory containing the `PKGBUILD` and other build files.

3. **Prepare the Build Directory:**  
   Move the downloaded .deb file into the `packettracer` directory:  
   ```
   mv ~/Downloads/CiscoPacketTracer_*.deb packettracer/
   ```  
   (Adjust the path and filename as needed.) The AUR package will extract and repackage the contents from the .deb during the build process.

4. **Build and Install the Package:**  
   Navigate to the directory and build the package:  
   ```
   cd packettracer
   makepkg -sirc
   ```  
   - `-s` installs any missing dependencies.  
   - `-i` installs the built package automatically.  
   - `-r` removes build-time dependencies after installation (optional but recommended).  
   This will create a `.pkg.tar.zst` file and install it via `pacman`. If you skip `-i`, manually install with:  
   ```
   sudo pacman -U packettracer-*.pkg.tar.zst
   ```

5. **Verify Installation:**  
   After installation, check the license files:  
   ```
   cat /usr/share/licenses/packettracer/COPYRIGHT
   ```  
   Agree to the EULA and Supplemental EULA (SEULA) as prompted or by reviewing them online.

#### Launching Packet Tracer
- Run it from the terminal:  
  ```
  packettracer
  ```  
  Or find it in your application menu (it may appear as "Packet Tracer").  
- The first launch may prompt for a username/password (use your NetAcad credentials) and ask about multi-user mode—select "No" for single-user.

#### Troubleshooting
- **Crashes on Wayland:** Set the environment variable before launching:  
  ```
  QT_QPA_PLATFORM=xcb packettracer
  ```  
  For more Qt/Wayland issues, see the ArchWiki on Qt applications.
- **UI Scaling Issues:** If the interface looks wrong (e.g., blurry or oversized), try:  
  ```
  QT_DEVICE_PIXEL_RATIO=1 packettracer
  ```  
  Experiment with values like 0.5, 1, or 2, then log out and back in or reboot.
- **Doesn't Launch or Errors:** Kill any running instances (`pkill -9 PacketTracer`), check for missing Qt libraries (install `qt5-base` or `qt6-base` if needed via `sudo pacman -S`), and run from terminal to see error output.
- **Build Fails:** Ensure the .deb filename matches what the PKGBUILD expects (edit `PKGBUILD` if needed for version mismatches). Update the AUR package with `git pull` before building.
- If you're on a derivative like Manjaro, the steps are identical since it uses AUR/pacman.

If you encounter issues, check the AUR comments at [aur.archlinux.org/packages/packettracer](https://aur.archlinux.org/packages/packettracer) or the ArchWiki page for updates. Alternatives like GNS3 are available in the official repos if Packet Tracer doesn't suit your needs (`sudo pacman -S gns3-gui`).
