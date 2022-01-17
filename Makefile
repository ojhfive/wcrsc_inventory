.PHONEY: help flutter_dependency_update build_web start_web start_ios
help:
	@printf "wcrsc inventory - flutter build"
	@printf "	flutter_dependency_update"
	@printf "	build_web"
	@printf "	start_web"
	@printf "	build_ios"
	@printf "	start_ios"
flutter_dependency_update:
	@flutter pub get
build_web:
	@flutter pub run build_runner build web
	@flutter build web
start_web: flutter_dependency_update flutter_build_web
	@cd build/web; python3 -m http.server 8000
build_android:
	@flutter build android
start_android: flutter_dependency_update build_android
	@flutter run
build_ios:
	@flutter build ios
start_ios: flutter_dependency_update build_ios
	@open -a Simulator
	@flutter run