# Home Page
{:.no_toc}

<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript" ></script>

Test home page.
Go to [Publication Test](./Publication-Test.html) to look at the bare evaluation results or to [Test 2](./notebooks/Test2.html) for a better UX.

## Content

- table of contents
{:toc}

## How-To

Steps to convert a Jupyter Notebook to a markdown file compatible with GH-Pages (Jekyll & Liquid).

1. Prepare your notebook for export:
   In the first code cell inject JavaScript to load `require.js`.
   This is needed for Plotly to load correctly.
   You can use the following code:

   ~~~python
   from IPython.display import display, HTML
   # load require.js
   display(HTML('<script src="https://cdnjs.cloudflare.com/ajax/libs/require.js/2.1.10/require.min.js"></script>'))
   ~~~

2. Use `nbconvert` to convert your notebook to markdown:

   ~~~bash
   jupyter nbconvert --no-prompt --no-input --to markdown notebooks/<notebook>.ipynb
   ~~~

   This command will also remove all prompts and input cells for a cleaner output.

3. Clean and sanitize the markdown file:
   You have to remove all appearences of {{ '`{{`' }}, `}}`, {{ '`{%`' }}, and `%}` in the original markdown file, because they are
   interpreted by Liquid (the used templating engine).
   You can use the script `sanitize.sh` for this step.

4. Add the front matter to the page to specify its metadata.
   This includes title, description, its permalink, and other details.
   Example:

   ~~~yaml
   ---
   title: Test notebook
   description: This page showcases a html-rendered jupyter notebook
   permalink: /test-notebook/
   ---
   ~~~

## Math Test

Here, we just test out the math engine of Jekyll and kramdown:

The default LaTeX-environments are not supported: $\lim_{n \to \inf}\Sigma^n_{i=1} \frac{i+2}{4n}$.

$$\lim_{n \to \inf}\Sigma^n_{i=1} \frac{i+2}{4n}$$

Test inline \\[\lim_{n \to \inf}\Sigma^n_{i=1} \frac{i+2}{4n}\\].

Test inline \\(\lim_{n \to \inf}\Sigma^n_{i=1} \frac{i+2}{4n}\\).

[Here](https://kramdown.gettalong.org/syntax.html) is a reference to the kramdown-Syntax that is used by Jekyll to transform this document to HTML.
