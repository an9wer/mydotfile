DIR=$(cd $(dirname $0) && pwd)

for target in $(ls -A -I .config -I install.sh ${DIR}); do
  home_target=~/${target}
  dir_target=${DIR}/${target}
  [[ -e "${home_target}" ]] && mv "${home_target}" "${home_target}.bak"
  ln -sf "${dir_target}" "${home_target}"
done

# .config file
[[ ! -d ~/.config ]] && mkdir ~/.config
for target in $(ls ${DIR}/.config); do
  home_target=~/.config/${target}
  dir_target=${DIR}/.config/${target}
  [[ -e "${home_target}" ]] && mv "${home_target}" "${home_target}.bak"
  ln -sf "${dir_target}" "${home_target}"
done