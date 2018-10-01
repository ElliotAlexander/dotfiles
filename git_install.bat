
SET GPG_PUBLIC=8C903A1B41502A3C4ED17E6690B8E68B93A82B8A


git config credential.helper store
git config --global user.email "ep1e16@soton.ac.uk"
git config --global user.name "ElliotAlexander"
git config --global core.editor "vim"
git config --global credential.helper 'cache --timeout=3600'

gpg --list-keys %GPG_PUBLIC%
IF %errorlevel%==0 (
	git config --global user.signingkey %GPG_PUBLIC%
	git config --global commit.gpgsign true
) ELSE (
	echo GPG Key $GPG_PUBLIC not found.
)