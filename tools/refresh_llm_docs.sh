#!/bin/bash
## From claudette: https://github.com/AnswerDotAI/claudette/blob/main/tools/refresh_llm_docs.sh

echo "Refreshing LLM documentation files..."

echo "Generating API list documentation..."
pysym2md claudette --output_file apilist.txt

echo "Generating context files..."
llms_txt2ctx llms.txt > llms-ctx.txt
llms_txt2ctx llms.txt --optional True > llms-ctx-full.txt

echo "✅ Documentation refresh complete!"