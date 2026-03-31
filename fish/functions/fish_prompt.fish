function fish_prompt
    # Username (Golden Yellow from slot 10)
    set_color ffda5f
    echo -n $USER
    
    # @ symbol (Normal/White)
    set_color normal
    echo -n '@'
    
    # Hostname (Crisp Sky Blue from slot 18)
    set_color 93cfe8
    echo -n (prompt_hostname)
    
    # Space
    echo -n ' '
    
    # Directory Path (Deeper gold from slot 2)
    set_color efc843
    echo -n (prompt_pwd)
    
    # Git Branch (Normal/White)
    set_color normal
    echo -n (fish_git_prompt)
    
    # Prompt symbol
    echo -n '> '
end
