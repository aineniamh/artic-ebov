rule demultiplex:
    input:
        reads= run_name + "_all.fastq"
    output:
        fastq=expand("{run_name}_all-{barcode}.fastq",barcode=config["barcodes"], run_name=run_name)
    threads: 16
    shell:
        "artic demultiplex --threads 16 {input}"
        