#!/bin/bash
flutter clean
cd ios
pod deintegrate
pod install
cd ..