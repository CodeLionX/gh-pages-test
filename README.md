# Home Page

Test home page.
Go to [Publication Test](./Publication-Test.html) to look at the evaluation results.

## How-To

Steps to convert a Jupyter Notebook to a markdown file compatible with GH-Pages (Jekyll & Liquid).

1. Prepare your notebook for export:
   In the first code cell inject JavaScript to load `require.js`.
   This is needed for Plotly to load correctly.
   You can use the following code:

   ```python
   from IPython.display import display, HTML
   # load require.js
   display(HTML('<script src="https://cdnjs.cloudflare.com/ajax/libs/require.js/2.1.10/require.min.js"></script>'))
   ```

2. Use `nbconvert` to convert your notebook to markdown:

   ```bash
   jupyter nbconvert --no-prompt --no-input --to markdown notebooks/<notebook>.ipynb
   ```

   This command will also remove all prompts and input cells for a cleaner output.

3. Clean and sanitize the markdown file:
   You have to remove all appearences of {{ '`{{`' }}, `}}`, {{ '`{%`' }}, and `%}` in the original markdown file, because they are
   interpreted by Liquid (the used templating engine).
   You can use the script `sanitize.sh` for this step.

4. Add the front matter to the page to specify its metadata.
   This includes title, description, its permalink, and other details.
   Example:

   ```yaml
   ---
   title: Test notebook
   description: This page showcases a html-rendered jupyter notebook
   permalink: /test-notebook/
   ---
   ```
