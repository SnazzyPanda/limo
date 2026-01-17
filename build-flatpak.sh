#!/bin/bash


flatpak-builder --repo=build-flatpak-repo build/flatpak com.github.snazzypanda.limo.json --force-clean
flatpak build-bundle build-flatpak-repo build/com.github.snazzypanda.limo.flatpak com.github.snazzypanda.limo
