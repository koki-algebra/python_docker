# Python with Poetry
## Overview
Docker で [poetry](https://python-poetry.org/docs/basic-usage/) を使う際のテンプレート. VSCode DevContainer を使って環境構築を行う.

## Run Python Script
初回のコンテナ起動後に `poetry` の仮想環境 `.venv/` がプロジェクト直下に作られる. `.venv/bin/python` が Python のパスとなる. `.venv/` を削除してしまった場合はコンテナを再度ビルドすればよい. また, VSCode でプロジェクトを開くと自動的に `.venv/` を認識するので, Python のパスを設定する必要はない.

Python のコードを実行するには
```sh
poetry run python <python filepath>
```
で実行するか,
```sh
make run
```
で `src/main.py` が実行される.

## Add Python Package
```sh
poetry add <package name>
```
で pip と同様にインストール可能.

## JupyterLab
VSCode 上で notebook を実行することができる. notebook を開き, Select Kernel をクリックして `.venv/bin/python` を指定する.

また, Jupyter サーバーを立てることもできる.
```sh
make jupyter
```
で JupyterLab が起動する. ポートフォワーディングは Dev Container が自動で行う. ポートを指定して起動するには
```sh
make jupyter JUPYTER_PORT=8080
```
のように実行する. デフォルトは 8888 である.
