FROM mcr.microsoft.com/devcontainers/base:jammy

USER vscode

RUN curl -sSf https://rye.astral.sh/get | RYE_INSTALL_OPTION="--yes" bash \
	&& echo 'source "$HOME/.rye/env"' >> ~/.bashrc
