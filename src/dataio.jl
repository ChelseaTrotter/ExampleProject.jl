using CSV

# Read in data
genofile = joinpath(@__DIR__, "..", "data", "HSdata", "mouse_hs1940.geno.txt")
geno = CSV.read(genofile, delim=',', header=0,  missingstring="NA")

phenofile = joinpath(@__DIR__, "..", "data", "HSdata", "mouse_hs1940.pheno.txt")
pheno = CSV.read(phenofile, delim='\t', header=0,  missingstring="NA")

# removing individuals with no phenotype data.
