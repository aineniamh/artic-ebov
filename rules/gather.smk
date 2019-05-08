rule gather:
    input:
    params:
        run_name=lambda wildcards : {config["run_name"]},
        path_to_fastq= lambda wildcards : {config["path_to_fastq"]},
        min_length= lambda wildcards : {config["min_length"]},
        max_length= lambda wildcards : {config["max_length"]}
    output:
        summary="{run_name}_sequencing_summary.txt",
        reads="{run_name}_all.fastq"
    shell:
        "artic gather --guppy --min-length {params.min_length} "
        "--max-length {params.max_length} --prefix {params.run_name} {params.path_to_fastq}"
