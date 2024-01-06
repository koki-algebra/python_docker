# Python with Rye
## Overview
Docker で [rye](https://rye-up.com) を使う際のテンプレート. VSCode DevContainer を使って環境構築を行う.

## Run Python Script
初回のコンテナ起動後に `rye` の仮想環境 `.venv/` がプロジェクト直下に作られる. `.venv/bin/python` が Python のパスとなる. `.venv/` を削除してしまった場合はコンテナを再度ビルドすればよい. また, VSCode でプロジェクトを開くと自動的に `.venv/` を認識するので, Python のパスを設定する必要はない.

Python のコードを実行するには
```sh
rye run python <python filepath>
```
で実行するか,
```sh
make run
```
で `src/python_docker/__init__.py` の `main()` が実行される.

## Add Python Package
```sh
rye add <package name>
```
を実行後,
```sh
rye sync
```
で pip と同様にインストール可能.

## JupyterLab
VSCode 上で notebook を実行することができる. notebook を開き, Select Kernel をクリックして `.venv/bin/python` を指定する.
