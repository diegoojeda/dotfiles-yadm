
using namespace System.Management.Automation
using namespace System.Management.Automation.Language

Register-ArgumentCompleter -Native -CommandName 'btm' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'btm'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'btm' {
            [CompletionResult]::new('--color', 'color', [CompletionResultType]::ParameterName, 'Use a color scheme, use --help for info.')
            [CompletionResult]::new('-C', 'C ', [CompletionResultType]::ParameterName, 'Sets the location of the config file.')
            [CompletionResult]::new('--config', 'config', [CompletionResultType]::ParameterName, 'Sets the location of the config file.')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'Default time value for graphs.')
            [CompletionResult]::new('--default_time_value', 'default_time_value', [CompletionResultType]::ParameterName, 'Default time value for graphs.')
            [CompletionResult]::new('--default_widget_count', 'default_widget_count', [CompletionResultType]::ParameterName, 'Sets the n''th selected widget type as the default.')
            [CompletionResult]::new('--default_widget_type', 'default_widget_type', [CompletionResultType]::ParameterName, 'Sets the default widget type, use --help for info.')
            [CompletionResult]::new('-r', 'r', [CompletionResultType]::ParameterName, 'Sets the data refresh rate.')
            [CompletionResult]::new('--rate', 'rate', [CompletionResultType]::ParameterName, 'Sets the data refresh rate.')
            [CompletionResult]::new('--retention', 'retention', [CompletionResultType]::ParameterName, 'The timespan of data stored.')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'The amount of time changed upon zooming.')
            [CompletionResult]::new('--time_delta', 'time_delta', [CompletionResultType]::ParameterName, 'The amount of time changed upon zooming.')
            [CompletionResult]::new('--autohide_time', 'autohide_time', [CompletionResultType]::ParameterName, 'Temporarily shows the time scale in graphs.')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'Hides graphs and uses a more basic look.')
            [CompletionResult]::new('--basic', 'basic', [CompletionResultType]::ParameterName, 'Hides graphs and uses a more basic look.')
            [CompletionResult]::new('--battery', 'battery', [CompletionResultType]::ParameterName, 'Shows the battery widget.')
            [CompletionResult]::new('-S', 'S ', [CompletionResultType]::ParameterName, 'Enables case sensitivity by default.')
            [CompletionResult]::new('--case_sensitive', 'case_sensitive', [CompletionResultType]::ParameterName, 'Enables case sensitivity by default.')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'Sets the temperature type to Celsius.')
            [CompletionResult]::new('--celsius', 'celsius', [CompletionResultType]::ParameterName, 'Sets the temperature type to Celsius.')
            [CompletionResult]::new('-u', 'u', [CompletionResultType]::ParameterName, 'Sets process CPU% to be based on current CPU%.')
            [CompletionResult]::new('--current_usage', 'current_usage', [CompletionResultType]::ParameterName, 'Sets process CPU% to be based on current CPU%.')
            [CompletionResult]::new('--disable_advanced_kill', 'disable_advanced_kill', [CompletionResultType]::ParameterName, 'Hides advanced process killing.')
            [CompletionResult]::new('--disable_click', 'disable_click', [CompletionResultType]::ParameterName, 'Disables mouse clicks.')
            [CompletionResult]::new('-m', 'm', [CompletionResultType]::ParameterName, 'Uses a dot marker for graphs.')
            [CompletionResult]::new('--dot_marker', 'dot_marker', [CompletionResultType]::ParameterName, 'Uses a dot marker for graphs.')
            [CompletionResult]::new('--enable_cache_memory', 'enable_cache_memory', [CompletionResultType]::ParameterName, 'Enable collecting and displaying cache and buffer memory.')
            [CompletionResult]::new('--enable_gpu_memory', 'enable_gpu_memory', [CompletionResultType]::ParameterName, 'Enable collecting and displaying GPU memory usage.')
            [CompletionResult]::new('-e', 'e', [CompletionResultType]::ParameterName, 'Expand the default widget upon starting the app.')
            [CompletionResult]::new('--expanded', 'expanded', [CompletionResultType]::ParameterName, 'Expand the default widget upon starting the app.')
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'Sets the temperature type to Fahrenheit.')
            [CompletionResult]::new('--fahrenheit', 'fahrenheit', [CompletionResultType]::ParameterName, 'Sets the temperature type to Fahrenheit.')
            [CompletionResult]::new('-g', 'g', [CompletionResultType]::ParameterName, 'Groups processes with the same name by default.')
            [CompletionResult]::new('--group', 'group', [CompletionResultType]::ParameterName, 'Groups processes with the same name by default.')
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'Hides the average CPU usage.')
            [CompletionResult]::new('--hide_avg_cpu', 'hide_avg_cpu', [CompletionResultType]::ParameterName, 'Hides the average CPU usage.')
            [CompletionResult]::new('--hide_table_gap', 'hide_table_gap', [CompletionResultType]::ParameterName, 'Hides spacing between table headers and entries.')
            [CompletionResult]::new('--hide_time', 'hide_time', [CompletionResultType]::ParameterName, 'Hides the time scale.')
            [CompletionResult]::new('-k', 'k', [CompletionResultType]::ParameterName, 'Sets the temperature type to Kelvin.')
            [CompletionResult]::new('--kelvin', 'kelvin', [CompletionResultType]::ParameterName, 'Sets the temperature type to Kelvin.')
            [CompletionResult]::new('-l', 'l', [CompletionResultType]::ParameterName, 'Puts the CPU chart legend to the left side.')
            [CompletionResult]::new('--left_legend', 'left_legend', [CompletionResultType]::ParameterName, 'Puts the CPU chart legend to the left side.')
            [CompletionResult]::new('--mem_as_value', 'mem_as_value', [CompletionResultType]::ParameterName, 'Defaults to showing process memory usage by value.')
            [CompletionResult]::new('--network_use_binary_prefix', 'network_use_binary_prefix', [CompletionResultType]::ParameterName, 'Displays the network widget with binary prefixes.')
            [CompletionResult]::new('--network_use_bytes', 'network_use_bytes', [CompletionResultType]::ParameterName, 'Displays the network widget using bytes.')
            [CompletionResult]::new('--network_use_log', 'network_use_log', [CompletionResultType]::ParameterName, 'Displays the network widget with a log scale.')
            [CompletionResult]::new('--process_command', 'process_command', [CompletionResultType]::ParameterName, 'Show processes as their commands by default.')
            [CompletionResult]::new('-R', 'R ', [CompletionResultType]::ParameterName, 'Enables regex by default.')
            [CompletionResult]::new('--regex', 'regex', [CompletionResultType]::ParameterName, 'Enables regex by default.')
            [CompletionResult]::new('--show_table_scroll_position', 'show_table_scroll_position', [CompletionResultType]::ParameterName, 'Shows the scroll position tracker in table widgets.')
            [CompletionResult]::new('-T', 'T ', [CompletionResultType]::ParameterName, 'Defaults the process widget be in tree mode.')
            [CompletionResult]::new('--tree', 'tree', [CompletionResultType]::ParameterName, 'Defaults the process widget be in tree mode.')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'Show process CPU% usage without normalizing over the number of cores.')
            [CompletionResult]::new('--unnormalized_cpu', 'unnormalized_cpu', [CompletionResultType]::ParameterName, 'Show process CPU% usage without normalizing over the number of cores.')
            [CompletionResult]::new('--use_old_network_legend', 'use_old_network_legend', [CompletionResultType]::ParameterName, 'DEPRECATED - uses a separate network legend.')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Prints version information.')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Prints version information.')
            [CompletionResult]::new('-W', 'W ', [CompletionResultType]::ParameterName, 'Enables whole-word matching by default.')
            [CompletionResult]::new('--whole_word', 'whole_word', [CompletionResultType]::ParameterName, 'Enables whole-word matching by default.')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help (see more with ''--help'')')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help (see more with ''--help'')')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}
