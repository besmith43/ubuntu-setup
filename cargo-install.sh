#!/bin/bash

if [ -z $(which rustup) ]; then
    echo "rustup isn't installed"
else
    rustup update
fi

rustup_default=$(rustup show | grep "Default host" | awk '{ print $3 }')

if [ -z $(which cargo) ]; then
    echo "cargo isn't installed"
else
	cargo install du-dust
	cargo install bat
	cargo install ripgrep
	cargo install tokei
	cargo install broot
	cargo install diskonaut
	cargo install watchexec-cli
	cargo install oha
	cargo install fclones
	cargo install zoxide
	cargo install procs
	cargo install tickrs
	cargo install wasmer-cli --features "singlepass,cranelift"
	cargo install wapm-cli
	cargo install starship --locked
	cargo install nu
	cargo install --locked gfold
  cargo install sccache
  cargo install gitui
  cargo install mprocs
  cargo install wiki-tui
  cargo install speedtest-rs
  cargo install cargo-info
  cargo install cargo-watch
  cargo install gitoxide

	if [ $rustup_default == "aarch64-pc-windows-msvc" ]; then 
		# waiting on ring to get updated
		cargo install --locked pueue --target x86_64-pc-windows-msvc
		cargo install mdcat --target x86_64-pc-windows-msvc
  else
		cargo install --locked pueue
		cargo install mdcat
  fi

	if [ $rustup_default != "windows" ]; then
		cargo install typeracer
		cargo install dijo
		cargo install skim
		cargo install rusty-man
    cargo install exa
    cargo install cargo-xwin
  fi

	cargo install cargo-show-asm
	cargo install cargo-audit
	cargo install cargo-depgraph
	cargo install cargo-docgen
	cargo install cargo-generate

	if [ $rustup_default == "aarch64-pc-windows-msvc" ]; then
		# waiting on ring to get updated
		cargo install cargo-edit --target x86_64-pc-windows-msvc
		cargo install cargo-make --target x86_64-pc-windows-msvc
  else
		cargo install cargo-edit
		cargo install cargo-make
  fi
fi



