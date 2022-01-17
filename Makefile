start-web:
	flutter pub get
	flutter pub run build_runner build web
	flutter build web
	cd build/web; python3 -m http.server 8000