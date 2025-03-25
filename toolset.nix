{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    (writeShellScriptBin "view" ''
      #!${stdenv.shell}
      if [ "$#" -ne 1 ]; then
      	echo "Error: Please provide exactly one file."
      	exit 1
      fi

      file="$1"
      mime_type=$(file --mime-type --brief --dereference "$file")

      case "$mime_type" in
      audio/*)
      	echo "This is a song."
      	;;
      video/*)
      	echo "This is a video."
      	;;
      image/*)
      	echo "This is a photo."
      	;;
      text/*)
      	case $(basename "$file") in
      	*.md)
      		${glow}/bin/glow --style ~/.config/glow/default.json "$file"
      		;;
      	*)
      		cat "$file"
      		;;
      	esac
      	;;
      application/pdf)
      	zathura "$file"
      	;;
      application/zip)
      	echo "This is a zip archive."
      	;;
      application/x-tar)
      	echo "This is a tar archive."
      	;;
      application/x-rar)
      	echo "This is a rar archive."
      	;;
      application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
      	echo "This is an Excel spreadsheet."
      	;;
      application/vnd.openxmlformats-officedocument.wordprocessingml.document)
      	echo "This is a Word document."
      	;;
      *)
      	echo "Filetype is unknown or unsupported."
      	;;
      esac
    '')

    (writeShellScriptBin "stamp" ''
      #!${stdenv.shell}
      if [ "$#" -lt 1 ]; then
      	echo "You need to provide at least one file as an argument."
      	exit 1
      fi

      current_time=$(date "+%Y%m%d%H%M%S")
      echo "Current Time : $current_time"

      for file_name in "$@"; do
      	new_fileName=$current_time-$file_name
      	echo "New FileName: " "$new_fileName"
      	cp "$file_name" "$new_fileName"
      done

      echo "You should see new files generated with timestamp on them.."
    '')

    (writeShellScriptBin "todo" ''
      #!${stdenv.shell}
      if [ -z "$1" ]; then
      	${fasole}/bin/fasole TODO.md
      else
      	${fasole}/bin/fasole "$@"
      fi
    '')

    (writeShellScriptBin "work" ''
      #!${stdenv.shell}
      branch_name=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
      if [ $? -eq 128 ]; then
      	echo "must be in a git repository to work!" >&2
      	exit 1
      fi
      if [ -z "$1" ]; then
      	${fasole}/bin/fasole "$branch_name.md"
      else
      	${fasole}/bin/fasole "$@"
      fi
    '')

    (writeShellScriptBin "edit" ''
      #!${stdenv.shell}
      ${unstable.neovim}/bin/nvim "$@"
    '')

    (writeShellScriptBin "note" ''
      #!${stdenv.shell}
      ${unstable.neovim}/bin/nvim NOTE.md
    '')

    (writeShellScriptBin "system-info" ''
      #!${stdenv.shell}
      ${fastfetch}/bin/fastfetch "$@"
    '')

    (writeShellScriptBin "repo-info" ''
      #!${stdenv.shell}
      ${onefetch}/bin/onefetch -d churn commits lines-of-code --no-color-palette --true-color never
      ${git}/bin/git status
    '')
  ];
}
