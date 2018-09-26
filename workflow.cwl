#!/usr/bin/env cwl-runner 

class: CommandLineTool

cwlVersion: v1.0

requirements:
- class: DockerRequirement
  dockerImageId: "test1"

inputs:
 chromsize:
  type: File
  inputBinding:
   position: 2

 bgfile:
  type: File
  inputBinding:
   position: 1
 
 outdir:
  type: string
  inputBinding:
   position: 3 

outputs:
 bwfile:
  type: File
  outputBinding:
   glob: "*.bw"
  
baseCommand: ["run-bedtobigwig.sh"]