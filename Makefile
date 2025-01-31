# CoreFS makefile

outdir=mkosi.output/2109
output=corefs_2109.img

all: image dist

image:
	mkosi 

dist:
	cat ${outdir}/${output} | zstd -vo ${outdir}/${output}.stream.zstd

clean:
	mkosi clean
	rm -rf mkosi.output/*
