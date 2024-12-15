#!/usr/bin/env python3

from jinja2 import Environment, FileSystemLoader
import os

TEMPLATE_DIR = "src"
OUTPUT_DIR = "site"

env = Environment(loader=FileSystemLoader(TEMPLATE_DIR))

for file in os.listdir(TEMPLATE_DIR):
  if file.endswith(".html") and not file.startswith("_"):
    template = env.get_template(file)
    output = template.render()
    output_file = os.path.join(OUTPUT_DIR, file)
    with open(output_file, "w") as fp:
      fp.write(output)
