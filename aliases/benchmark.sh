#!/bin/bash
set -euo pipefail

# REQUIRES SUDO
# Benchmark runner
# Modified from https://gist.github.com/peterjmit/3864743

# Example usage:
# rm -rf benchmark_results.csv && ./benchmark.sh -n 3 -c "echo test" && cat benchmark_results.csv

# Defaults
repeats=20
output_file='benchmark_results.csv'
command_to_run='echo 1'

run_tests() {
    # Benchmark loop
    echo 'Benchmarking ' $command_to_run '...';
    echo '======' $command_to_run '======' >> $output_file;

    # Run the given command [repeats] times
    for (( i = 1; i <= $repeats ; i++ ))
    do
        # percentage completion
        p=$(( $i * 100 / $repeats))
        # indicator of progress
        l=$(seq -s "+" $i | sed 's/[0-9]//g')

        # runs time function for the called script, output to a file (-o); with command logs going to another file;
        # -f specifies format (%e: elapsed seconds, %U: user process CPU-seconds, %S: system CPU-seconds);
        # -a specifies append.
        gtime -f "%e,%U,%S" -o ${output_file} -a ${command_to_run} > benchmark_output.txt 2>&1

        # Clear the HDD cache? doesn't work on mac
        # sync && echo 3 > /proc/sys/vm/drop_caches

        echo -ne ${l}' ('${p}'%) \r'
    done;

    echo -ne '\n'

    # Convenience separator for file
    echo '--------------------------' >> $output_file
}

# Option parsing
while getopts n:c:o: OPT
do
    case "$OPT" in
        n)
            repeats=$OPTARG
            ;;
        o)
            output_file=$OPTARG
            ;;
        c)
            command_to_run=$OPTARG
            run_tests
            ;;
        \?)
            echo 'No arguments supplied'
            exit 1
            ;;
    esac
done

shift `expr $OPTIND - 1`
