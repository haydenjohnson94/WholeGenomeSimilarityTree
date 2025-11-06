#!/bin/bash
#SBATCH --job-name=run_notebook_Sourmash
#SBATCH --cpus-per-task=32
#SBATCH --mem=100G
#SBATCH --output=run_notebook_Sourmash.%j.out
#SBATCH --error=run_notebook_Sourmash.%j.err
#SBATCH --partition=bpp


# Input Jupyter Notebook file 
NOTEBOOK_FILE="SourmashTreeWorkflow_FromAssemblyDirectory.ipynb"  
EXECUTED_NOTEBOOK="${NOTEBOOK_FILE%.ipynb}.ipynb"
# Execute the notebook 
echo "Executing $NOTEBOOK_FILE..."
jupyter nbconvert --to notebook --execute "$NOTEBOOK_FILE" --output "$EXECUTED_NOTEBOOK" 


