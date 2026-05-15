rule make_var3_figure:
    input:
        script="src/scripts/plot_var3.py",
        data="src/data/var3_vi_vs_nuts/posterior_vi_overlay_summary.npz",
        metrics="src/data/var3_vi_vs_nuts/metrics_summary.json",
    output:
        "src/tex/figures/vi_vs_nuts_var3.pdf",
    conda:
        "environment.yml"
    shell:
        "python {input.script} --idata {input.data} --output {output}"


rule make_lisa_triangle_figures:
    input:
        script="src/scripts/plot_lisa_triangle.py",
        data="src/data/lisa_triangle_eta0p5.h5",
    output:
        "src/tex/figures/triangle_noise4a_eta0p5.pdf",
        "src/tex/figures/triangle_noise5a_eta0p5.pdf",
    conda:
        "environment.yml"
    shell:
        "python {input.script} --input {input.data} --outdir src/tex/figures"


rule make_lisa_eta_sweep_figure:
    input:
        script="src/scripts/plot_lisa_eta.py",
        data="src/data/lisa_eta_sweep.csv",
    output:
        "src/tex/figures/lisa_eta_sweep.pdf",
    conda:
        "environment.yml"
    shell:
        "python {input.script}"
