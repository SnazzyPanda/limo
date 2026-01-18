#!/bin/bash

REPO_DIR="$PWD/build/flatpak-repo"

if [ ! -d "$REPO_DIR" ]; then
	mkdir "$REPO_DIR"
fi

flatpak-builder --repo="$REPO_DIR" build/flatpak com.github.snazzypanda.limo.json --force-clean --require-changes --disable-tests --disable-updates
flatpak build-bundle "$REPO_DIR" build/com.github.snazzypanda.limo.flatpak com.github.snazzypanda.limo

