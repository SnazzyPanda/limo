#!/bin/bash

REPO_DIR="$PWD/build/flatpak-repo"

if [ ! -d "$REPO_DIR" ]; then
	mkdir "$REPO_DIR"
fi

#flatpak install flathub org.kde.Sdk/x86_64/5.15-24.08 org.kde.Platform/x86_64/5.15-24.08 org.freedesktop.Sdk.Extension.llvm18/x86_64/24.08 org.freedesktop.Sdk.Extension.rust-stable/x86_64/24.08

flatpak-builder --repo="$REPO_DIR" build/flatpak com.github.snazzypanda.limo.json --force-clean --require-changes --disable-tests --disable-updates
flatpak build-bundle "$REPO_DIR" build/com.github.snazzypanda.limo.flatpak com.github.snazzypanda.limo

