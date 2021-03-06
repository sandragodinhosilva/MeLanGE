rule ensure_all:
    input: 
        OUTDIR/"{genome}_tblout_pfam.txt",
        OUTDIR/"{genome}protein-id_cog.txt",
        OUTDIR/"{genome}overview.txt",
        OUTDIR/"{genome}.ko.out",
        OUTDIR/"{genome}_merops_out.txt"
    output: OUTDIR/"{genome}_done.txt"
    log: LOGDIR/"all/{genome}.log"
    shell: "echo done > {output}"