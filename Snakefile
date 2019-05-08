#Snakemake implementation of the artic analysis pipeline
configfile: "config.yaml"

run_name = str(config["run_name"])

include: "rules/gather.smk"
include: "rules/demultiplex.smk"
include: "rules/minion.smk"
include: "rules/nanopolish_index.smk"
