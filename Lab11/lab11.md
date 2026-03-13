# lab10
Max Wang

## Background

Only 0.125% of known sequences have linked structures due to the cost of
obtaining crystal structures (~\$1 million and 3-5 years). AlphaFold
helps fill in structure gaps between the pdb strucutre (250k) database
and the uniprot (200m) sequence database by utilizing a machine learning
prediction of protein structure form input sequences. Using AlphaFold,
new strucutre predictions can be made to compute structures in time
frames much smaller than traditional physics based methods or laborious
lab work while keeping a high degree of accuracy.

\##EBI Alphafold Database

EBI has a database of previously computed AlphaFold models called AFDB
which is continuously added to as more sequences are input into
AlphaFold.

## Running Alphafold

AlphaFold can be run by downloading and running AlphaFold locally
however it requries a gpu and memory to store databases locally. Instead
Alphafold can be accessed cloud computing through **Colabfold**
<https://github.com/sokrypton/ColabFold>

There are multiple AlphaFold programs than can be run but for brevity
use **AlphaFold2_mmseqs2**

imputing an HIV sequence to predict in AlphaFold

    >HIV-Pr-Dimer (header not inputed to AlphaFold)
    PQITLWQRPLVTIKIGGQLKEALLDTGADDTVLEEMSLPGRWKPKMIGGIGGFIKVRQYD
    QILIEICGHKAIGTVLVGPTPVNIIGRNLLTQIGCTLNF:PQITLWQRPLVTIKIGGQLK
    EALLDTGADDTVLEEMSLPGRWKPKMIGGIGGFIKVRQYDQILIEICGHKAIGTVLVGPT
    PVNIIGRNLLTQIGCTLNF
    ":" represents a chain break for AlphaFold which directs it to model multiple protein interactions
