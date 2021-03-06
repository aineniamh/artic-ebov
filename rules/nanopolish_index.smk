rule nanopolish_index:
    input:
        summary=run_name+"_sequencing_summary.txt",
        reads=run_name+"_all.fastq"
    params:
        path_to_fast5= lambda wildcards : config["path_to_fast5"]
    output:
        fai= run_name+"_all.fastq.index.fai",
        gzi= run_name+"_all.fastq.index.gzi",
        readdb= run_name+"_all.fastq.index.readdb",
        index=run_name+"_all.fastq.index"
    shell:
        "nanopolish index -s {input.summary} -d {params.path_to_fast5} {input.reads}"
        