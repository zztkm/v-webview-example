module main

import ui.webview
import ui

[heap]
struct App {
mut:
	webview &webview.WebView
}

fn main() {
	mut app := &App{
		webview: webview.new_window(
			url: 'https://github.com/vlang/ui/tree/master'
			title: 'hello'
		)
	}
	window := ui.window(
		width: 800
		height: 100
		title: 'V ui.webview demo'
	)
	ui.run(window)
}

fn (mut app App) btn_open_click(b &ui.Button) {
	// println("on_click open")
	app.webview.navigate('https://github.com/vlang/ui/tree/master')
}
