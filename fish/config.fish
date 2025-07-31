if status is-interactive
    # Commands to run in interactive sessions can go here
    function randomfetch
    set files ~/.config/fastfetch/logos/*.txt
    set count (count $files)
    set random_file $files[(random 1 $count)]

    # Запускаем fastfetch с кастомным логотипом
    fastfetch --logo "$random_file"
end

randomfetch
    set -U fish_greeting
end
