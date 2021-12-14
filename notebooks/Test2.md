---
title: Test notebook (2)
description: This page showcases a html-rendered jupyter notebook
---

# Test notebook

This notebook showcases the publication of our results using HTML-exported jupyter notebooks.
We use the following packages:

- numpy
- pandas
- matplotlib
- plotly
- timeeval

<script src="https://cdnjs.cloudflare.com/ajax/libs/require.js/2.1.10/require.min.js"></script>

<script type="text/javascript">
window.PlotlyConfig = {MathJaxConfig: 'local'};
if (window.MathJax) {MathJax.Hub.Config({SVG: {font: "STIX-Web"} });}
if (typeof require !== 'undefined') {
require.undef("plotly");
requirejs.config({
    paths: {
        'plotly': ['https://cdn.plot.ly/plotly-2.2.0.min']
    }
});
require(['plotly'], function(Plotly) {
    window._Plotly = Plotly;
});
}
</script>

## Content

{:toc}

## Load results

We read the results from the TimeEval experiment `2021-12-03_runtime-gutentag-2-merged`.
It contains the evaluation of all our 61 considered algorithms with their optimized parameter settings on the synthetically generated GutenTAG datasets.
The GutenTAG collection contains 193 datasets that can be used for semi-supervised, supervised, and unsupervised training.

We used the following algorithms:

<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th></th>
      <th></th>
      <th># datasets</th>
    </tr>
    <tr>
      <th>algo_input_dimensionality</th>
      <th>algo_training_type</th>
      <th>algorithm</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th rowspan="33" valign="top">UNIVARIATE</th>
      <th rowspan="25" valign="top">UNSUPERVISED</th>
      <th>VALMOD</th>
      <td>168</td>
    </tr>
    <tr>
      <th>Triple ES (Holt-Winter's)</th>
      <td>168</td>
    </tr>
    <tr>
      <th>TSBitmap</th>
      <td>168</td>
    </tr>
    <tr>
      <th>Subsequence LOF</th>
      <td>168</td>
    </tr>
    <tr>
      <th>Subsequence IF</th>
      <td>168</td>
    </tr>
    <tr>
      <th>Spectral Residual (SR)</th>
      <td>168</td>
    </tr>
    <tr>
      <th>Series2Graph</th>
      <td>168</td>
    </tr>
    <tr>
      <th>STOMP</th>
      <td>168</td>
    </tr>
    <tr>
      <th>STAMP</th>
      <td>168</td>
    </tr>
    <tr>
      <th>SSA</th>
      <td>168</td>
    </tr>
    <tr>
      <th>SAND</th>
      <td>168</td>
    </tr>
    <tr>
      <th>S-H-ESD (Twitter)</th>
      <td>168</td>
    </tr>
    <tr>
      <th>PhaseSpace-SVM</th>
      <td>168</td>
    </tr>
    <tr>
      <th>PST</th>
      <td>168</td>
    </tr>
    <tr>
      <th>PCI</th>
      <td>168</td>
    </tr>
    <tr>
      <th>NumentaHTM</th>
      <td>168</td>
    </tr>
    <tr>
      <th>NormA</th>
      <td>168</td>
    </tr>
    <tr>
      <th>MedianMethod</th>
      <td>168</td>
    </tr>
    <tr>
      <th>Left STAMPi</th>
      <td>168</td>
    </tr>
    <tr>
      <th>HOT SAX</th>
      <td>168</td>
    </tr>
    <tr>
      <th>GrammarViz</th>
      <td>168</td>
    </tr>
    <tr>
      <th>FFT</th>
      <td>168</td>
    </tr>
    <tr>
      <th>DWT-MLEAD</th>
      <td>168</td>
    </tr>
    <tr>
      <th>DSPOT</th>
      <td>168</td>
    </tr>
    <tr>
      <th>ARIMA</th>
      <td>168</td>
    </tr>
    <tr>
      <th rowspan="8" valign="top">SEMI_SUPERVISED</th>
      <th>XGBoosting (RR)</th>
      <td>168</td>
    </tr>
    <tr>
      <th>TARZAN</th>
      <td>168</td>
    </tr>
    <tr>
      <th>SR-CNN</th>
      <td>168</td>
    </tr>
    <tr>
      <th>Random Forest Regressor (RR)</th>
      <td>168</td>
    </tr>
    <tr>
      <th>OceanWNN</th>
      <td>168</td>
    </tr>
    <tr>
      <th>ImageEmbeddingCAE</th>
      <td>168</td>
    </tr>
    <tr>
      <th>Donut</th>
      <td>168</td>
    </tr>
    <tr>
      <th>Bagel</th>
      <td>168</td>
    </tr>
    <tr>
      <th rowspan="28" valign="top">MULTIVARIATE</th>
      <th rowspan="14" valign="top">UNSUPERVISED</th>
      <th>normal</th>
      <td>193</td>
    </tr>
    <tr>
      <th>k-Means</th>
      <td>193</td>
    </tr>
    <tr>
      <th>Torsk</th>
      <td>193</td>
    </tr>
    <tr>
      <th>PCC</th>
      <td>193</td>
    </tr>
    <tr>
      <th>LOF</th>
      <td>193</td>
    </tr>
    <tr>
      <th>KNN</th>
      <td>193</td>
    </tr>
    <tr>
      <th>Isolation Forest (iForest)</th>
      <td>193</td>
    </tr>
    <tr>
      <th>IF-LOF</th>
      <td>193</td>
    </tr>
    <tr>
      <th>HBOS</th>
      <td>193</td>
    </tr>
    <tr>
      <th>Extended Isolation Forest (EIF)</th>
      <td>193</td>
    </tr>
    <tr>
      <th>DBStream</th>
      <td>193</td>
    </tr>
    <tr>
      <th>COPOD</th>
      <td>193</td>
    </tr>
    <tr>
      <th>COF</th>
      <td>193</td>
    </tr>
    <tr>
      <th>CBLOF</th>
      <td>193</td>
    </tr>
    <tr>
      <th rowspan="3" valign="top">SUPERVISED</th>
      <th>Normalizing Flows</th>
      <td>193</td>
    </tr>
    <tr>
      <th>MultiHMM</th>
      <td>193</td>
    </tr>
    <tr>
      <th>Hybrid Isolation Forest (HIF)</th>
      <td>193</td>
    </tr>
    <tr>
      <th rowspan="11" valign="top">SEMI_SUPERVISED</th>
      <th>Telemanom</th>
      <td>193</td>
    </tr>
    <tr>
      <th>TAnoGan</th>
      <td>193</td>
    </tr>
    <tr>
      <th>RobustPCA</th>
      <td>193</td>
    </tr>
    <tr>
      <th>Random Black Forest (RR)</th>
      <td>193</td>
    </tr>
    <tr>
      <th>OmniAnomaly</th>
      <td>193</td>
    </tr>
    <tr>
      <th>LaserDBN</th>
      <td>193</td>
    </tr>
    <tr>
      <th>LSTM-AD</th>
      <td>193</td>
    </tr>
    <tr>
      <th>Hybrid KNN</th>
      <td>193</td>
    </tr>
    <tr>
      <th>HealthESN</th>
      <td>193</td>
    </tr>
    <tr>
      <th>EncDec-AD</th>
      <td>193</td>
    </tr>
    <tr>
      <th>DeepAnT</th>
      <td>193</td>
    </tr>
  </tbody>
</table>
</div>

The number of datasets, the algorithms were executed on, is different for univariate and multivariate algorithms, because the multivariate algorithms were also executed on the univariate datasets.
The univariate algorithms cannot be executed on multivariate datasets, because they can't handle the multidimensional input.

This is also reflected in the number of algorithm executed per dataset, as can be seen in the following table showing the used datasets:

<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th></th>
      <th></th>
      <th>algorithm</th>
    </tr>
    <tr>
      <th>collection</th>
      <th>dataset_input_dimensionality</th>
      <th>dataset_name</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th rowspan="193" valign="top">GutenTAG</th>
      <th rowspan="25" valign="top">MULTIVARIATE</th>
      <th>cbf-channels-all-of-3</th>
      <td>28</td>
    </tr>
    <tr>
      <th>cbf-channels-single-of-10</th>
      <td>28</td>
    </tr>
    <tr>
      <th>cbf-channels-single-of-2</th>
      <td>28</td>
    </tr>
    <tr>
      <th>cbf-channels-single-of-20</th>
      <td>28</td>
    </tr>
    <tr>
      <th>cbf-channels-single-of-5</th>
      <td>28</td>
    </tr>
    <tr>
      <th>ecg-channels-all-of-3</th>
      <td>28</td>
    </tr>
    <tr>
      <th>ecg-channels-single-of-10</th>
      <td>28</td>
    </tr>
    <tr>
      <th>ecg-channels-single-of-2</th>
      <td>28</td>
    </tr>
    <tr>
      <th>ecg-channels-single-of-20</th>
      <td>28</td>
    </tr>
    <tr>
      <th>ecg-channels-single-of-5</th>
      <td>28</td>
    </tr>
    <tr>
      <th>poly-channels-all-of-3</th>
      <td>28</td>
    </tr>
    <tr>
      <th>poly-channels-single-of-10</th>
      <td>28</td>
    </tr>
    <tr>
      <th>poly-channels-single-of-2</th>
      <td>28</td>
    </tr>
    <tr>
      <th>poly-channels-single-of-20</th>
      <td>28</td>
    </tr>
    <tr>
      <th>poly-channels-single-of-5</th>
      <td>28</td>
    </tr>
    <tr>
      <th>rw-channels-all-of-3</th>
      <td>28</td>
    </tr>
    <tr>
      <th>rw-channels-single-of-10</th>
      <td>28</td>
    </tr>
    <tr>
      <th>rw-channels-single-of-2</th>
      <td>28</td>
    </tr>
    <tr>
      <th>rw-channels-single-of-20</th>
      <td>28</td>
    </tr>
    <tr>
      <th>rw-channels-single-of-5</th>
      <td>28</td>
    </tr>
    <tr>
      <th>sinus-channels-all-of-3</th>
      <td>28</td>
    </tr>
    <tr>
      <th>sinus-channels-single-of-10</th>
      <td>28</td>
    </tr>
    <tr>
      <th>sinus-channels-single-of-2</th>
      <td>28</td>
    </tr>
    <tr>
      <th>sinus-channels-single-of-20</th>
      <td>28</td>
    </tr>
    <tr>
      <th>sinus-channels-single-of-5</th>
      <td>28</td>
    </tr>
    <tr>
      <th rowspan="168" valign="top">UNIVARIATE</th>
      <th>cbf-combined-diff-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-combined-diff-2</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-combined-diff-3</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-diff-count-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-diff-count-2</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-diff-count-3</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-diff-count-4</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-diff-count-5</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-diff-count-6</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-diff-count-7</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-length-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-length-10</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-length-100</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-length-1000</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-length-50</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-length-500</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-position-beginning</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-position-end</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-position-middle</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-same-count-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-same-count-10</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-same-count-2</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-same-count-5</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-trend-linear</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-trend-quadratic</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-trend-sinus</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-type-amplitude</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-type-extremum</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-type-mean</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-type-pattern</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-type-platform</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-type-trend</th>
      <td>61</td>
    </tr>
    <tr>
      <th>cbf-type-variance</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-combined-diff-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-combined-diff-2</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-combined-diff-3</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-diff-count-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-diff-count-2</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-diff-count-3</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-diff-count-4</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-diff-count-5</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-diff-count-6</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-diff-count-7</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-diff-count-8</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-diff-count-9</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-length-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-length-10</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-length-100</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-length-1000</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-length-50</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-length-500</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-noise-00%</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-noise-01%</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-noise-10%</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-noise-30%</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-noise-50%</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-same-count-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-same-count-10</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-same-count-2</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-same-count-5</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-trend-linear</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-trend-quadratic</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-trend-sinus</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-type-amplitude</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-type-extremum</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-type-frequency</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-type-mean</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-type-pattern</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-type-pattern-shift</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-type-platform</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-type-trend</th>
      <td>61</td>
    </tr>
    <tr>
      <th>ecg-type-variance</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-combined-diff-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-combined-diff-2</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-combined-diff-3</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-diff-count-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-diff-count-2</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-diff-count-3</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-diff-count-4</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-diff-count-5</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-length-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-length-10</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-length-100</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-length-1000</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-length-50</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-length-500</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-same-count-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-same-count-10</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-same-count-2</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-same-count-5</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-trend-linear</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-trend-quadratic</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-trend-sinus</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-type-extremum</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-type-mean</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-type-platform</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-type-trend</th>
      <td>61</td>
    </tr>
    <tr>
      <th>poly-type-variance</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-combined-diff-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-combined-diff-2</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-combined-diff-3</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-diff-count-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-diff-count-2</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-diff-count-3</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-diff-count-4</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-diff-count-5</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-diff-count-6</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-length-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-length-10</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-length-100</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-length-1000</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-length-50</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-length-500</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-same-count-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-same-count-10</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-same-count-2</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-same-count-5</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-trend-linear</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-trend-quadratic</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-trend-sinus</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-type-amplitude</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-type-extremum</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-type-mean</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-type-platform</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-type-trend</th>
      <td>61</td>
    </tr>
    <tr>
      <th>rw-type-variance</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-combined-diff-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-combined-diff-2</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-combined-diff-3</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-diff-count-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-diff-count-2</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-diff-count-3</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-diff-count-4</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-diff-count-5</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-diff-count-6</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-diff-count-7</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-diff-count-8</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-diff-count-9</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-length-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-length-10</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-length-100</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-length-1000</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-length-50</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-length-500</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-noise-00%</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-noise-01%</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-noise-10%</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-noise-30%</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-noise-50%</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-position-beginning</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-position-end</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-position-middle</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-same-count-1</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-same-count-10</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-same-count-2</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-same-count-5</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-trend-linear</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-trend-quadratic</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-trend-sinus</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-type-amplitude</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-type-extremum</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-type-frequency</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-type-mean</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-type-pattern</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-type-pattern-shift</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-type-platform</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-type-trend</th>
      <td>61</td>
    </tr>
    <tr>
      <th>sinus-type-variance</th>
      <td>61</td>
    </tr>
  </tbody>
</table>
</div>

## Analyze overall results on the GutenTAG datasets

Some test analysis:

### Algorithm problems grouped by algorithm training type

#### SEMI_SUPERVISED

<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>status</th>
      <th>Status.ERROR</th>
      <th>Status.OK</th>
      <th>Status.TIMEOUT</th>
      <th>ALL</th>
    </tr>
    <tr>
      <th>algo_input_dimensionality</th>
      <th>algorithm</th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th rowspan="8" valign="top">UNIVARIATE</th>
      <th>TARZAN</th>
      <td>33</td>
      <td>135</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>Bagel</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>Donut</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>ImageEmbeddingCAE</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>OceanWNN</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>Random Forest Regressor (RR)</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>SR-CNN</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>XGBoosting (RR)</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th rowspan="11" valign="top">MULTIVARIATE</th>
      <th>LSTM-AD</th>
      <td>103</td>
      <td>81</td>
      <td>9</td>
      <td>193</td>
    </tr>
    <tr>
      <th>EncDec-AD</th>
      <td>40</td>
      <td>17</td>
      <td>136</td>
      <td>193</td>
    </tr>
    <tr>
      <th>LaserDBN</th>
      <td>25</td>
      <td>168</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>DeepAnT</th>
      <td>10</td>
      <td>183</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>OmniAnomaly</th>
      <td>4</td>
      <td>189</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>HealthESN</th>
      <td>0</td>
      <td>155</td>
      <td>38</td>
      <td>193</td>
    </tr>
    <tr>
      <th>Hybrid KNN</th>
      <td>0</td>
      <td>193</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>Random Black Forest (RR)</th>
      <td>0</td>
      <td>179</td>
      <td>14</td>
      <td>193</td>
    </tr>
    <tr>
      <th>RobustPCA</th>
      <td>0</td>
      <td>193</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>TAnoGan</th>
      <td>0</td>
      <td>73</td>
      <td>120</td>
      <td>193</td>
    </tr>
    <tr>
      <th>Telemanom</th>
      <td>0</td>
      <td>193</td>
      <td>0</td>
      <td>193</td>
    </tr>
  </tbody>
</table>
</div>

#### SUPERVISED

<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>status</th>
      <th>Status.ERROR</th>
      <th>Status.OK</th>
      <th>Status.TIMEOUT</th>
      <th>ALL</th>
    </tr>
    <tr>
      <th>algo_input_dimensionality</th>
      <th>algorithm</th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th rowspan="3" valign="top">MULTIVARIATE</th>
      <th>MultiHMM</th>
      <td>98</td>
      <td>95</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>Normalizing Flows</th>
      <td>10</td>
      <td>66</td>
      <td>117</td>
      <td>193</td>
    </tr>
    <tr>
      <th>Hybrid Isolation Forest (HIF)</th>
      <td>0</td>
      <td>193</td>
      <td>0</td>
      <td>193</td>
    </tr>
  </tbody>
</table>
</div>

#### UNSUPERVISED

<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>status</th>
      <th>Status.ERROR</th>
      <th>Status.OK</th>
      <th>Status.TIMEOUT</th>
      <th>ALL</th>
    </tr>
    <tr>
      <th>algo_input_dimensionality</th>
      <th>algorithm</th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th rowspan="25" valign="top">UNIVARIATE</th>
      <th>SAND</th>
      <td>28</td>
      <td>140</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>VALMOD</th>
      <td>8</td>
      <td>160</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>Series2Graph</th>
      <td>4</td>
      <td>164</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>Left STAMPi</th>
      <td>1</td>
      <td>167</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>ARIMA</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>DSPOT</th>
      <td>0</td>
      <td>165</td>
      <td>3</td>
      <td>168</td>
    </tr>
    <tr>
      <th>DWT-MLEAD</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>FFT</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>GrammarViz</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>HOT SAX</th>
      <td>0</td>
      <td>119</td>
      <td>49</td>
      <td>168</td>
    </tr>
    <tr>
      <th>MedianMethod</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>NormA</th>
      <td>0</td>
      <td>158</td>
      <td>10</td>
      <td>168</td>
    </tr>
    <tr>
      <th>NumentaHTM</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>PCI</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>PST</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>PhaseSpace-SVM</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>S-H-ESD (Twitter)</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>SSA</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>STAMP</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>STOMP</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>Spectral Residual (SR)</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>Subsequence IF</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>Subsequence LOF</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>TSBitmap</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th>Triple ES (Holt-Winter's)</th>
      <td>0</td>
      <td>168</td>
      <td>0</td>
      <td>168</td>
    </tr>
    <tr>
      <th rowspan="14" valign="top">MULTIVARIATE</th>
      <th>DBStream</th>
      <td>160</td>
      <td>33</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>CBLOF</th>
      <td>0</td>
      <td>193</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>COF</th>
      <td>0</td>
      <td>193</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>COPOD</th>
      <td>0</td>
      <td>193</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>Extended Isolation Forest (EIF)</th>
      <td>0</td>
      <td>193</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>HBOS</th>
      <td>0</td>
      <td>193</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>IF-LOF</th>
      <td>0</td>
      <td>193</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>Isolation Forest (iForest)</th>
      <td>0</td>
      <td>193</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>KNN</th>
      <td>0</td>
      <td>193</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>LOF</th>
      <td>0</td>
      <td>193</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>PCC</th>
      <td>0</td>
      <td>193</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>Torsk</th>
      <td>0</td>
      <td>186</td>
      <td>7</td>
      <td>193</td>
    </tr>
    <tr>
      <th>k-Means</th>
      <td>0</td>
      <td>193</td>
      <td>0</td>
      <td>193</td>
    </tr>
    <tr>
      <th>normal</th>
      <td>0</td>
      <td>193</td>
      <td>0</td>
      <td>193</td>
    </tr>
  </tbody>
</table>
</div>

### Algorithm quality assessment based on ROC_AUC

ROC_AUC score distribution for each algorithm:

<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th>algorithm</th>
      <th>LSTM-AD</th>
      <th>Subsequence LOF</th>
      <th>PhaseSpace-SVM</th>
      <th>DWT-MLEAD</th>
      <th>SAND</th>
      <th>Donut</th>
      <th>GrammarViz</th>
      <th>EncDec-AD</th>
      <th>Left STAMPi</th>
      <th>Torsk</th>
      <th>Normalizing Flows</th>
      <th>STOMP</th>
      <th>STAMP</th>
      <th>k-Means</th>
      <th>VALMOD</th>
      <th>Series2Graph</th>
      <th>Telemanom</th>
      <th>Random Forest Regressor (RR)</th>
      <th>XGBoosting (RR)</th>
      <th>ImageEmbeddingCAE</th>
      <th>HealthESN</th>
      <th>Random Black Forest (RR)</th>
      <th>ARIMA</th>
      <th>PST</th>
      <th>NormA</th>
      <th>SSA</th>
      <th>Subsequence IF</th>
      <th>HOT SAX</th>
      <th>OceanWNN</th>
      <th>DeepAnT</th>
      <th>DBStream</th>
      <th>PCI</th>
      <th>Triple ES (Holt-Winter's)</th>
      <th>NumentaHTM</th>
      <th>LaserDBN</th>
      <th>FFT</th>
      <th>MedianMethod</th>
      <th>OmniAnomaly</th>
      <th>TSBitmap</th>
      <th>KNN</th>
      <th>Extended Isolation Forest (EIF)</th>
      <th>CBLOF</th>
      <th>Isolation Forest (iForest)</th>
      <th>HBOS</th>
      <th>Hybrid Isolation Forest (HIF)</th>
      <th>IF-LOF</th>
      <th>LOF</th>
      <th>Spectral Residual (SR)</th>
      <th>S-H-ESD (Twitter)</th>
      <th>DSPOT</th>
      <th>COF</th>
      <th>COPOD</th>
      <th>PCC</th>
      <th>Bagel</th>
      <th>RobustPCA</th>
      <th>SR-CNN</th>
      <th>normal</th>
      <th>TAnoGan</th>
      <th>TARZAN</th>
      <th>MultiHMM</th>
      <th>Hybrid KNN</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>min</th>
      <td>0.123730</td>
      <td>0.341819</td>
      <td>0.307866</td>
      <td>0.125859</td>
      <td>0.167172</td>
      <td>0.151962</td>
      <td>0.207808</td>
      <td>0.344264</td>
      <td>0.126879</td>
      <td>0.077172</td>
      <td>0.004679</td>
      <td>0.009910</td>
      <td>0.009910</td>
      <td>0.000000</td>
      <td>0.055046</td>
      <td>0.069038</td>
      <td>0.092208</td>
      <td>0.405782</td>
      <td>0.347727</td>
      <td>0.106465</td>
      <td>0.107862</td>
      <td>0.130278</td>
      <td>0.050505</td>
      <td>0.016049</td>
      <td>0.013301</td>
      <td>0.114735</td>
      <td>0.000020</td>
      <td>0.147374</td>
      <td>0.156114</td>
      <td>0.000095</td>
      <td>0.102123</td>
      <td>0.022453</td>
      <td>0.239234</td>
      <td>0.377848</td>
      <td>0.119141</td>
      <td>0.014141</td>
      <td>0.004040</td>
      <td>0.077511</td>
      <td>0.132703</td>
      <td>0.000000</td>
      <td>0.000000</td>
      <td>0.039293</td>
      <td>0.000051</td>
      <td>0.144394</td>
      <td>0.054343</td>
      <td>0.000101</td>
      <td>0.164697</td>
      <td>0.002450</td>
      <td>0.462366</td>
      <td>0.273283</td>
      <td>0.000000</td>
      <td>0.000051</td>
      <td>0.055375</td>
      <td>0.058306</td>
      <td>0.000000</td>
      <td>0.500000</td>
      <td>0.5</td>
      <td>0.000960</td>
      <td>0.000571</td>
      <td>0.047605</td>
      <td>0.000003</td>
    </tr>
    <tr>
      <th>mean</th>
      <td>0.965738</td>
      <td>0.929827</td>
      <td>0.910840</td>
      <td>0.896714</td>
      <td>0.891497</td>
      <td>0.887319</td>
      <td>0.883153</td>
      <td>0.877664</td>
      <td>0.873368</td>
      <td>0.872211</td>
      <td>0.869716</td>
      <td>0.867883</td>
      <td>0.865997</td>
      <td>0.860521</td>
      <td>0.853179</td>
      <td>0.852389</td>
      <td>0.851876</td>
      <td>0.851052</td>
      <td>0.845629</td>
      <td>0.841571</td>
      <td>0.839642</td>
      <td>0.808323</td>
      <td>0.808085</td>
      <td>0.796201</td>
      <td>0.780556</td>
      <td>0.762730</td>
      <td>0.755168</td>
      <td>0.727874</td>
      <td>0.725467</td>
      <td>0.716393</td>
      <td>0.708112</td>
      <td>0.690935</td>
      <td>0.668385</td>
      <td>0.664900</td>
      <td>0.650482</td>
      <td>0.641255</td>
      <td>0.641156</td>
      <td>0.639180</td>
      <td>0.634313</td>
      <td>0.607938</td>
      <td>0.604188</td>
      <td>0.602738</td>
      <td>0.597933</td>
      <td>0.594771</td>
      <td>0.592918</td>
      <td>0.583721</td>
      <td>0.573517</td>
      <td>0.567872</td>
      <td>0.557439</td>
      <td>0.552468</td>
      <td>0.550940</td>
      <td>0.536997</td>
      <td>0.532785</td>
      <td>0.524557</td>
      <td>0.516537</td>
      <td>0.502262</td>
      <td>0.5</td>
      <td>0.481889</td>
      <td>0.478378</td>
      <td>0.473171</td>
      <td>0.448738</td>
    </tr>
    <tr>
      <th>median</th>
      <td>0.996443</td>
      <td>0.995447</td>
      <td>0.976925</td>
      <td>0.970002</td>
      <td>0.983695</td>
      <td>0.967975</td>
      <td>0.989839</td>
      <td>0.999900</td>
      <td>0.980800</td>
      <td>0.974609</td>
      <td>0.994933</td>
      <td>0.987088</td>
      <td>0.987088</td>
      <td>0.996880</td>
      <td>0.958518</td>
      <td>0.939665</td>
      <td>0.975538</td>
      <td>0.882308</td>
      <td>0.880401</td>
      <td>0.939670</td>
      <td>0.913786</td>
      <td>0.842815</td>
      <td>0.884476</td>
      <td>0.858833</td>
      <td>0.926484</td>
      <td>0.836139</td>
      <td>0.837340</td>
      <td>0.754119</td>
      <td>0.746443</td>
      <td>0.798735</td>
      <td>0.775755</td>
      <td>0.657851</td>
      <td>0.653662</td>
      <td>0.634826</td>
      <td>0.653622</td>
      <td>0.591500</td>
      <td>0.561343</td>
      <td>0.654144</td>
      <td>0.621838</td>
      <td>0.605366</td>
      <td>0.585280</td>
      <td>0.558463</td>
      <td>0.583551</td>
      <td>0.584383</td>
      <td>0.576551</td>
      <td>0.556328</td>
      <td>0.531862</td>
      <td>0.544668</td>
      <td>0.500000</td>
      <td>0.501244</td>
      <td>0.516588</td>
      <td>0.526104</td>
      <td>0.508369</td>
      <td>0.550109</td>
      <td>0.500000</td>
      <td>0.500000</td>
      <td>0.5</td>
      <td>0.481301</td>
      <td>0.494000</td>
      <td>0.480316</td>
      <td>0.444118</td>
    </tr>
    <tr>
      <th>max</th>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>0.999928</td>
      <td>0.999992</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>0.999990</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>0.998586</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>0.999800</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>0.999600</td>
      <td>0.999650</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>0.998544</td>
      <td>0.998600</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>0.934293</td>
      <td>1.000000</td>
      <td>0.880000</td>
      <td>0.5</td>
      <td>0.999596</td>
      <td>0.999784</td>
      <td>1.000000</td>
      <td>1.000000</td>
    </tr>
  </tbody>
</table>
</div>

The following plot shows the ROC_AUC scores for each algorithm over its processed datasets using a box plot.
Note that some algorithms could execute only a fraction of the datasets.
We show the number of failed datasets in braces next to the algorithm name.'

<div>                            <div id="1c3e9b7b-a080-4248-aa69-8d4d96c10eea" class="plotly-graph-div" style="height:525px; width:100%;"></div>            <script type="text/javascript">                require(["plotly"], function(Plotly) {                    window.PLOTLYENV=window.PLOTLYENV || {};                                    if (document.getElementById("1c3e9b7b-a080-4248-aa69-8d4d96c10eea")) {                    Plotly.newPlot(                        "1c3e9b7b-a080-4248-aa69-8d4d96c10eea",                        [{"boxpoints":false,"name":"Hybrid KNN (0 errors)","type":"box","x":[0.3089252525252525,0.4797202020202021,0.9451121212121212,0.9364333333333332,0.4919444444444444,0.5636371453900709,0.3970198156682027,0.1338655886811521,0.2322121212121212,0.2161234408116031,0.7690194806150896,0.5056119427320487,0.3680009789049617,0.4593028912172496,0.5825088660439148,0.9997499749974996,0.4448448448448448,0.6669232323232324,0.789934888888889,0.7002150753768844,0.1579791578947368,0.6802242424242425,0.9671823232323232,0.9769282828282828,0.7649737373737373,0.5757796092796093,0.8093908163265306,0.4748884210526315,0.8019222222222222,0.6089868686868686,0.6271434343434342,0.4889494949494949,1.0,0.8979979797979798,0.6785868686868688,0.195930303030303,0.1268262626262626,0.9489080808080808,0.0001636363636363,0.0019484848484848,0.0004515151515151,0.0177292929292929,0.0001292929292928,0.5806943262411347,0.0895559907834101,0.6909776462378787,4.14141414141389e-05,0.0019428571428571,0.0041491408934707,0.0027954383761863,0.0811458435897962,0.1527609062325922,0.2514253914858716,0.2139417534350556,0.3237882476233982,1.0,0.8042642642642643,0.3254166666666667,0.5107588333333334,0.788619095477387,0.4047985263157894,0.1104484848484848,0.0953898989898989,0.0601686868686868,0.1544959595959596,0.1301888888888888,3.0303030303024947e-06,0.0027845555555555,8.622448979591579e-05,0.0006397894736842,0.1801474747474747,0.516770707070707,0.621739898989899,0.999841414141414,1.0,0.0001090909090909,0.0201121212121212,7.070707070705451e-06,0.0004292929292928,1.919191919191765e-05,0.0192262626262626,0.333010606060606,0.8000131313131312,0.157440404040404,0.2311111111111111,0.6521171717171717,0.6658737373737373,0.6460044758654029,0.1676304964539007,0.3617334392069106,0.9230923092309232,0.3238700978896758,0.8809463246071917,0.6411329866181361,0.4654856763705903,1.0,0.0262362362362362,0.2256242424242424,0.5971061111111111,0.8635919597989951,0.4001753684210526,0.1308525252525252,0.5245413404295873,0.3650627551020408,0.5433054736842106,0.2042424242424242,0.0879414141414141,0.1147525252525252,0.9990499049904992,0.1854575757575757,0.9126454545454544,0.2335060606060606,0.066060606060606,0.8677272727272727,0.6653010101010102,0.2441646464646464,0.2759181818181818,0.4382353535353535,0.5104851063829787,0.5314587765957446,0.6251127312976731,1.0,0.9513922298381974,0.7698902162318321,0.6921626677271591,0.5021865588139247,0.2754591879510796,1.0,0.9306206206206206,0.4151434343434343,0.8094973333333333,0.221851256281407,0.0675046315789473,0.0568131313131313,0.2296881151428287,0.4930984693877551,0.2598633684210526,0.1419333333333333,0.5877858585858586,0.6388252525252526,0.5164868686868688,1.0,0.9218868686868686,0.5723262626262626,0.5964323232323233,0.9376656565656566,0.2504530303030303,0.3927222222222222,0.1500060606060606,0.6612171717171718,0.3351353535353535,0.5710273049645391,0.2140188940092166,0.7191087369763467,5.2525252525250645e-05,0.4999892857142857,0.3338391752577319,0.3378018900465473,0.4441175943358605,0.5376397431476662,0.4174462059570021,0.240845617286782,0.4287926047435814,0.9999499949995,0.9957457457457456,0.1769959595959596,0.0125496666666666,0.000180904522613,0.9668077894736844,0.0219979797979798,0.6188262626262626,0.4804444444444444,0.6665101010101011,0.1541242424242424,0.7383272727272727,0.433189898989899,0.5836464646464646,0.0864353535353535,0.1134255245361539,0.13835,0.1143623157894736,0.2613575757575758,0.4622666666666666,0.559179797979798,0.9999868686868688,1.0,0.029380808080808,0.5500555555555556,0.9999838383838384,0.0003787878787878,0.337589898989899,0.2563636363636363,0.9033737373737374]},{"boxpoints":false,"name":"MultiHMM (98 errors)","type":"box","x":[null,0.756619191919192,0.7797909090909091,0.7726601010101011,0.3480560606060606,null,null,null,0.7185575757575757,null,null,null,0.2546709068562056,0.3657433002192268,null,null,null,null,0.4901905555555556,null,null,null,1.0,null,null,null,null,0.6286491578947369,null,null,0.6481656565656566,0.7506585858585858,null,0.1716767676767677,null,null,null,null,null,null,null,null,0.7157373737373738,null,null,0.2889747106523255,null,0.4754265306122449,null,0.5492991879493005,null,null,0.5007507790594071,0.5769248116044567,null,0.0476047604760476,0.6090740740740741,null,0.305186611111111,null,null,0.4993762626262626,null,null,null,0.3446979797979797,null,null,null,null,null,null,null,null,1.0,null,null,null,null,null,null,null,0.3351515151515151,0.2204545454545454,0.167070707070707,0.0732323232323232,0.4215656565656566,0.6115763645715431,0.1545035460992907,0.4739757934502756,null,null,0.5496804171813654,0.4721516312090262,0.2757430831713299,null,0.7194894894894894,0.4998045454545454,0.0969573888888889,0.0798994974874371,0.5254506315789473,0.3810606060606061,0.4911285643964698,0.2451020408163265,0.4647410526315789,0.3623782828282828,0.3566792929292929,null,null,0.8531237373737374,0.997979797979798,0.3068727272727272,0.5868979797979798,0.1016666666666666,0.3288888888888889,0.4283797979797979,null,0.5190404040404041,0.591095744680851,0.4866445921985816,null,null,null,null,null,null,0.5091409979283459,0.5958595859585958,0.2251051051051051,0.5817737373737373,0.1414698333333333,0.5430864321608041,null,0.4643348484848484,null,null,null,null,null,null,0.8933151515151515,1.0,null,null,null,null,null,null,null,null,null,null,null,0.5085690223537621,null,0.4803158163265306,0.4490957044673539,0.4594913199600328,0.5605550661319407,null,null,0.5360849010653976,null,null,0.1955705705705705,0.4425732323232322,null,0.3772010050251256,0.5743624210526316,0.4917838383838384,0.5403414141414141,0.4599853535353536,0.5156868686868687,0.3531661616161616,0.4759732323232323,0.3918929292929293,0.4568565656565656,null,null,null,null,0.5287858585858586,0.3490712121212121,0.6809666666666667,null,0.1739173917391738,0.5436080808080808,0.161760606060606,0.4452555555555555,0.3909787878787878,0.5412626262626262,0.5693747474747475,0.5657747474747474]},{"boxpoints":false,"name":"TARZAN (33 errors)","type":"box","x":[null,null,null,null,null,null,0.5635582181259602,0.486514593710147,0.3782828282828283,null,0.8565444032008548,0.5290215554639842,0.6843373127759826,0.5633347474962697,0.5842872086615225,null,0.5855455455455455,0.2858075757575757,0.1580133888888888,0.1968643216080402,0.1107136842105263,0.729238888888889,0.9581515151515152,null,0.8391606060606063,0.5923539072039072,0.8812826530612246,0.483938,0.8585671717171717,0.6448641414141415,0.2903419191919192,0.353340404040404,null,0.4382237373737374,0.2366252525252525,0.7818166666666667,0.0852277777777777,0.4211686868686868,null,null,null,null,null,0.4392310283687943,0.6688315668202764,0.6561269520440819,0.0101272727272727,0.5963528061224489,0.3671123711340206,0.7698063882326465,0.5982948660227752,0.3624519568085642,0.5069399707796295,0.180375568431192,0.671209783834996,null,0.1479429429429429,0.3793585858585858,0.7882920555555555,0.8196773869346734,0.0308484210526315,0.6253868686868687,0.640349494949495,0.6454959595959595,0.6558818181818182,0.6346535353535354,0.9839464646464646,0.9305822222222222,0.9988913265306122,0.9711492631578948,0.0257575757575757,0.5956691919191919,0.3848136363636363,0.0614070707070707,null,0.9992434343434344,0.0026222222222222,0.2860565656565657,0.9952060606060606,0.0043676767676767,0.0013060606060605,0.848489898989899,null,null,null,null,null,0.2980084278025373,0.2948219858156028,null,null,0.259678695417779,null,0.3488068948437673,0.143789006492,null,0.0005705705705706,null,null,null,null,0.4257969696969697,0.3393317467925289,0.6310698979591837,0.6482281052631579,null,null,0.1938888888888889,null,null,null,null,null,null,null,null,null,null,null,0.7080156914893616,0.7240949012247648,null,null,0.815086725775145,0.8259336938869952,null,0.116978591506323,null,0.0055055055055054,0.730080303030303,0.2619456666666667,0.0014492462311557,0.1761710526315789,null,0.6542474072641901,null,0.2355657894736842,0.6292141414141413,null,0.5083883838383838,0.0030050505050504,null,0.997389393939394,0.033440404040404,0.0005868686868686,0.2971585858585858,null,null,null,null,null,0.4939998226950354,0.6347229646697388,0.6893264996751607,0.1156858585858585,0.2070339285714285,0.5021256013745705,0.4297725319492128,0.6288634336650301,0.646863447544326,0.7276661993318901,0.65595237565618,0.60829360625015,null,0.1133433433433433,0.2085222222222222,0.3490335555555555,0.6769849246231157,0.9899164210526316,0.9997838383838384,0.8772838383838385,0.0136646464646464,0.1056555555555555,0.3605212121212121,0.7818641414141414,0.977469696969697,0.7285858585858587,0.159259595959596,0.1262805758011377,0.3318637755102041,0.1826265263157895,0.2498040404040404,0.5331762626262626,0.4935575757575757,0.7842878787878788,null,0.0063555555555555,0.9975232323232324,0.4207666666666667,0.6963525252525252,0.0033232323232323,0.4177020202020202,0.4855646464646465]},{"boxpoints":false,"name":"TAnoGan (120 errors)","type":"box","x":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,0.0506565656565656,0.2764646464646464,0.4162626262626262,0.3744444444444444,0.3729292929292929,null,0.378300153609831,0.277189056522053,0.0009595959595959,0.3019132653061225,0.184381443298969,0.3481211372614706,0.3500142497179283,0.2809696955179019,null,null,0.4157517121426242,0.5005000500050005,0.4044044044044044,0.4671717171717171,0.5064722222222222,0.5342713567839196,0.4319684210526315,null,null,null,null,null,0.6098060606060606,0.3837348888888888,0.3130622448979592,0.4813014736842105,0.4271717171717171,0.4668686868686869,0.3698989898989899,0.6694505050505051,0.6117111711171117,0.1430949494949495,0.8731838383838384,0.4698949494949495,0.6518505050505051,0.0371393939393939,0.5094060606060606,0.4044727272727272,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,0.4622868686868687,0.5208080808080808,0.5808808080808081,0.7012686868686868,0.4266989898989899,null,0.6345597542242702,0.5947809138814697,null,0.8707428571428572,null,null,null,0.5812691912732068,null,null,0.6354508625279386,0.9985498549854984,0.7797797797797797,0.6297979797979798,0.5700055555555554,0.3256281407035176,0.6443052631578947,0.0009595959595959,0.94989898989899,0.0009595959595959,0.4983838383838384,0.5635353535353536,null,0.7162626262626263,0.6823232323232323,0.6478383838383838,0.613429020511587,0.6313224489795918,0.4107233684210525,0.5074020202020202,0.0530020202020201,null,0.6980808080808081,0.4764976497649765,null,0.7720202020202019,0.9995959595959596,0.5498989898989899,0.0012626262626262,0.4241414141414141,0.7283333333333334]},{"boxpoints":false,"name":"normal (0 errors)","type":"box","x":[0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5]},{"boxpoints":false,"name":"SR-CNN (0 errors)","type":"box","x":[null,null,null,null,null,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,null,null,null,null,null,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,null,null,null,null,null,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,null,null,null,null,null,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,null,null,null,null,null,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.88,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5]},{"boxpoints":false,"name":"RobustPCA (0 errors)","type":"box","x":[0.9306070707070708,0.3489757575757575,0.2682262626262626,0.0871959595959596,0.6301131313131314,0.3028097517730497,0.4631847926267281,0.5221834019105368,0.5616808080808081,0.4300644429530336,0.3039760885337574,0.6807140784798514,0.7931798278031352,0.6391524772331323,0.5363178969547331,0.5,0.5,0.5,0.4772424444444444,0.5,0.5756101052631578,0.3276434343434343,0.967850505050505,0.9985616161616162,0.8860222222222224,0.6381472527472527,0.5871295918367347,0.4707138947368421,0.5,0.7391616161616161,0.5,0.5137373737373738,0.5,0.5,0.5497414141414141,0.5340909090909091,0.490050505050505,0.4728787878787879,0.5032414141414141,0.5725838383838384,0.6088757575757575,0.579231313131313,0.6713474747474748,0.594643085106383,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5407665898657226,0.5,0.5,0.5,0.5,0.5,0.5,0.5003929292929292,0.439820202020202,0.4077262626262626,0.457350505050505,0.4881454545454545,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.4066696969696969,0.317050505050505,0.4232999999999999,0.0927747474747474,0.2745737373737373,0.6711285311733635,0.636968085106383,0.5,0.926042604260426,0.7230038237685775,0.5771535221128767,0.678535376630601,0.3983450842629856,0.0,0.5,0.5,0.5,0.5,0.5,0.5584343434343435,0.4744642186317381,0.3562244897959183,0.4857237894736842,0.5,0.7481818181818182,0.5,0.5,0.5,0.5,0.5,0.5,0.4365686868686869,0.3444434343434343,0.8718494949494949,0.2909111111111111,0.3200252525252525,0.5,0.7530136524822695,0.629232657186169,0.03005300530053,0.5,0.5,0.4654358653955831,0.5,0.5,1.0,0.8180580580580581,0.5,0.5837777777777778,0.3132060301507538,0.5671581052631578,0.436699494949495,0.5,0.4070010204081632,0.3119871578947368,0.5,0.5444474747474747,0.5,0.3251020202020201,1.0,0.5,0.6792424242424242,0.5984969696969696,0.5,0.5020353535353536,0.5020808080808081,0.5323848484848486,0.477769696969697,0.4911373737373737,0.4984179078014183,0.5156831029185868,0.4164797035539834,0.5053287878787879,0.5,0.5,0.4983532569545992,0.5169010487636518,0.5,0.5481668773949935,0.5,0.5,1.0,0.4636186186186187,0.5103616161616162,0.4474289444444444,0.6026643216080402,0.4405073684210526,0.8194444444444444,0.0050030303030302,0.3603035353535353,0.5488818181818181,0.287430303030303,0.4414227272727273,0.5024585858585858,0.5160222222222222,0.4973353535353535,0.4958486457057302,0.496030612244898,0.4982475789473684,0.4527020202020202,0.492149494949495,0.4872949494949495,0.7372212121212122,1.0,0.4969636363636363,0.6342171717171717,0.7759040404040403,0.4937111111111111,0.0264797979797979,0.5032575757575758,0.5876863636363636]},{"boxpoints":false,"name":"Bagel (0 errors)","type":"box","x":[null,null,null,null,null,0.5078840425531914,0.4491275729646697,0.4982554921918237,0.3137262626262626,0.3857615380691519,0.5500398812143995,0.5081650367078978,0.4495041695687856,0.6100020193322168,0.5446607323078764,0.4197419741974197,0.5586486486486486,0.5516237373737374,0.4503873333333332,0.5156864321608041,0.4846296842105263,0.7024515151515152,0.4996070707070707,0.5201979797979799,0.6919636363636362,0.519230525030525,0.4364619897959184,0.4328464210526315,0.456020202020202,0.3081444444444444,0.599749494949495,0.479859595959596,0.0583058305830582,0.4692515151515152,0.6119666666666667,0.4449646464646465,0.6110343434343434,0.4442727272727272,null,null,null,null,null,0.6243722517730497,0.5712944700460829,0.6183940903294112,0.6440909090909092,0.7013683673469387,0.6337560137457046,0.6644336728210156,0.6002181233030561,0.6148087024183027,0.700495096391286,0.6286618489647853,0.620232291980931,0.7181718171817182,0.6586986986986986,0.525669696969697,0.6097326111111111,0.6119698492462312,0.6454913684210526,0.5831313131313132,0.5828616161616161,0.5944535353535354,0.6182626262626263,0.633258585858586,0.6154949494949494,0.6214052222222222,0.6207757653061223,0.6041765263157894,0.5413414141414142,0.4895949494949494,0.654229292929293,0.5871777777777778,0.8177817781778178,0.611430303030303,0.6391323232323233,0.5921838383838384,0.6371070707070706,0.6683969696969697,0.2241318181818181,0.6575767676767678,null,null,null,null,null,0.3084588071531314,0.3741620567375886,0.7015654852137925,0.2418241824182417,0.3789181625506727,0.3189865043595168,0.2170727605236557,0.4547218784999165,0.592959295929593,0.4527727727727728,0.8757151515151516,0.2739947777777778,0.2181889447236181,0.2848267368421052,0.4066262626262626,0.3740951952240927,0.4500920918367347,0.4054593684210526,0.6416737373737373,0.7479858585858585,0.3910191919191919,0.1847184718471847,0.6197590909090909,0.2342949494949495,0.3397050505050505,0.4064818181818182,null,null,null,null,null,0.6383964539007092,0.3632094858156028,0.2279419620298852,0.4331433143314331,0.2702833269487167,0.5009118607391657,0.4399576762203453,0.4447143418669702,0.515569660762694,0.4565456545654566,0.516926926926927,0.3172262626262626,0.6851528888888889,0.3705929648241206,0.8007541052631578,0.8105888888888888,0.2273651957178703,0.4563372448979592,0.2566402105263158,0.7069676767676767,0.1811747474747475,0.3759959595959595,0.5429070707070707,0.4773477347734773,0.9085949494949496,0.5890090909090908,0.8233838383838386,0.2653545454545454,null,null,null,null,null,0.550797695035461,0.3994068356374808,0.5234283789311581,0.504929797979798,0.6204474489795919,0.5629082474226804,0.5274931586946491,0.5530390868333905,0.5583565997807522,0.585394738479148,0.5890725138944733,0.5534853636454812,0.9342934293429344,0.6887087087087087,0.5519984848484849,0.5703856111111111,0.5501778894472361,0.536738,0.7074383838383838,0.5414414141414141,0.5348388888888889,0.4822101010101011,0.471870707070707,0.6079717171717172,0.5468252525252526,0.5595565656565656,0.5906838383838384,0.575354060738611,0.5871420918367347,0.5919987368421054,0.6027474747474747,0.454510606060606,0.4938868686868687,0.5331454545454546,0.4375437543754376,0.5575808080808081,0.6579727272727273,0.5750929292929292,0.6326318181818184,0.5997333333333333,0.1912984848484848,0.6619585858585858]},{"boxpoints":false,"name":"PCC (0 errors)","type":"box","x":[0.4326565656565657,0.7390474747474748,0.8980878787878789,0.3548282828282828,0.584920202020202,0.3663622340425532,0.497631950844854,0.1378127481411968,0.3874858585858586,0.557674092492591,0.677568885849353,0.4138392867847115,0.7786864228116033,0.4507721056465865,0.4676075392309055,1.0,0.6189389389389389,0.2201656565656565,0.4489056666666666,0.3524462311557789,0.4117915789473684,0.6341686868686869,0.8780404040404041,0.9985616161616162,0.8821313131313131,0.4362059829059829,0.5860280612244899,0.4188364210526315,0.2579636363636364,0.8426939393939393,0.4257232323232323,0.6332090909090909,1.0,0.8867050505050506,0.2222484848484848,0.5039393939393939,0.4975363636363636,0.3178373737373737,0.5383111111111111,0.5631787878787878,0.6068515151515153,0.6246494949494951,0.589029292929293,0.3469031914893616,0.4949305683563748,0.3023210375610577,0.3866535353535353,0.4462836734693877,0.4089027491408935,0.5738732526797468,0.4582940502686403,0.4126657727812088,0.4439678239569155,0.4158924333280817,0.4399349166623577,1.0,0.4362662662662662,0.4476979797979798,0.5094705555555555,0.5111738693467337,0.4901650526315789,0.4658525252525252,0.5351373737373737,0.5709474747474748,0.5138636363636364,0.4802757575757576,0.5277323232323232,0.4973424444444444,0.5207698979591837,0.4682804210526315,0.4328222222222222,0.7802838383838384,0.3275797979797979,0.5475565656565656,1.0,0.5602101010101009,0.1923929292929292,0.5014181818181819,0.4973111111111111,0.4831939393939394,0.5367222222222222,0.4636313131313131,0.8978626262626263,0.6003757575757576,0.5715888888888888,0.8699717171717171,0.8740606060606061,0.429263236004999,0.6180524822695036,0.4785543444259967,1.0,0.5238572953163586,0.6684898804274373,0.5366289431489152,0.7309331110186821,1.0,0.2236736736736736,0.4544262626262626,0.070339,0.8812341708542714,0.5019726315789473,0.7153191919191919,0.586417819715422,0.8282836734693878,0.516044,0.221560606060606,0.6137373737373737,0.2237858585858586,0.4302430243024302,0.0553747474747474,0.9685323232323232,0.0929484848484848,0.3318747474747475,0.821379797979798,0.514559595959596,0.4570494949494949,0.100440404040404,0.3607151515151515,0.3634299645390071,0.4654858156028369,0.7765884645925071,1.0,0.3235840403921188,0.0898502690141496,0.4575195100087381,0.5114952487517533,0.5083688817753481,0.9606960696069607,0.8843843843843844,0.4185949494949494,0.2431616666666666,0.4764562814070351,0.3267172631578947,0.4816858585858585,0.2888898696148222,0.3144658163265306,0.3413216842105263,0.4090636363636364,0.9104898989898992,0.192950505050505,0.7860434343434344,0.8798879887988799,1.0,0.4412121212121211,0.2194171717171717,0.3010919191919192,0.4616959595959596,0.526558585858586,0.4827707070707071,0.6661393939393939,0.5246434343434343,0.5341062056737589,0.5394090629800308,0.4835381024567481,0.5134050505050505,0.5617198979591838,0.5749371134020618,0.5745812751186118,0.5507748495206405,0.5314327655878894,0.5297780120931621,0.5302240558132201,0.5098567544998581,1.0,0.1690590590590591,0.5186292929292929,0.5186191111111111,0.4760603015075377,0.5232387368421052,0.5000505050505051,0.4989171717171717,0.4954787878787878,0.4771212121212121,0.4801303030303031,0.5823838383838383,0.5621868686868687,0.4422787878787879,0.5169323232323232,0.5216037297862701,0.5123178571428572,0.5134237894736842,0.4811272727272727,0.8043868686868687,0.4856535353535353,0.6443323232323233,0.7438743874387439,0.5017323232323232,0.4492161616161616,0.5622141414141414,0.5472181818181818,0.4993373737373737,0.4761787878787878,0.5159838383838384]},{"boxpoints":false,"name":"COPOD (0 errors)","type":"box","x":[0.5702181818181818,0.6683666666666666,0.903921212121212,0.1922959595959595,0.3223343434343434,0.6424489361702127,0.2079038402457757,0.717011477658269,0.2150222222222222,0.246963639691578,0.5548294348240429,0.4079070726543374,0.3937029496266625,0.3547298497015864,0.555602261648892,0.99009900990099,0.5395795795795796,0.7943777777777778,0.5050953888888888,0.6553668341708542,0.6452993684210526,0.3402121212121212,0.9665121212121212,0.921769191919192,0.8696979797979798,0.5954156288156288,0.8146704081632653,0.5112355789473684,0.8187606060606062,0.4985383838383838,0.4538227272727272,0.5327757575757576,0.99004900490049,0.8692222222222223,0.4551727272727273,0.0596969696969696,0.2104040404040404,0.8964636363636364,0.548379797979798,0.5607676767676768,0.5923121212121212,0.508720202020202,0.5996171717171718,0.596982269503546,0.52629178187404,0.7691219711735123,0.4959575757575757,0.489359693877551,0.5147556701030928,0.548850122919135,0.5650547035889805,0.5957385155996041,0.5376434884654242,0.5337380010643391,0.5383258289894454,1.0,0.7898998998998998,0.6553060606060606,0.6370079444444444,0.653129648241206,0.6342054736842105,0.1416252525252525,0.1816343434343434,0.2095262626262626,0.1709272727272727,0.1816454545454545,0.4769161616161616,0.4897665555555555,0.4910668367346938,0.5353393684210526,0.3518323232323231,0.5204464646464646,0.6561848484848486,0.5000691919191919,1.0,0.4587242424242425,0.8277505050505052,0.4792767676767677,0.530309090909091,0.2541525252525252,0.3768171717171717,0.6782606060606061,0.936338383838384,0.4645191919191919,0.7999181818181819,0.8084292929292929,0.8093737373737374,0.6680445574832579,0.148902659574468,0.0280266608917442,0.99004900490049,0.1734293593012195,0.9506313214009552,0.6469158549413767,0.522830074516802,0.99004900490049,0.2092992992992993,0.062620707070707,0.7639504444444444,0.8608884422110553,0.105270947368421,0.3073914141414141,0.5784617717379839,0.5042875,0.5448415789473684,0.5282737373737374,0.122180808080808,0.5478181818181818,0.9750975097509752,0.373529292929293,0.999999494949495,0.6001444444444445,0.1397181818181818,0.68460101010101,0.3356585858585859,0.847360606060606,0.0481888888888888,0.3748878787878787,0.3555970744680851,0.210908865248227,0.3670348179696335,1.0,0.690172224617148,0.7664143818107138,0.6038713790064324,0.3536321452852918,0.4680848850777233,0.99004900490049,0.6267167167167168,0.3454676767676767,0.4194166666666666,0.3626371859296482,0.2625598947368421,0.3212363636363636,0.5149058666558319,0.3653946428571428,0.4362068421052631,0.394150505050505,0.682120707070707,0.6576777777777778,0.394710101010101,0.99004900490049,0.932429797979798,0.2805050505050505,0.2948363636363636,0.8710747474747473,0.4540131313131313,0.5336303030303029,0.5419535353535354,0.663249494949495,0.5261040404040405,0.535650975177305,0.4848810291858679,0.5101022642508242,0.4908959595959596,0.6909183673469388,0.6317067010309279,0.6152079588983898,0.6014288946869205,0.614334127828142,0.5253055755138349,0.5088896402432486,0.5258428594868437,1.0,0.6557257257257257,0.5100772727272728,0.5042995555555556,0.498051256281407,0.5264102105263158,5.050505050502308e-05,0.0384828282828282,0.0943979797979797,0.2252272727272727,0.3211797979797979,0.5127868686868686,0.5042212121212121,0.5316838383838384,0.462660606060606,0.4691828600248727,0.4597872448979592,0.4590514736842105,0.5358186868686869,0.464539898989899,0.5191949494949495,0.7309075757575757,1.0,0.4968272727272727,0.702937373737374,0.7342535353535353,0.4648373737373737,0.0678464646464646,0.4834555555555555,0.5116919191919191]},{"boxpoints":false,"name":"COF (0 errors)","type":"box","visible":"legendonly","x":[0.4762777777777778,0.4142282828282828,0.4778838383838384,0.5719949494949494,0.6081626262626263,0.5835323581560283,0.1372253456221198,0.473736134170697,0.4877383838383838,0.4585386662719206,0.4798456437071708,0.4151455487927481,0.3807800012418169,0.3963265174041852,0.4345540529942736,1.0,0.3672722722722722,0.6298722222222222,0.5194567777777779,0.5070984924623114,0.5708155789473685,0.5484777777777777,0.5140818181818182,0.5036186868686869,0.4879611111111111,0.4873641025641025,0.4425931122448979,0.4825738947368421,0.5164611111111111,0.552940404040404,0.4601373737373737,0.4705398989898989,1.0,0.482120202020202,0.5388429292929293,0.0,0.4983712121212121,0.6822444444444444,0.5927787878787879,0.8253787878787879,0.8188767676767676,0.8515757575757577,0.939570707070707,0.5355258865248227,0.5346787250384024,0.4865713804470752,0.5069328282828283,0.529736224489796,0.5044463917525773,0.530557145494672,0.5318694876518465,0.5055566307116266,0.5314241133380742,0.5317367274777909,0.5135646155969567,1.0,0.5545945945945946,0.5317353535353535,0.521652,0.5733829145728643,0.5393586315789474,0.5885313131313131,0.4753924242424242,0.4989727272727272,0.5020808080808081,0.4723494949494949,0.4883949494949495,0.5137565555555555,0.5115852040816327,0.4941323157894737,0.5384666666666666,0.4592338383838383,0.4701954545454545,0.5609914141414141,1.0,0.4885363636363636,0.5647944444444444,0.5413035353535354,0.5130277777777777,0.4887045454545455,0.6006368686868687,0.5472474747474747,0.4946616161616161,0.4315909090909091,0.5810090909090909,0.4712292929292929,0.4627282828282828,0.5770554052301452,0.4923401595744681,0.510737505714767,1.0,0.4925380001380278,0.6013290014871047,0.5404632939861937,0.5519398971058653,1.0,0.4475575575575575,0.410920707070707,0.5064166666666667,0.5537477386934673,0.5040747368421052,0.4755868686868687,0.566902003038608,0.5793946428571428,0.5828117894736842,0.4870439393939394,0.5367691919191919,0.4886247474747474,0.9753975397539754,0.4618636363636363,0.5006252525252525,0.4849136363636364,0.5323005050505051,0.4778424242424243,0.4792686868686868,0.4568707070707071,0.535429292929293,0.6267474747474748,0.3837318262411347,0.1532471631205673,0.47492576818499,1.0,0.6810593929379806,0.4557039275507349,0.3596159689031886,0.3448799347604527,0.3143900639609296,1.0,0.6618018018018018,0.4591257575757576,0.5354544444444445,0.4944422110552764,0.5574465263157895,0.3190434343434343,0.4733462041936774,0.3470775510204081,0.488580947368421,0.4655676767676767,0.6141757575757576,0.4695752525252525,0.4873732323232322,1.0,0.6110232323232324,0.0,0.6307323232323232,0.6529580808080808,0.4752979797979798,0.90460101010101,0.8847626262626264,0.9271717171717172,0.9239272727272728,0.5645804964539007,0.5213081413210445,0.6162737313217354,0.5165878787878788,0.6621882653061224,0.5741034364261168,0.6098686750252365,0.5875445774562448,0.5656445819803703,0.5752751132178759,0.5549921079667579,0.5512350783392702,1.0,0.5397897897897899,0.6100555555555556,0.5635466666666666,0.5913668341708542,0.581920105263158,5.050505050502308e-05,0.4911292929292929,0.4715782828282828,0.4605328282828282,0.4701712121212121,0.5142520202020202,0.5290010101010101,0.5406813131313132,0.5058434343434344,0.5051683918140104,0.4817334183673469,0.5143142105263158,0.59585,0.5156202020202021,0.5504156565656566,0.7644333333333333,1.0,0.5294717171717171,0.7388999999999999,0.5327853535353535,0.5081383838383838,0.5158722222222223,0.4756863636363636,0.5351439393939393]},{"boxpoints":false,"name":"DSPOT (3 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.5320921985815603,0.3726497695852534,0.4996462860030318,0.4751010101010101,0.4820183856955248,0.5775495418102873,0.4979379317455408,0.4475466194395249,0.5161094801658921,0.6021318867957596,0.9986498649864988,0.4969469469469469,0.5622727272727273,0.5208333333333334,0.5335678391959799,0.5562105263157896,0.4498989898989899,0.9415151515151516,0.7617676767676768,0.4318181818181818,0.4857020757020757,0.6033673469387756,0.4877894736842105,0.5296969696969697,0.6173232323232323,0.4514141414141414,0.4996464646464646,0.9957495749574958,0.4896969696969697,0.4991919191919192,0.4956060606060606,0.4797979797979798,0.5932323232323232,null,null,null,null,null,0.492482269503546,0.5018356374807987,0.4972328496835823,0.4914646464646465,0.505204081632653,0.4953951890034364,0.5024917799862232,0.4992545202261561,0.5012443793327127,0.4970653053861538,0.4989992481513282,0.5012119321985685,0.9922492249224922,0.5425425425425425,0.5022727272727272,0.4952222222222222,0.5026130653266332,0.4950526315789473,null,0.4937373737373737,0.5174747474747475,0.5156060606060606,0.5367676767676768,0.4958080808080808,0.5006666666666666,0.5,0.5011052631578947,0.4956060606060606,0.4996969696969697,0.4956060606060606,0.5413636363636364,0.9962496249624962,0.5011111111111112,0.5187878787878788,0.5121717171717172,0.507020202020202,0.4953535353535354,0.4993434343434343,0.5047474747474747,null,null,null,null,null,null,0.4100531914893617,0.4999494694290045,0.4184918491849185,0.4242857814420698,0.6743481795025282,0.7550185843045093,0.4164496301698093,1.0,0.4993993993993994,0.4996969696969697,0.4998888888888889,0.5,0.4999473684210526,0.4164646464646465,0.5595325225443624,0.418265306122449,0.5208947368421053,0.499949494949495,0.4998989898989899,0.4996464646464646,0.4997499749974997,0.499949494949495,0.9991919191919192,0.4457070707070707,0.4998989898989899,null,null,null,null,null,0.5813120567375887,0.6563297872340426,0.4971702880242546,0.6375137513751374,0.592888170522275,0.5,0.6934105273037361,0.591005557260095,0.5,0.569056905690569,0.5878378378378378,0.5966666666666667,0.5932222222222222,0.5681909547738693,0.6121578947368421,0.6094949494949495,0.5,0.4558163265306122,0.5,null,0.4765656565656566,0.2732828282828283,0.6275252525252526,0.8415841584158416,0.6241919191919192,0.3082828282828282,0.5763636363636364,0.5,null,null,null,null,null,0.559131205673759,0.5166129032258064,0.5935200558242498,0.4985858585858586,0.6808163265306122,0.620893470790378,0.6272998312323872,0.6154880534885311,0.6116690715841714,0.5973938115855479,0.5834950117348834,0.5381300605463955,0.9984498449844984,0.5476976976976977,0.5628282828282828,0.5655555555555555,0.5586934673366835,0.5769473684210525,0.4990909090909091,0.4986363636363636,0.4982828282828282,0.4988888888888889,0.4987878787878788,0.4973232323232323,0.5072727272727272,0.5233838383838384,0.4975757575757575,0.501457588690566,0.4986734693877551,0.5005789473684211,0.5334343434343435,0.4985858585858586,0.5386868686868687,0.7391919191919192,0.997999799979998,0.4983838383838384,0.7461111111111111,0.4988888888888889,0.4983333333333333,0.4988383838383838,0.5141919191919192,0.5683333333333334]},{"boxpoints":false,"name":"S-H-ESD (Twitter) (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.5577741134751772,0.4623655913978494,0.5,0.494949494949495,0.4999494898474593,0.5023027529969298,0.486246998097896,0.4791644963016981,0.5025741757878076,0.556076079180725,1.0,0.5,0.5,0.5,0.5,0.5,0.494949494949495,0.525249494949495,0.494949494949495,0.494949494949495,0.5056240537240537,0.4897959183673469,0.4736842105263158,0.4998484848484849,0.5,0.5,0.5,1.0,0.5,0.5,0.5,0.5,0.5,null,null,null,null,null,0.5,0.4985653609831029,0.5092316946991025,0.6169212121212121,0.6127132653061225,0.6953733676975945,0.6659881023457225,0.6535781860070108,0.6907387456900075,0.6988547477083182,0.673805521707962,0.6825189569674498,1.0,0.4994994994994995,0.5000095959595959,0.4969489444444444,0.4974874371859296,0.5008208421052632,0.5,0.5,0.5,0.5,0.5,0.4999540404040404,0.4974170555555556,0.4974293367346938,0.5019434736842107,0.5,0.5,0.5,0.5255363636363637,1.0,0.5000156565656566,0.5153444444444445,0.5051363636363636,0.5050373737373738,0.494949494949495,0.494949494949495,0.5050616161616162,null,null,null,null,null,0.5,0.5,0.5,1.0,0.504950495049505,0.5024875621890548,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,null,null,null,null,null,0.5,0.5,0.5,1.0,0.504950495049505,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,null,null,null,null,null,0.5,0.5,0.5380952380952381,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,1.0,0.6498998998998999,0.625,0.6045,0.6599658291457288,0.6139587368421053,0.9,0.9,0.8249792929292928,0.54489898989899,0.5047969696969696,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.81,1.0,0.8299262626262627,1.0,0.6950000000000001,0.885,0.894989393939394,0.5,0.6]},{"boxpoints":false,"name":"Spectral Residual (SR) (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.5374764184397163,0.450129262672811,0.4295185158449433,0.7123883838383839,0.637065050075065,0.5062124320737368,0.6040333986549972,0.5934912692225058,0.5419849846574878,0.4577288021754712,1.0,0.7055555555555556,0.5680646464646465,0.5771290555555555,0.556313567839196,0.5428042105263158,0.6559924242424243,0.5071909090909091,0.4981131313131313,0.512699494949495,0.6426352869352869,0.5856390306122449,0.6264678947368421,0.5505409090909091,0.6281757575757576,0.5727565656565656,0.5402944444444444,0.0024502450245024,0.4200757575757575,0.4284717171717171,0.3750560606060606,0.4284424242424242,0.5533777777777779,null,null,null,null,null,0.4664405141843971,0.4987036866359446,0.5225067975649078,0.2492474747474747,0.4268826530612245,0.3154553264604811,0.4302180003487019,0.4054009678377241,0.4789401090439397,0.3735379856850987,0.4235713072701664,0.4587023585449159,0.0124512451245124,0.5642742742742743,0.5138777777777778,0.4452142777777778,0.4849879396984924,0.435312947368421,0.4245090909090909,0.5169535353535354,0.5177409090909091,0.5202515151515151,0.5117257575757576,0.5534313131313131,0.5230768888888888,0.4761382653061223,0.5091574736842105,0.5401116161616162,0.3723515151515151,0.5117712121212121,0.5059333333333333,0.9987998799879988,0.5415747474747475,0.5355161616161616,0.4473979797979798,0.5185959595959596,0.364520202020202,0.5143010101010101,0.5205060606060606,null,null,null,null,null,0.5476720378525279,0.441941134751773,0.5212502706994875,1.0,0.5673705414788373,0.526273368335382,0.4205274784296356,0.4625437655990246,1.0,0.7935535535535536,0.5995676767676767,0.5448459444444445,0.7013005025125628,0.5641671578947368,0.568669191919192,0.5537929166381373,0.6071397959183673,0.5683646315789475,0.5650015151515151,0.5532141414141414,0.5913691919191919,1.0,0.4519666666666667,0.3559686868686869,0.3104676767676767,0.5768838383838384,null,null,null,null,null,0.7501689716312058,0.6340064716312057,0.711240405207055,1.0,0.7810474905455996,0.649875431496462,0.6550135832751878,0.6790214015955008,0.6134653526928667,1.0,0.997897897897898,0.7694712121212123,0.7857838333333333,0.9097909547738694,0.8375148421052632,0.8212949494949496,0.759274514996,0.7637928571428569,0.7793354736842106,0.5391318181818182,0.5936964646464646,0.7265171717171718,0.5741530303030303,1.0,0.5590217171717172,0.6252444444444444,0.4133191919191918,0.7899949494949496,null,null,null,null,null,0.468986879432624,0.602499846390169,0.3990846747996823,0.3997212121212121,0.4018127551020408,0.4300003436426117,0.4702132185425836,0.4088749373570969,0.4501022168737585,0.4205328705086095,0.4627793487526997,0.461208058901262,0.0124512451245124,0.5707007007007007,0.8364328282828283,0.7706369444444443,0.7565427135678392,0.7593226315789474,0.204620202020202,0.9259585858585858,0.8097388888888889,0.6422833333333333,0.6108484848484849,0.5292661616161616,0.5349515151515152,0.5088883838383838,0.6246040404040405,0.648204770002107,0.6467729591836734,0.6550913684210526,0.5145050505050505,0.5244353535353535,0.442220202020202,0.6066510101010101,0.0124512451245124,0.6335646464646465,0.4310515151515151,0.5984858585858587,0.584379797979798,0.8469671717171717,0.544489393939394,0.7488363636363636]},{"boxpoints":false,"name":"LOF (0 errors)","type":"box","visible":"legendonly","x":[0.5000656565656566,0.5423131313131313,0.4027454545454546,0.5157060606060606,0.437180808080808,0.6100585106382979,0.3822193548387096,0.4941269039197286,0.4721419191919191,0.4698419382295842,0.5010987008015337,0.4324167405688636,0.4503782475263035,0.4565134390656522,0.5081893514001826,1.0,0.4573723723723724,0.6002414141414142,0.5258390555555555,0.5449587939698493,0.5721486315789472,0.5248525252525252,0.504130303030303,0.5260777777777779,0.5880914141414142,0.479147557997558,0.4330311224489795,0.5023113684210526,0.4970136363636364,0.5285797979797979,0.4541944444444444,0.50885,1.0,0.4336777777777778,0.4824131313131313,0.4004040404040404,0.4822489898989899,0.6625505050505051,0.6240010101010101,0.8417818181818181,0.8134838383838384,0.8476494949494948,0.96500101010101,0.551525620567376,0.5290082181259601,0.5284636300199717,0.533600505050505,0.5124676020408163,0.5247929553264605,0.5543247086129715,0.531271700943495,0.5085059904404267,0.5349330008024715,0.5318619077504231,0.5238539606772109,1.0,0.6324024024024024,0.5564080808080808,0.5365652777777778,0.5884653266331659,0.5584402105263158,0.6520353535353536,0.455150505050505,0.517329292929293,0.4664075757575757,0.5358954545454546,0.4754434343434343,0.5012807222222222,0.4822808673469387,0.507985052631579,0.4950727272727272,0.5134535353535354,0.4885681818181818,0.5507651515151515,1.0,0.4991262626262626,0.5849712121212122,0.5260267676767676,0.506689898989899,0.4520530303030303,0.5996176767676769,0.5792267676767676,0.4717121212121212,0.440410101010101,0.5260949494949495,0.4471959595959596,0.4453868686868686,0.6556673048127711,0.5135483156028369,0.5278500445150268,1.0,0.4736642065055076,0.6382685003394093,0.6016291366818993,0.5701299153408281,1.0,0.5508508508508508,0.4533838383838384,0.5277550555555556,0.5619487437185929,0.4927876842105263,0.4935818181818181,0.60588234137522,0.5822433673469388,0.5923648421052632,0.517600505050505,0.5448171717171717,0.5205116161616161,0.9888988898889888,0.4530762626262625,0.5672333333333333,0.5106520202020202,0.5743338383838383,0.6225727272727273,0.6374747474747476,0.5913959595959596,0.6364242424242424,0.6194747474747475,0.4320145390070922,0.3845821808510637,0.4720416756899829,1.0,0.7064424949414831,0.533745701536201,0.4774652248630626,0.4288861137083325,0.4538027849974332,1.0,0.7817517517517518,0.4860459595959596,0.5782450555555556,0.5854793969849246,0.6097952631578947,0.3747484848484849,0.5034526806742351,0.4237313775510204,0.5551475789473683,0.4646565656565656,0.618178787878788,0.4701989898989899,0.487689898989899,1.0,0.5761646464646464,0.312020202020202,0.6319626262626262,0.6909247474747475,0.496560606060606,0.902788888888889,0.8873949494949495,0.9376131313131314,0.9328777777777778,0.558297695035461,0.5142788786482335,0.582125652686542,0.5443944444444444,0.6734691326530613,0.6183548109965635,0.6396510035113392,0.5954360894305544,0.6094535846719027,0.6048442437730168,0.578419381219799,0.5873621936054223,1.0,0.5601801801801802,0.6049474747474748,0.5747094444444445,0.5609979899497488,0.583534947368421,0.1646969696969696,0.4733030303030303,0.4514565656565656,0.4700040404040403,0.4680772727272727,0.560820202020202,0.5526141414141414,0.5615868686868687,0.5054707070707071,0.5062535425884389,0.5033209183673469,0.4946877894736842,0.5893050505050506,0.5224989898989899,0.5525368686868688,0.7491944444444445,1.0,0.5097904040404041,0.72969898989899,0.537429797979798,0.5184313131313132,0.4732080808080808,0.4891984848484848,0.5601126262626263]},{"boxpoints":false,"name":"IF-LOF (0 errors)","type":"box","visible":"legendonly","x":[0.3996712121212121,0.7387050505050505,0.866449494949495,0.3722727272727273,0.4610141414141414,0.6286169326241136,0.3839264976958525,0.5811742342212277,0.3847333333333333,0.3783750533857306,0.4845445697322144,0.4354737053756612,0.5258659009315965,0.4563225375756541,0.6258427676396345,1.0,0.5873223223223223,0.6715272727272726,0.4913045,0.5341849246231155,0.6311555789473684,0.4713121212121212,0.8802282828282829,0.8509348484848483,0.6991020202020202,0.5056205738705739,0.7734375,0.4165788421052632,0.6158217171717173,0.5268449494949494,0.4697353535353535,0.4031313131313131,1.0,0.5370666666666667,0.4867055555555555,0.3957575757575757,0.3985353535353535,0.7573611111111112,0.6249464646464646,0.8423373737373738,0.8145858585858586,0.8475318181818182,0.9650186868686867,0.5628419326241134,0.5293142089093702,0.5280988474217378,0.5314590909090909,0.5128788265306122,0.5241060137457045,0.552694236039678,0.5315705942976707,0.5083441917092228,0.5333508945883895,0.5325085190851593,0.5219745836239325,1.0,0.6244044044044044,0.5560838383838385,0.5354272222222222,0.5886472361809045,0.5560427368421053,0.2619191919191919,0.2488156565656565,0.2659181818181818,0.2491242424242424,0.2516055555555556,0.4737005050505051,0.5010456111111111,0.4817459183673469,0.5074636842105262,0.4975232323232323,0.5126550505050504,0.4902383838383838,0.5473121212121212,1.0,0.4939388888888889,0.5847474747474747,0.5267777777777778,0.5027186868686868,0.4558050505050505,0.5987550505050505,0.5794580808080808,0.6273050505050506,0.6030555555555556,0.6638843434343434,0.6194454545454544,0.6099676767676767,0.6694191322981513,0.1868465425531915,0.4032565749897735,1.0,0.5883957675492774,0.7474404688467045,0.7133857002759815,0.5433453817274712,1.0,0.3931931931931932,0.392070707070707,0.6900031666666667,0.507078391959799,0.3887359999999999,0.5456934343434343,0.6133504216485096,0.5920566326530612,0.6413372631578946,0.8182747474747474,0.5787747474747474,0.5610949494949495,0.9887988798879888,0.3915656565656565,0.8965409090909091,0.8661323232323231,0.3921212121212121,0.6926171717171717,0.7229631313131313,0.5953020202020203,0.6722787878787878,0.6403762626262626,0.5280391843971631,0.3119876773049645,0.4762477441709377,1.0,0.7094425979621904,0.697748374161441,0.5255309397584913,0.5890500854853178,0.4771061099193339,1.0,0.7838188188188189,0.4875030303030302,0.5787589999999999,0.5852884422110552,0.609436842105263,0.4503454545454545,0.5723824191333091,0.4868862244897958,0.5964127368421053,0.5544944444444443,0.6189404040404041,0.4729318181818182,0.4919454545454546,1.0,0.5787126262626263,0.3257575757575758,0.6342136363636364,0.6907116161616162,0.5153318181818182,0.6604757575757576,0.845349494949495,0.7006712121212121,0.7190373737373738,0.575058244680851,0.5299138248847928,0.5830376091821265,0.4900838383838384,0.681020918367347,0.6388149484536082,0.6374604841612949,0.6119202982230849,0.6316352451429386,0.5590273565803224,0.5485690253381132,0.5660196333016169,1.0,0.5595295295295295,0.6042787878787879,0.5754267777777778,0.5647618090452261,0.5837712631578947,0.0001010101010101,0.4711136363636363,0.452811111111111,0.4722085858585858,0.4693368686868687,0.5614449494949495,0.5563282828282828,0.5612904040404041,0.5221984848484849,0.5226043362214752,0.5245517857142857,0.5203248421052631,0.5161959595959597,0.5199752525252525,0.4692434343434343,0.7506207070707072,1.0,0.5099904040404041,0.7262823232323232,0.5378873737373737,0.5192454545454546,0.4741015151515151,0.4880585858585859,0.5591242424242424]},{"boxpoints":false,"name":"Hybrid Isolation Forest (HIF) (0 errors)","type":"box","visible":"legendonly","x":[0.607250505050505,0.7911494949494949,0.8846686868686868,0.316789898989899,0.4761777777777777,0.6112946808510638,0.2064230414746543,0.5007709521403305,0.216540404040404,0.330014332880909,0.5691173685608086,0.4975619982057951,0.4408175571073359,0.3856296250535039,0.551234873111966,0.9996499649964996,0.6598198198198197,0.6614070707070707,0.589531,0.6192020100502512,0.6198125263157894,0.3549560606060606,0.9678479797979798,0.9984803030303032,0.7040212121212122,0.5844125763125763,0.8070895408163266,0.5507763157894736,0.684050505050505,0.2810919191919192,0.4752727272727273,0.5843656565656565,0.9999499949995,0.8348232323232323,0.5513712121212122,0.1006060606060606,0.4090858585858585,0.8205919191919192,0.5437636363636363,0.5543414141414141,0.6318732323232323,0.5627868686868687,0.6908585858585858,0.5538119680851064,0.5268874039938556,0.7364503476984527,0.5273434343434343,0.5044109693877551,0.49988264604811,0.5529543923252697,0.5590087703961266,0.6061405980543387,0.5548809578814895,0.5338765277630976,0.552288902921788,0.9955495549554956,0.7981281281281281,0.6619661616161616,0.6747719444444444,0.6866613065326632,0.6672392631578947,0.1227893939393939,0.1239434343434343,0.2099974747474747,0.1630848484848484,0.1800762626262626,0.4910227272727273,0.4899132777777777,0.499425,0.526941052631579,0.400370707070707,0.3148313131313131,0.5765510101010101,0.5105575757575758,0.9996499649964996,0.4937439393939393,0.7902686868686868,0.4799020202020202,0.5476969696969697,0.2428171717171717,0.6619126262626263,0.6922681818181818,0.9485858585858586,0.8318666666666665,0.9271050505050504,0.797031313131313,0.8234454545454546,0.6279702164096397,0.5736504432624113,0.5002540965855772,0.9670967096709672,0.6596260848430535,0.9612761277803248,0.8359446584725144,0.6678179018543858,1.0,0.3022972972972973,0.5451075757575757,0.8418223333333332,0.6997688442211055,0.8115801052631579,0.656429797979798,0.6124287305761327,0.6439561224489796,0.5893023157894737,0.8340272727272728,0.3354797979797979,0.653920707070707,0.9994999499949996,0.1968227272727273,0.9998484848484848,0.7582191919191918,0.5389025252525252,0.7820818181818182,0.2084282828282828,0.6769939393939395,0.4268191919191919,0.995758585858586,0.4938058510638298,0.2093757092198581,0.4130431434827594,0.7694769476947694,0.7604568518272172,0.353894117533569,0.8534018474350371,0.2508762212605792,0.2623043207195462,0.997899789978998,0.7558758758758759,0.3353681818181818,0.5130943888888888,0.4219788944723618,0.353275052631579,0.415870707070707,0.4557987989376403,0.5626089285714286,0.7171562105263157,0.4838393939393939,0.7607479797979797,0.3815646464646464,0.3794838383838383,0.9977497749774976,0.998989898989899,0.0543434343434343,0.579240404040404,0.6525686868686869,0.4583262626262626,0.6938434343434343,0.8012030303030303,0.7347343434343434,0.7672343434343435,0.5845493794326242,0.4963731950844854,0.6052017613513319,0.4831338383838384,0.6937081632653062,0.6564099656357388,0.6408539908385253,0.6259020383201803,0.6357065845149368,0.5417384970326964,0.5419309425230789,0.5527801901064261,0.9999499949995,0.5055255255255255,0.6087,0.6224559444444445,0.6349527638190955,0.6226455789473684,0.7343434343434343,0.4924818181818181,0.7490772727272728,0.388470202020202,0.3180358585858586,0.5262616161616162,0.5318489898989899,0.5841328282828282,0.4514353535353535,0.4597398225163192,0.4568354591836734,0.4555735789473684,0.5573530303030303,0.4902631313131314,0.5136661616161615,0.7470111111111111,0.999799979998,0.4938116161616162,0.8161974747474747,0.4227212121212121,0.4804797979797979,0.8072777777777778,0.4931949494949494,0.6027585858585858]},{"boxpoints":false,"name":"HBOS (0 errors)","type":"box","visible":"legendonly","x":[0.9036252525252524,0.8500813131313132,0.7822222222222223,0.1607868686868686,0.6001146464646465,0.5657333333333333,0.2910970046082949,0.8618628937173657,0.2688171717171717,0.2675527781083997,0.4870603102458926,0.5504949820151339,0.5469356092007714,0.3936080885917395,0.5943708565307422,1.0,0.676026026026026,0.7793545454545454,0.6276207222222222,0.6688733668341709,0.6942222105263158,0.3653984848484849,0.9658045454545456,0.981058585858586,0.787330303030303,0.5403052503052503,0.7871839285714286,0.4675157894736842,0.7109843434343435,0.2141333333333333,0.499089898989899,0.5307050505050505,1.0,0.6098974747474748,0.5722545454545455,0.1443939393939394,0.4357267676767676,0.8096732323232323,0.5417762626262626,0.5354772727272726,0.5273808080808081,0.5370398989898989,0.6433545454545455,0.5515527482269503,0.5089647465437788,0.7275256863735894,0.534340909090909,0.5227084183673469,0.5008735395189003,0.5249527385602311,0.5402383716716127,0.5648597530699209,0.5329155808163825,0.5238222967849381,0.5502864326429663,1.0,0.7136786786786786,0.6181060606060607,0.588797111111111,0.6564281407035176,0.6140190526315789,0.1706212121212121,0.1695762626262626,0.1771262626262626,0.1670616161616162,0.1883424242424242,0.5297535353535354,0.4978646666666667,0.5092839285714287,0.4904619999999999,0.559060606060606,0.2927863636363636,0.4959727272727272,0.5417060606060606,1.0,0.495399494949495,0.8101045454545454,0.5066282828282829,0.5416747474747475,0.3223131313131313,0.6397065656565657,0.5904691919191919,1.0,0.2972727272727272,0.2142222222222222,0.1846464646464646,0.2071717171717171,0.637170463120166,0.3478283687943262,0.5254385331697106,1.0,0.6128306789664723,0.9912885820920908,0.4504783347531461,0.55460564652542,1.0,0.5592942942942942,0.7584489898989899,0.5310625555555556,0.3098331658291457,0.8322803157894737,0.2871545454545454,0.5340820401051855,0.267552806122449,0.5340894736842106,0.8856207070707071,0.4898015151515151,0.7482318181818182,0.9975497549754976,0.3054343434343434,0.997878787878788,0.955110606060606,0.6500060606060606,0.9673535353535352,0.700979797979798,1.0,0.6047444444444444,0.1662595959595959,0.592980585106383,0.6215195921985815,0.1802377343054453,1.0,0.6146830512933099,0.6077980847878173,0.7873786693768136,0.7640839042096811,0.6782572343469709,1.0,0.6751251251251251,0.4036742424242424,0.6286298333333333,0.5103025125628141,0.6547475789473685,0.6107949494949495,0.7161763971024686,0.6041066326530613,0.6080213684210526,0.6392939393939394,0.455050505050505,0.4322969696969697,0.3623853535353535,1.0,0.9916161616161616,0.8915656565656566,0.5857429292929293,0.797929797979798,0.4560292929292929,0.4968747474747474,0.4893722222222222,0.6393020202020201,0.4646666666666667,0.6159601063829787,0.4982784178187404,0.6773531605669049,0.5329499999999999,0.6930063775510205,0.6482955326460482,0.6220869432372895,0.6218023542040825,0.6548524174936788,0.5724097717291231,0.5675800889117432,0.584382509687654,1.0,0.5514564564564565,0.6439333333333334,0.6232153333333332,0.6200954773869347,0.6315834736842105,0.9203030303030304,0.6903025252525252,0.7986414141414142,0.6000267676767677,0.3059616161616161,0.5855959595959596,0.5643707070707071,0.6410702020202019,0.4536494949494949,0.4558823049571999,0.4569206632653061,0.4570091578947369,0.5589141414141414,0.4001878787878788,0.5050752525252525,0.7562858585858585,1.0,0.5036722222222223,0.8299116161616162,0.2697045454545455,0.4968065656565655,0.7027106060606061,0.5615227272727273,0.6038111111111111]},{"boxpoints":false,"name":"Isolation Forest (iForest) (0 errors)","type":"box","visible":"legendonly","x":[0.6441626262626263,0.8119010101010101,0.8740616161616162,0.3436515151515151,0.5869808080808081,0.6066702127659575,0.1763033794162826,0.7422016891648019,0.2123939393939394,0.3087915671049881,0.5943143756673313,0.5152269354069108,0.5575975677017478,0.3871841536423941,0.5526530506750196,1.0,0.664994994994995,0.7659257575757576,0.5897811666666666,0.6222391959798995,0.6893082105263157,0.3832020202020202,0.9746292929292928,0.9806484848484848,0.7953515151515151,0.5825765567765567,0.8299823979591836,0.5391581052631579,0.7457883838383839,0.3321292929292929,0.4962499999999999,0.4541085858585859,1.0,0.6991560606060606,0.596260101010101,5.050505050502308e-05,0.3901373737373738,0.8240176767676768,0.5303676767676768,0.5699676767676767,0.6162050505050505,0.5655181818181818,0.6930222222222222,0.5464238475177305,0.5292931643625192,0.7280757477321398,0.519270707070707,0.5049061224489797,0.5007573883161511,0.5404966912710458,0.5574367550235776,0.6022908388928008,0.5491741695889693,0.533045367570547,0.549362690592624,0.9984998499849984,0.791971971971972,0.6576323232323231,0.6658709444444444,0.6812241206030151,0.6616461052631579,0.1598030303030303,0.1358797979797979,0.1897686868686868,0.1482090909090909,0.1692439393939394,0.4895994949494949,0.4888492222222222,0.5009346938775511,0.527289052631579,0.3624853535353535,0.308410101010101,0.5808949494949496,0.5050368686868687,1.0,0.4835792929292929,0.7856414141414141,0.4823747474747475,0.5381636363636364,0.2447712121212121,0.6549439393939394,0.6884994949494949,0.9971959595959596,0.8377929292929294,0.9168252525252524,0.8359979797979799,0.8590131313131313,0.6485393749410489,0.0817820921985815,0.2485796097114945,0.9596959695969596,0.5928116551426837,0.9808664098631245,0.7700555833580817,0.6000269146905629,1.0,0.4989039039039039,0.4472929292929293,0.8066650555555557,0.695608040201005,0.5594178947368421,0.561680303030303,0.6203601430662553,0.5575362244897959,0.6434602105263159,0.87820101010101,0.6700323232323232,0.6755419191919192,0.9994999499949996,0.1364055555555555,1.0,0.9581409090909092,0.4481242424242425,1.0,0.8665707070707072,0.9963838383838384,0.4533989898989899,0.8955070707070707,0.5312151595744681,0.2806796985815602,0.2299732909839024,1.0,0.7479468373143001,0.6730045049779169,0.7428123048613773,0.6654031137387285,0.5615159826677838,0.996099609960996,0.719014014014014,0.3922631313131313,0.6330653888888889,0.5193587939698492,0.603688947368421,0.5527989898989899,0.6491071774660937,0.5213492346938775,0.6033546315789473,0.5696671717171717,0.4900045454545454,0.4660792929292929,0.4207075757575758,0.9934993499349936,1.0,0.2683838383838384,0.5149823232323233,0.8080010101010101,0.4574696969696969,0.6703747474747475,0.8053616161616162,0.7410838383838385,0.7566323232323233,0.5929892730496454,0.4937930107526881,0.6159902788806275,0.4936707070707071,0.6912323979591837,0.6447597938144329,0.6373885515477673,0.6310311573914469,0.6404691406743308,0.5439051691425302,0.5261966566742332,0.5531540162252343,0.9995999599959996,0.4567617617617617,0.6322671717171717,0.6233963333333333,0.6161819095477388,0.6254750526315789,0.0001010101010101,0.0054237373737373,0.4645772727272728,0.4579858585858585,0.301060101010101,0.5327191919191919,0.5216843434343434,0.5835510101010101,0.4572479797979798,0.4557239372700813,0.4584362244897959,0.4549763157894737,0.538279797979798,0.4943782828282828,0.4994166666666666,0.7573409090909091,0.9994999499949996,0.5113010101010101,0.7476914141414142,0.4531262626262626,0.4805656565656565,0.4108323232323232,0.5211156565656566,0.5862454545454545]},{"boxpoints":false,"name":"CBLOF (0 errors)","type":"box","visible":"legendonly","x":[0.5357313131313131,0.8700505050505051,0.4492171717171717,0.5368909090909091,0.6151727272727272,0.6792484042553192,0.3731027649769585,0.6736225606968407,0.3086737373737374,0.4462997062409544,0.5179074522275854,0.4559308268585418,0.5592657069691643,0.4137027555584694,0.5258498310879889,1.0,0.8323723723723724,0.6085767676767677,0.5808527777777778,0.6288964824120603,0.6718427368421053,0.4810747474747474,0.9247929292929292,0.9924939393939394,0.7895595959595959,0.6220382173382173,0.7918403061224492,0.6039770526315789,0.6298,0.4798373737373737,0.5537939393939393,0.5480272727272727,1.0,0.4409222222222222,0.555859595959596,0.3908080808080808,0.4597777777777777,0.7065434343434343,0.5407505050505051,0.7285181818181817,0.7139474747474748,0.691928282828283,0.859029292929293,0.5121234042553191,0.5274658986175116,0.6351500276715031,0.478230303030303,0.5285280612244898,0.487547766323024,0.5521263109290646,0.5584632023441759,0.5664111297354759,0.5291246865041578,0.5280884742258267,0.5518399587210193,1.0,0.669039039039039,0.6204212121212122,0.6129852222222222,0.610580904522613,0.5876486315789474,0.2184828282828282,0.3420131313131313,0.3311323232323232,0.3826434343434344,0.362430303030303,0.4856353535353535,0.5030347777777778,0.5090831632653061,0.5052324210526316,0.5313161616161616,0.4620414141414141,0.5441232323232323,0.5057858585858586,1.0,0.4965767676767676,0.6867979797979799,0.5599494949494949,0.5307040404040404,0.3912626262626263,0.6152161616161617,0.632620202020202,0.3083909090909091,0.3549757575757576,0.4195888888888889,0.2251161616161616,0.2709363636363636,0.6455428147401434,0.3547260638297873,0.4733761640077961,1.0,0.5255366328632054,0.61642750630966,0.5519790203394602,0.4554329355276253,1.0,0.5312912912912913,0.6187868686868687,0.5040702222222222,0.5223919597989951,0.5832688421052631,0.4503656565656566,0.5825756089707409,0.441294387755102,0.5589423157894737,0.7719767676767676,0.6858808080808081,0.707779797979798,0.9994999499949996,0.2949363636363636,1.0,0.9468909090909092,0.4994323232323232,1.0,0.9509323232323232,0.9790424242424244,0.9555444444444444,0.9510878787878788,0.5424783687943262,0.292866134751773,0.4099376789624389,1.0,0.7538915321979718,0.4179683275631232,0.4476315159387257,0.5624962492196428,0.3704665624010427,1.0,0.7758858858858858,0.5355424242424243,0.6664506666666667,0.5856341708542714,0.6548467368421051,0.5472484848484849,0.6755762115117611,0.6230010204081633,0.6660901052631579,0.6268242424242425,0.5084909090909091,0.4656414141414141,0.4603020202020202,1.0,1.0,0.0392929292929292,0.6732626262626263,0.7690282828282827,0.5160131313131313,0.8932868686868687,0.8817262626262626,0.9387767676767677,0.9322565656565656,0.5666356382978723,0.5034047619047619,0.5781380687697009,0.5493989898989899,0.6821678571428572,0.6228573883161512,0.6554777199005686,0.5760315327942256,0.6382464043383913,0.5428301436374041,0.5469787296319347,0.6020814019436245,1.0,0.4841141141141141,0.6021939393939394,0.6009405555555556,0.5903477386934673,0.5664202105263159,0.2962121212121212,0.5027525252525252,0.6201454545454546,0.463770707070707,0.4514555555555555,0.5144858585858586,0.5306666666666666,0.5927969696969697,0.5190868686868687,0.5205911787683353,0.5192908163265306,0.5061880000000001,0.5268040404040404,0.4699989898989899,0.5426707070707071,0.7063919191919192,1.0,0.5166888888888889,0.7992070707070706,0.4711686868686868,0.4803414141414142,0.8256737373737374,0.5448909090909091,0.5874909090909091]},{"boxpoints":false,"name":"Extended Isolation Forest (EIF) (0 errors)","type":"box","visible":"legendonly","x":[0.5788919191919192,0.7002146464646466,0.8524590909090909,0.3647454545454545,0.5629535353535353,0.6042901595744681,0.1814725806451612,0.7313568661421113,0.218500505050505,0.3068411750761903,0.5972393365350003,0.5118091086555829,0.5692728539106447,0.3913882940509128,0.548950670753199,1.0,0.6536686686686686,0.759728787878788,0.5929031666666668,0.6213095477386934,0.6814838947368421,0.4112444444444444,0.9736242424242424,0.981281818181818,0.8098787878787879,0.5811564713064713,0.8263104591836735,0.5393898947368422,0.7515303030303031,0.3210348484848485,0.4883813131313131,0.4503131313131313,1.0,0.6734722222222222,0.5852803030303031,0.0,0.3765838383838384,0.8316848484848485,0.543780303030303,0.6238929292929294,0.6629949494949494,0.6112065656565656,0.7423070707070707,0.5564083333333333,0.5315718894009217,0.7291234149041124,0.519669696969697,0.5065303571428571,0.4988042955326461,0.5407590740422943,0.5522503513068563,0.6003095398843328,0.5499172478964112,0.5313053464402396,0.5503384792273057,1.0,0.7932382382382382,0.6593979797979799,0.6661511666666666,0.6825909547738693,0.6617146315789473,0.1551232323232323,0.1376373737373737,0.1724636363636363,0.1560691919191919,0.1776080808080808,0.4906383838383837,0.4904396111111111,0.4997204081632653,0.525652,0.3715934343434343,0.312420707070707,0.5832934343434344,0.5057454545454545,1.0,0.4866883838383838,0.7809030303030302,0.4728141414141414,0.5444454545454546,0.2449010101010101,0.6570969696969697,0.6869070707070707,0.9954111111111112,0.8474686868686869,0.9686530303030304,0.8559222222222223,0.948220202020202,0.6434397327744765,0.0922720744680851,0.3219687672946895,0.94009400940094,0.5189063001663334,0.9797390230194064,0.7112234401669658,0.6233824232002554,1.0,0.2979279279279279,0.474890404040404,0.7730476666666667,0.6495597989949748,0.5321031578947368,0.5657393939393939,0.5982254468622947,0.4681140306122449,0.612196,0.8830974747474747,0.7390363636363636,0.6731085858585859,0.9994999499949996,0.1700020202020202,1.0,0.9568934343434344,0.5804843434343435,1.0,0.93305,0.9902757575757576,0.8982873737373738,0.9665828282828284,0.5319079787234042,0.2601372340425532,0.2413166823070815,1.0,0.7579103399783356,0.6884505424708278,0.7254616446741264,0.6649578262906126,0.5658926383468457,0.995999599959996,0.7112812812812812,0.3891257575757576,0.6399361666666666,0.5184050251256281,0.6026654736842105,0.5606464646464646,0.6626894727477279,0.5275086734693878,0.6029406315789474,0.5644626262626262,0.4935252525252525,0.4676020202020202,0.4220090909090909,0.9934993499349934,1.0,0.2569696969696969,0.5376060606060606,0.7864252525252526,0.4586257575757576,0.7828510101010101,0.8297914141414142,0.890379797979798,0.842669696969697,0.5856223404255319,0.4958782642089094,0.641697345941914,0.4813525252525252,0.6897604591836735,0.6459338487972509,0.6402336576809131,0.6277156624014504,0.6344710305675626,0.542353088919578,0.5358696707682126,0.54519211025353,0.998199819981998,0.4106156156156156,0.6368494949494949,0.6206205555555556,0.6184874371859296,0.6220615789473685,5.050505050502308e-05,0.0120893939393939,0.6553328282828284,0.470320202020202,0.3220777777777778,0.5311818181818182,0.542689393939394,0.5728570707070707,0.4520217171717172,0.4571356704162168,0.457827806122449,0.454059052631579,0.531190909090909,0.492390404040404,0.5065040404040404,0.7523823232323232,0.9988998899889988,0.501589898989899,0.7641338383838384,0.4431681818181818,0.4702217171717171,0.5444878787878787,0.5286469696969698,0.5945929292929293]},{"boxpoints":false,"name":"KNN (0 errors)","type":"box","visible":"legendonly","x":[0.5832454545454546,0.9110666666666666,0.392240404040404,0.2517575757575758,0.5527479797979798,0.6687103723404255,0.1273860983102918,0.870641257008109,0.2142368686868687,0.3215596334863307,0.6207667144428891,0.5509745327719848,0.5760527060305274,0.4247003413953228,0.4752308411044542,1.0,0.7909809809809809,0.7632964646464646,0.6485751666666666,0.6816723618090452,0.7247133684210526,0.4262434343434343,0.9698434343434345,0.9658434343434344,0.8736671717171717,0.6389062271062271,0.8354607142857142,0.6280892631578949,0.696720707070707,0.2863449494949495,0.4906646464646464,0.5562621212121213,1.0,0.592830303030303,0.5662787878787879,0.0,0.4771909090909091,0.7964606060606061,0.5688393939393939,0.6981222222222222,0.7284727272727274,0.7012777777777778,0.8436858585858585,0.5795823581560284,0.5427874039938556,0.7372622055391131,0.5294328282828282,0.513398724489796,0.4988582474226803,0.5580028629180185,0.5661244066622693,0.6053664856832288,0.5562817866240239,0.5395403981745157,0.5582482028999787,1.0,0.811036036036036,0.6826161616161617,0.6837541666666667,0.7098713567839197,0.6807587368421053,0.2200737373737374,0.183570202020202,0.1796545454545454,0.1594732323232323,0.1990510101010101,0.4862823232323232,0.4892266666666667,0.493052806122449,0.5283868421052631,0.4680550505050505,0.3104520202020202,0.5837181818181818,0.5155373737373736,1.0,0.4715696969696969,0.799050505050505,0.4829535353535353,0.5478621212121212,0.256710101010101,0.6653156565656566,0.7056015151515151,0.7288737373737374,0.751660606060606,0.8157858585858585,0.5993252525252525,0.6810252525252526,0.6714657501237974,0.2040188829787234,0.5058230467528092,1.0,0.6816480112502613,0.9053033130093996,0.6550623946915102,0.5743966471985471,1.0,0.643098098098098,0.7229525252525252,0.5830634444444445,0.3934733668341709,0.8065487368421052,0.3543065656565656,0.571785323356385,0.3017706632653061,0.5962602105263157,0.8629287878787879,0.6273621212121212,0.7470075757575757,0.9994999499949996,0.3013217171717172,0.9868858585858584,0.9669560606060604,0.6862540404040404,0.3657474747474747,0.5822949494949495,0.7285080808080808,0.8251777777777778,0.4770161616161616,0.6279492021276596,0.1831090425531914,0.3318790153757308,1.0,0.77767431253682,0.4770737596840778,0.4314977157969842,0.5588241865385499,0.4073216867664817,1.0,0.8372672672672672,0.5461818181818181,0.7230931666666667,0.6781085427135678,0.7389311578947368,0.6695883838383839,0.7817217554433793,0.6521966836734693,0.732624,0.6686393939393939,0.3807934343434344,0.496249494949495,0.4424757575757576,1.0,0.6751454545454545,0.0,0.7239358585858585,0.8160227272727274,0.4742964646464647,0.8726060606060606,0.8559777777777777,0.954858585858586,0.9293863636363636,0.6236406028368795,0.4970058371735791,0.6589898698236243,0.5430429292929293,0.6895454081632653,0.6394369415807559,0.6281356196943275,0.6235136193270341,0.6591363015625765,0.5793912167500249,0.5718489509785769,0.5915290417904893,1.0,0.5913413413413413,0.6578565656565657,0.6475130555555555,0.6634793969849246,0.635756947368421,5.050505050502308e-05,0.3723373737373737,0.7479196969696968,0.5306090909090909,0.3706272727272727,0.5859444444444444,0.57289898989899,0.6329959595959596,0.4517318181818182,0.4530178192198475,0.4512344387755102,0.447704947368421,0.5693050505050505,0.3947303030303031,0.5427833333333334,0.7476409090909091,1.0,0.5052732323232323,0.7992565656565658,0.3036590909090909,0.4938813131313131,0.6833747474747475,0.5758252525252525,0.6577863636363637]},{"boxpoints":false,"name":"TSBitmap (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.5096035460992907,0.592816129032258,0.7767135879111624,0.8029727272727274,0.2419436306697646,0.7642718137042108,0.4005954650255069,0.5182657482764597,0.6964912159048574,0.6386082245093161,0.9985998599859988,0.1327027027027027,0.1447737373737374,0.3333406666666667,0.7413768844221106,0.3322671578947368,0.5740262626262627,0.9112383838383836,0.508880808080808,0.3918464646464646,0.5045568986568986,0.5933755102040816,0.5184031578947368,0.6243808080808081,0.4357707070707071,0.6023333333333333,0.9052161616161616,0.965996599659966,0.8879707070707071,0.4387666666666667,0.5263949494949495,0.909921212121212,0.8258838383838385,null,null,null,null,null,0.4765529255319148,0.5030788018433179,0.6666632979619336,0.3996656565656565,0.6755839285714286,0.4647285223367697,0.6070083260287477,0.5342857046362114,0.4600963353848152,0.4299882151940615,0.7623344372003862,0.5348609650481739,0.3193319331933193,0.6027577577577578,0.5929590909090909,0.8609073333333332,0.5073507537688442,0.5276518947368422,0.9376833333333334,0.9498530303030304,0.9876974747474748,0.9848217171717172,0.8650747474747474,0.6602621212121212,0.5916776111111111,0.4751561224489796,0.5692925263157895,0.5117883838383839,0.5296848484848484,0.5847444444444445,0.9022424242424244,0.6298129812981298,0.8226383838383838,0.8814828282828283,0.9636424242424242,0.7889212121212121,0.7850141414141414,0.9463474747474748,0.831089898989899,null,null,null,null,null,0.4965504371227127,0.5254751773049645,0.6730960802714213,0.9874987498749876,0.8406869780825946,0.5387517966855182,0.7094460195403232,0.6192942999309726,0.8546854685468547,0.3037737737737738,0.3123878787878788,0.6306226666666667,0.6963236180904523,0.4424538947368421,0.4021484848484848,0.577590334746539,0.6134183673469389,0.5951656842105263,0.7103161616161616,0.3539363636363636,0.5757555555555555,0.1947194719471947,0.7637767676767677,0.9445363636363636,0.335719191919192,0.7570515151515151,null,null,null,null,null,0.6812781914893616,0.5989753546099291,0.6380423013065761,0.1685168516851685,0.6325961518265172,0.1919461778768165,0.7936080337083077,0.5068657141394872,0.8270405183947296,0.6352635263526353,0.4745145145145145,0.2082757575757576,0.6052372222222222,0.4560964824120603,0.5712604210526316,0.3754090909090909,0.5011956683670586,0.5797556122448979,0.6826635789473684,0.6339676767676768,0.3767434343434343,0.5359666666666667,0.3866040404040404,0.7694769476947695,0.9283949494949496,0.958069696969697,0.9785131313131312,0.1705616161616161,null,null,null,null,null,0.5809031028368794,0.6729937019969279,0.6371467070911235,0.6959434343434343,0.4591198979591837,0.6499161512027491,0.4980824820451058,0.4960574914417259,0.6317591157300095,0.61055898604683,0.563149152141434,0.7427920230704119,0.9096409640964096,0.7591991991991992,0.9351727272727272,0.961514888888889,0.8191497487437186,0.9559446315789474,0.8884979797979798,0.9227979797979796,0.9101757575757576,0.5495080808080808,0.7360257575757576,0.7132343434343433,0.5020979797979798,0.6735686868686868,0.5724636363636364,0.4632544431517104,0.7108306122448979,0.5205856842105263,0.7022212121212121,0.4539010101010101,0.5492883838383839,0.6451727272727272,0.6746674667466747,0.8617929292929294,0.848441414141414,0.768550505050505,0.7480378787878788,0.9293505050505052,0.9966631313131312,0.4472838383838384]},{"boxpoints":false,"name":"OmniAnomaly (4 errors)","type":"box","visible":"legendonly","x":[0.2795151515151515,0.7140767676767676,0.6204111111111111,0.4701111111111111,0.2350222222222222,0.4899265957446809,0.5295101382488479,0.259817608700883,0.6660171717171718,0.3801254052064465,0.8860001452072224,0.4485488280293307,0.6339454000689494,0.656654687256711,0.513594305621425,0.7170717071707171,0.8432732732732733,0.9921363636363636,0.616579,0.2398311557788944,0.7787690526315789,0.2606737373737374,0.9359323232323232,0.8562191919191919,0.4675979797979798,0.6545340659340659,0.7021632653061223,0.4544764210526315,0.6541444444444444,0.3957222222222222,0.8606363636363636,0.2693171717171717,0.5015501550155015,0.934661616161616,0.4825888888888889,0.3881444444444444,0.3426939393939393,0.9048373737373738,0.5384868686868687,0.5337818181818182,0.810590909090909,0.7386575757575758,0.7743202020202019,0.7487739361702128,0.8198493087557605,0.3743169951153781,0.1898060606060606,0.5643387755102041,0.6882756013745706,0.627923075948166,0.6340454208784737,0.6124739677398546,0.5970495675275399,0.6587108671663957,0.5338174547822396,0.9982998299829984,0.8860860860860861,0.5573383838383839,0.4637454444444445,0.784102512562814,null,0.8174888888888889,0.8263929292929293,0.753271717171717,0.8396222222222223,0.8373464646464647,0.6855939393939394,0.8051106666666666,0.8191127551020408,0.7987741052631578,0.4564959595959595,null,0.4738424242424242,0.7164343434343434,0.6360636063606361,0.824049494949495,0.982549494949495,0.7864212121212122,0.8922878787878789,0.3222777777777778,0.5663979797979798,0.640821212121212,0.8627787878787878,0.8534696969696969,0.6587070707070706,0.2915545454545454,0.5092555555555556,0.6208043367407093,0.3146024822695035,0.4312028682114584,0.6973697369736973,0.910074925059937,0.8239240576381284,0.6602471947137064,0.5519096310686977,0.9503950395039504,0.2467267267267267,0.8894272727272726,0.5293295555555555,0.5591095477386935,0.7639797894736843,0.144920202020202,0.4475222482738966,0.1875168367346938,0.4510124210526316,0.710140404040404,0.9964777777777778,0.4545585858585859,0.6647664766476648,0.8749252525252524,0.9985353535353536,0.6761080808080808,0.2281949494949494,0.8972272727272728,0.906190909090909,0.2132323232323232,0.2220353535353535,0.473160606060606,0.6961170212765959,0.685897340425532,0.8333434394475325,0.4281428142814282,null,0.585885756440778,0.4914419029396119,0.5397341109150241,0.6113766781627816,0.7510751075107511,0.6527327327327328,0.3787242424242424,0.8628965555555554,0.6473447236180905,0.7909559999999998,0.4914929292929293,0.5575313680519653,0.6966219387755102,0.5859075789473683,0.4201323232323232,0.4013545454545454,0.5943898989898989,0.4910919191919192,0.5719571957195719,0.952619191919192,0.7897787878787877,0.8446040404040406,0.9658555555555556,0.5238808080808081,0.4191969696969697,0.481710101010101,0.6633858585858586,0.4378151515151515,0.910155319148936,0.5686400921658986,0.7857609663370148,0.9890424242424244,0.9962341836734694,0.9085329896907216,0.961521189806532,0.9234419940356422,0.926804985670306,0.9259511545735044,0.9215454118285232,0.9449611781338118,0.9797979797979798,0.511941941941942,0.7978777777777778,0.710384,0.2816402010050251,0.6998035789473683,0.1548868686868687,0.5732414141414142,0.1729626262626262,0.0775111111111111,0.5198050505050505,0.4884292929292929,0.3424565656565657,0.4820939393939394,0.4901444444444444,0.5214323104575346,0.512070918367347,0.505110947368421,0.8164545454545455,0.8001060606060606,0.8857141414141414,0.9061555555555556,0.9051905190519052,0.9801434343434344,0.9985444444444443,0.8261121212121211,0.8502555555555555,0.3045383838383838,null,0.7792929292929293]},{"boxpoints":false,"name":"MedianMethod (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.5363348404255318,0.2028909370199693,0.3234923843210857,0.2150090909090909,0.3101013303674039,0.7043256013026002,0.5246435995901897,0.4229142218939577,0.4665790011723053,0.5408016819150407,1.0,0.4142342342342342,0.6040853535353535,0.5487118888888889,0.6677165829145728,0.5810863157894737,0.4664898989898989,0.9587232323232324,0.9347838383838384,0.6571878787878788,0.4453084249084248,0.8330145408163263,0.5806143157894736,0.7941434343434344,0.5302414141414141,0.7373429292929293,0.423270707070707,1.0,0.4357848484848485,0.6865707070707071,0.2039909090909091,0.4628323232323232,0.5611666666666666,null,null,null,null,null,0.708837765957447,0.5291029185867896,0.5130214875237614,0.5615186868686868,0.5453948979591836,0.5424164948453608,0.5548960590861338,0.5573469960893163,0.5607906200442572,0.5382971672385581,0.5579975083603087,0.5617947670857673,1.0,0.7856956956956956,0.6511237373737374,0.6512007777777779,0.6681989949748743,0.6507336842105264,0.4130757575757575,0.4124363636363636,0.4942020202020202,0.5068979797979798,0.5308676767676768,0.5023757575757575,0.5065768888888889,0.5127609693877551,0.5086793684210527,0.6187373737373737,0.6582141414141414,0.6313212121212121,0.4678757575757575,1.0,0.489440404040404,0.5040424242424243,0.5000989898989899,0.5505555555555556,0.5897898989898991,0.5446707070707071,0.6732131313131313,null,null,null,null,null,0.8114458799047349,0.9735171985815602,0.6712076806467913,1.0,0.7718726464019265,0.8414174661948955,0.9027272394078372,0.9200436246606112,1.0,0.9193393393393392,0.8000373737373737,0.7865162222222222,0.8800331658291458,0.7553868421052632,0.8108055555555557,0.8204518264033207,0.8571698979591836,0.8104629473684212,0.8017181818181819,0.7990919191919192,0.8365838383838383,1.0,0.9945787878787878,0.997621212121212,0.2177156565656565,0.8375545454545454,null,null,null,null,null,0.9516704787234042,0.9770372340425532,0.5671878534132198,1.0,0.9603790361862736,0.7414296006445982,0.9882331945718964,0.937646637651106,0.9806685187368186,1.0,0.9231131131131132,0.766508585858586,0.7140384444444444,0.8436502512562813,0.7559898947368421,0.964578787878788,0.8921661480494528,0.9602494897959184,0.976341894736842,0.7502464646464646,0.9207373737373736,0.8567606060606061,0.8143575757575757,1.0,0.9982757575757576,0.9954454545454544,0.1323737373737373,0.8538686868686868,null,null,null,null,null,0.5110250000000001,0.4986367127496159,0.5225265285497727,0.5239616161616162,0.5701326530612245,0.5565821305841925,0.4759544687108544,0.541818700462096,0.5428145708792962,0.4550530475515079,0.469236334371849,0.4695380909747151,1.0,0.4586886886886887,0.5096919191919193,0.4828162777777777,0.4641487437185929,0.4894623157894736,0.004040404040404,0.1588176767676767,0.2059434343434343,0.3630696969696969,0.4098464646464647,0.4943838383838383,0.4887378787878788,0.49135101010101,0.488070202020202,0.4749404402318717,0.4684747448979592,0.4773015789473684,0.4876666666666666,0.4841333333333333,0.4886262626262626,0.5018111111111111,1.0,0.5145353535353535,0.4822838383838385,0.4157323232323232,0.5326040404040404,0.1579924242424242,0.5096171717171717,0.5032343434343434]},{"boxpoints":false,"name":"FFT (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.6715112588652483,0.478678955453149,0.3164710411703842,0.4968686868686868,0.4981311243559955,0.4986223083988162,0.5049833887043189,0.6195824118212647,0.4922097062848721,0.6573348600295389,0.4370937093709371,0.3018518518518518,0.8976974747474746,0.8763953888888889,0.7703577889447237,0.8850292631578947,0.5511818181818182,0.9594656565656566,0.9662636363636364,0.9369656565656566,0.7541880952380953,0.8353107142857142,0.593,0.8338828282828282,0.846789898989899,0.9519722222222222,0.3681994949494949,0.4295929592959296,0.5288191919191919,0.4274646464646464,0.1703535353535353,0.1787878787878787,0.8642909090909091,null,null,null,null,null,0.5061874113475177,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.1914085858585859,0.2104080808080808,0.2133212121212121,0.1940626262626262,0.1996151515151515,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.59,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,null,null,null,null,null,0.7840672197757499,0.7065175531914893,0.4002165595899805,0.4852985298529852,0.8215391293650024,0.9256716722540984,0.9098403472769566,0.8397648445819508,0.4814981498149815,0.3932432432432432,0.9199186868686868,0.9722537777777778,1.0,0.9691391578947368,0.8396404040404042,0.7887136273800425,0.7489795918367348,0.7843833684210526,0.8395616161616161,0.9556065656565657,0.8707944444444444,0.4672967296729673,0.8596429292929293,0.8986358585858586,0.8564858585858586,0.9081287878787878,null,null,null,null,null,0.8833333333333333,0.7308333333333333,0.6056310305830266,0.5,0.99009900990099,0.7437810945273632,0.6627906976744187,0.6209476309226932,0.5888223552894212,0.5,0.4956956956956957,0.9999843434343436,0.98,0.9799959798994974,0.98,0.945,0.9637191532505694,0.99,0.957,0.9831040404040404,0.8827015151515152,0.9640025252525252,0.4728282828282828,0.5,0.9769020202020202,0.4303535353535354,0.4594949494949495,0.96,null,null,null,null,null,0.8741886524822695,0.8220713517665132,0.4414918549531991,0.6825050505050506,0.7024650510204081,0.5975288659793814,0.5682169515026895,0.6984620696409825,0.7309709457808249,0.5784290397631133,0.6249982549931358,0.5691503676714575,0.4983998399839984,0.6784384384384384,0.9420378787878788,0.870519,0.7832673366834171,0.938737789473684,0.0141414141414141,0.0148989898989899,0.0253030303030303,0.0819191919191918,0.6126520202020201,0.5015040404040404,0.5180060606060606,0.5973479797979798,0.9841131313131314,0.9356806943846244,0.9437778061224488,0.9616885263157894,0.9805747474747476,0.9986045454545456,0.9801565656565656,0.9010267676767676,0.4974997499749975,0.5552707070707071,0.6750570707070707,0.6339631313131313,0.494780303030303,0.0352020202020201,0.385550505050505,0.9221]},{"boxpoints":false,"name":"LaserDBN (25 errors)","type":"box","visible":"legendonly","x":[0.5669378787878787,null,0.7425252525252526,null,null,0.6434843085106383,null,0.5105478957626507,0.3032343434343434,0.3064645993844763,0.4518079568480689,null,0.4446417293571987,0.4333116060751431,0.5908124895221091,0.9973997399739974,0.7113013013013013,0.8792833333333334,0.8005590555555556,0.7295959798994975,0.8056993684210527,0.6323808080808081,0.9406898989898992,0.9546469696969696,0.7981242424242425,0.5876456043956043,0.777204081632653,0.5547449473684211,0.7674722222222222,0.4354570707070706,0.7852338383838384,0.5769813131313131,0.9761476147614762,0.7296166666666667,0.5864621212121213,0.1191414141414141,0.3534318181818182,0.8169540404040405,null,null,0.68534898989899,null,null,0.6575374113475178,0.5823917050691245,0.8613190885247479,0.5496949494949495,0.5514831632653061,null,null,null,null,null,null,null,0.9985498549854984,0.7064364364364365,0.5998641414141413,0.5840356111111111,0.6136522613065327,0.5828626315789474,0.2582025252525253,0.252630808080808,0.2421212121212121,0.2337656565656566,0.2737237373737374,0.5654434343434344,0.5454616666666667,0.5707102040816326,0.5387082105263159,0.6226181818181818,0.5033828282828283,0.6068338383838383,0.5350818181818182,0.8762876287628762,0.5557136363636364,0.9433651515151515,0.5467333333333333,0.5316444444444445,0.2865555555555555,0.447949494949495,0.5886116161616162,0.1523737373737373,null,0.2247984848484848,null,null,0.7131590369152045,0.5140981382978724,0.7313178854159147,0.1564156415641564,0.8157914740862913,0.5540485652155591,0.5449763804125438,0.3643339822129227,0.9943494349434944,0.807912912912913,0.7990035353535353,0.7148096111111111,0.6035869346733669,0.8291146315789474,0.4322454545454545,0.5128191857011468,0.1940484693877551,0.522517052631579,0.9073035353535354,0.7159737373737374,0.8607616161616162,0.9970497049704968,0.2702818181818182,0.927539393939394,0.6713328282828283,0.7806424242424242,0.5119191919191919,null,0.1498045454545454,null,null,0.8800093085106383,0.902004255319149,0.754992179792584,0.8383338333833383,0.5980016983413666,0.8259879295227099,0.6835829908827126,0.4356696029485615,0.4146185994155493,0.9981998199819982,0.9747797797797798,0.9219111111111112,0.8567147222222222,0.9279879396984924,0.8653973684210525,0.8881565656565658,0.8814353134189927,0.9257525510204084,0.7888950526315791,0.7811883838383838,0.3383777777777778,0.8635297979797979,0.746499494949495,0.9996499649964996,0.7559924242424243,0.9470434343434344,0.4081070707070707,0.9354823232323232,0.6532757575757576,null,0.9781040404040404,null,null,0.7228058510638298,0.6473257296466973,0.5478101013017637,0.6360530303030303,0.7170696428571429,0.7055163230240549,0.5239414002676578,0.6374553511003198,0.6630412193824794,0.5146876088633423,0.5498894010814287,0.5931775681528647,0.9791479147914792,0.6622822822822823,0.6781722222222223,0.6938442222222223,0.7800442211055276,0.6371773684210527,0.9951515151515152,0.9405772727272728,0.8127449494949495,0.6213636363636363,0.4276363636363636,0.595640909090909,0.5378474747474749,0.649619696969697,0.653969191919192,0.6824908498669665,0.6744497448979591,0.6961217894736843,0.7728883838383839,0.597639393939394,0.7779075757575757,0.4034343434343435,0.990899089908991,0.7056151515151515,0.3823863636363636,0.306530808080808,0.5214545454545455,0.9026747474747476,0.5182545454545454,0.6715171717171717]},{"boxpoints":false,"name":"NumentaHTM (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.5966693262411348,0.4369433947772658,0.6300685772034939,0.4593308080808081,0.4737647267100687,0.5357026988742378,0.4810385630741122,0.517060692367425,0.4565511570815627,0.4994619210207337,0.9993999399939996,0.7084084084084085,0.7421166666666665,0.674001,0.6775356783919597,0.7052558947368421,0.8181550505050504,0.5366257575757576,0.6770232323232322,0.7516954545454545,0.510402503052503,0.4988109693877551,0.4719427368421053,0.8107469696969698,0.5106045454545454,0.7060186868686869,0.4419166666666667,0.9992999299929992,0.4713757575757575,0.8108333333333332,0.3778479797979798,0.4206954545454546,0.888149494949495,null,null,null,null,null,0.5371948581560283,0.6527934715821813,0.901226208522823,0.4845116161616162,0.4945375,0.576577147766323,0.6012297394086934,0.5955658566886254,0.6646003707922611,0.5925741029199304,0.6345791480654048,0.6479512713684479,0.9990499049904992,0.698998998998999,0.8410818181818182,0.6787701666666668,0.7653065326633166,0.6633250526315789,0.4506010101010101,0.445140909090909,0.516330303030303,0.4906106060606061,0.4665181818181818,0.6157934343434344,0.5650940555555557,0.6300964285714286,0.5687153684210526,0.6574621212121212,0.6475964646464648,0.5378358585858587,0.9047363636363636,0.9994999499949996,0.5871691919191919,0.8708828282828283,0.5883964646464647,0.5500616161616162,0.4973287878787878,0.8215520202020202,0.7563883838383838,null,null,null,null,null,0.6170153442451896,0.473070390070922,0.5514054717389736,0.9995999599959996,0.480791639119463,0.585973337720013,0.6279403740290382,0.5092158134718417,0.9995999599959996,0.8267317317317316,0.5997358585858586,0.5071661111111111,0.5555075376884422,0.5432907368421053,0.6411338383838383,0.6068125334256141,0.5601563775510204,0.5882194736842106,0.6192358585858586,0.4422040404040404,0.5636459595959595,0.9962996299629964,0.4823641414141414,0.533121212121212,0.4876272727272728,0.6526176767676768,null,null,null,null,null,0.7322566489361703,0.4886524822695035,0.5006992468538704,0.9995999599959996,0.842330808492507,0.6918860133458639,0.617086770256481,0.6088829130424278,0.5657853678893398,0.998099809980998,0.9816566566566568,0.8099959595959595,0.6973962222222222,0.8945195979899496,0.7635814736842106,0.8799151515151515,0.7712849634632889,0.9149829081632652,0.8291801052631579,0.756030808080808,0.5867292929292929,0.6863292929292929,0.6649651515151515,0.9988998899889988,0.5484373737373738,0.4510368686868686,0.846069696969697,0.9067449494949495,null,null,null,null,null,0.7054419326241134,0.6974994623655913,0.8646165692148511,0.7029540404040404,0.7209749999999999,0.6541029209621992,0.7507543504673393,0.6996330924953477,0.6870852462881376,0.6638031719667563,0.625015359895585,0.6350735756844872,0.9994999499949996,0.812032032032032,0.8256414141414141,0.8062997222222222,0.9147316582914572,0.8714502105263157,0.4242757575757576,0.4565631313131313,0.5616651515151515,0.596139898989899,0.4233838383838384,0.6172297979797979,0.4935929292929293,0.6090232323232323,0.6588939393939393,0.5133648227493843,0.7113045918367347,0.6014237894736842,0.8401363636363635,0.6291626262626262,0.7440282828282828,0.7840328282828282,0.9993999399939996,0.7953797979797981,0.7699262626262626,0.6451833333333333,0.6253207070707071,0.5396616161616162,0.5871166666666666,0.863760101010101]},{"boxpoints":false,"name":"Triple ES (Holt-Winter's) (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.6282631205673759,0.3562694316436252,0.5056223681994274,0.4671717171717171,0.4768298427984024,0.4963055931689649,0.6174820570946281,0.5426464051351982,0.5750697783294344,0.5835389080050468,1.0,0.9716416416416416,0.8077808080808081,0.6833831111111112,0.8361728643216081,0.7073732631578947,0.6841626262626263,0.7009686868686869,0.7699272727272728,0.6874949494949496,0.7521772893772893,0.7959913265306122,0.7435366315789473,0.758358585858586,0.7900282828282827,0.8019474747474747,0.6272484848484848,0.999899989999,0.5467444444444445,0.5281176767676768,0.3426888888888889,0.5125666666666666,0.7206969696969696,null,null,null,null,null,0.5379530141843972,0.4443330261136713,0.4880964412040713,0.3206787878787879,0.3397392857142857,0.3472470790378007,0.4082408742347312,0.4915895488905614,0.489476883689196,0.3793684285810134,0.469325540656819,0.5375361730546894,1.0,0.9358958958958958,0.7764606060606061,0.6045943333333333,0.8302552763819095,0.6189993684210526,0.7672545454545454,0.6434606060606061,0.6570313131313132,0.651289898989899,0.6354242424242424,0.4745323232323232,0.5197426666666667,0.5092755102040816,0.5038858947368421,0.7640555555555555,0.7550888888888889,0.7353121212121212,0.5741717171717171,1.0,0.5016888888888889,0.5998676767676769,0.5327959595959596,0.5431060606060606,0.2624919191919191,0.4971212121212121,0.5552535353535354,null,null,null,null,null,0.7151895352881532,0.5771602836879433,0.584033783296037,1.0,0.7849377724922709,0.6753981394182267,0.7153927914615302,0.5889535718989847,1.0,0.8593593593593594,0.801739393939394,0.580829111111111,0.8174351758793971,0.6376446315789474,0.7540090909090909,0.7953882830383859,0.7632897959183673,0.7954972631578947,0.7684989898989899,0.7438888888888888,0.6863070707070706,1.0,0.6686469696969697,0.5178151515151515,0.7602141414141415,0.7535676767676768,null,null,null,null,null,0.7553249999999999,0.5352265957446809,0.2392338602950023,1.0,0.8207219651149881,0.579798476745774,0.6175942377181056,0.5140508453836758,0.6738160693036497,1.0,0.9681581581581582,0.8268848484848486,0.5585593333333334,0.8531537688442211,0.5915631578947368,0.772970707070707,0.7645491859741247,0.7353826530612244,0.7938064210526316,0.7695666666666667,0.7651717171717171,0.7748101010101011,0.6086919191919192,1.0,0.5289202020202021,0.4982959595959595,0.8148838383838383,0.8036808080808081,null,null,null,null,null,0.7305721631205674,0.5563413210445468,0.6187588729276451,0.6103414141414142,0.600304081632653,0.5796814432989691,0.428849910546657,0.656034151520875,0.6209053626613495,0.6038155823877774,0.5802277452563043,0.5735484736915034,1.0,0.8511511511511511,0.7729777777777778,0.5762527777777777,0.8197065326633166,0.620317052631579,0.854780808080808,0.762579797979798,0.7471313131313131,0.6407838383838383,0.6139222222222223,0.5303989898989898,0.5414323232323233,0.5465929292929292,0.5187262626262626,0.5357364435395306,0.4895795918367347,0.530532,0.7389070707070707,0.8127272727272727,0.7699515151515153,0.7211575757575758,1.0,0.7618777777777778,0.633780808080808,0.5129949494949495,0.8028414141414141,0.7507636363636364,0.6482343434343435,0.7926646464646464]},{"boxpoints":false,"name":"PCI (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.7544964539007093,0.3160322580645161,0.4467133472893958,0.5872424242424243,0.5397524902505404,0.8120130036621669,0.7052643369405825,0.599033461247392,0.5549255211022317,0.5287164581356143,1.0,0.8349549549549549,0.837879797979798,0.7725782222222223,0.7988361809045227,0.7752263157894737,0.8516919191919191,0.8276070707070707,0.820280808080808,0.7893838383838384,0.7872954822954823,0.8171795918367346,0.7621242105263157,0.7929717171717171,0.8072313131313131,0.8228555555555556,0.5519878787878788,1.0,0.531,0.5911020202020203,0.1473121212121212,0.3799373737373738,0.7958484848484849,null,null,null,null,null,0.6398893617021277,0.6322869431643625,0.5068822637695806,0.5919171717171717,0.5406780612244898,0.5162113402061856,0.5392483178900862,0.5451264016227791,0.536739133586706,0.4753104155414274,0.4754989530725851,0.4821829002473943,1.0,0.7123123123123123,0.5565979797979799,0.5914134444444444,0.622808040201005,0.5865698947368422,0.4070010101010101,0.4249373737373737,0.4367050505050505,0.4550555555555556,0.504109090909091,0.6260484848484849,0.6281918888888889,0.6222663265306123,0.6303193684210526,0.5635979797979798,0.5724767676767677,0.5776323232323233,0.5509777777777778,1.0,0.6246878787878788,0.5074656565656566,0.5064979797979798,0.5345515151515151,0.1924272727272727,0.5102616161616161,0.6105020202020202,null,null,null,null,null,0.8404584998703075,0.6282278368794326,0.5574118722779663,1.0,0.8912581428867203,0.7860645745656857,0.7727474045171627,0.756552467149659,1.0,0.9343643643643644,0.9177757575757576,0.9040083333333332,0.8999256281407035,0.8745797894736842,0.8845242424242424,0.8944325417901138,0.8998576530612246,0.886627157894737,0.8695757575757576,0.8333787878787878,0.8516040404040405,0.9995999599959996,0.6417989898989898,0.6968464646464646,0.4918383838383838,0.9164383838383838,null,null,null,null,null,0.978186170212766,0.6544187943262412,0.7199374383406725,1.0,0.9967723512425996,0.870191851234693,0.7277902061348928,0.7652509002522342,0.804176886778081,1.0,0.9993093093093092,0.9967757575757576,0.9964425555555556,0.9984643216080402,0.995016210526316,0.9997828282828284,0.9958643721415924,0.9989586734693878,0.9970484210526316,0.9115929292929292,0.8980686868686869,0.9333444444444444,0.9215505050505052,1.0,0.7721212121212121,0.4733858585858586,0.716220202020202,0.9901686868686868,null,null,null,null,null,0.6472989361702128,0.6304721966205837,0.5211761591953608,0.8009555555555555,0.7150561224489796,0.6238309278350516,0.6365464261651114,0.6532127853093592,0.6177242315033056,0.4958143988877277,0.5129422748661177,0.5093335743626262,1.0,0.7065765765765766,0.585010101010101,0.6208948888888889,0.6322251256281407,0.6106675789473685,0.0224525252525252,0.0381010101010101,0.2212979797979798,0.4556060606060606,0.4518636363636363,0.4733656565656565,0.5090646464646464,0.4943464646464647,0.6625868686868687,0.6612402135994376,0.6587270408163266,0.6569757894736843,0.6474363636363636,0.6513707070707071,0.712849494949495,0.7362929292929292,1.0,0.8535969696969696,0.520778787878788,0.7425343434343434,0.4423131313131312,0.1066292929292929,0.491550505050505,0.6288404040404041]},{"boxpoints":false,"name":"DBStream (160 errors)","type":"box","visible":"legendonly","x":[0.6814141414141415,null,0.1265656565656565,null,0.3301010101010101,null,null,0.4557857503789793,null,null,null,null,null,null,null,null,0.343993993993994,0.9945272727272728,0.4781093888888889,0.1021226130653266,0.6816562105263158,0.7933035353535354,0.9956919191919192,null,null,null,null,null,0.8982494949494949,null,0.999710101010101,0.4309090909090909,null,0.8960621212121213,0.4389393939393939,0.5420762626262626,0.5602020202020201,0.8717121212121213,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,0.6595722270234388,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1.0,null,null,null,null,null,null,null,0.7399808510638298,null,null,null,null,null,null,null,null,null,null,0.9999333333333332,null,null,0.8896616842105263,0.9999848484848484,null,0.9999882653061224,null,0.9999969696969696,null,null,null,null,null,null,null,null,null,null,null,0.4510464646464646,null,null,null,null,0.9992747474747476,0.7917033163265306,0.832731443298969,0.775754872835128,null,null,null,null,0.6069282485924011,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null]},{"boxpoints":false,"name":"DeepAnT (10 errors)","type":"box","visible":"legendonly","x":[0.603430303030303,0.4808707070707071,0.7585232323232324,0.3331313131313131,0.0658474747474747,0.4567017730496453,0.5548222734254993,0.3657190981496186,0.299669696969697,0.4846974241822607,0.94237659543897,0.5576366916615372,0.2320750369102766,0.5270929874118486,0.5746764931802317,0.985998599859986,0.9646646646646646,0.8589666666666667,0.7178986666666667,0.6699939698492463,0.884086947368421,0.5043676767676768,0.9801767676767678,0.927120202020202,0.4896181818181818,0.5747236874236874,0.7987346938775509,0.4323233684210527,0.4766747474747474,0.848789898989899,0.9737343434343436,0.2538363636363636,0.7656765676567656,0.6048626262626262,0.267310101010101,0.6600757575757575,0.5662767676767677,0.2145444444444444,0.0007686868686868,0.002960606060606,9.494949494948556e-05,0.1631989898989899,0.000190909090909,0.4561202127659574,0.4620165898617512,0.7118766091580644,0.9906858585858586,0.7642214285714285,0.6402192439862543,0.6777826532104726,0.3535761596113892,0.6253180553305433,0.759791948695643,0.822628604704784,0.6533006695212894,0.9995999599959996,0.224994994994995,0.7598656565656565,0.599914111111111,0.6985768844221105,0.3273631578947368,0.1735333333333333,0.2405070707070707,0.2794131313131313,0.2190171717171717,0.7340888888888889,0.7908141414141414,0.9001387777777778,0.9960908163265304,0.9749021052631578,0.4730757575757576,0.2883646464646465,0.5794474747474747,0.9999848484848486,1.0,0.9997747474747476,0.9999929292929292,0.0467636363636363,0.6506717171717172,0.9999444444444444,0.0793010101010101,0.5253525252525253,0.9973272727272728,0.9943363636363636,0.9992131313131314,0.9999848484848486,0.9994131313131314,0.7452507486794945,0.8531767730496453,0.306459731947352,1.0,0.5443614166447456,0.6624383948204686,0.854517316749098,0.90285875061279,0.9947994799479948,0.1989989989989989,0.9855080808080808,0.6260328888888889,0.4006552763819095,0.893492842105263,0.9731040404040404,0.6790405437665046,0.984970918367347,0.6328696842105264,0.9999171717171718,0.074830303030303,0.2274828282828283,0.9992999299929992,0.9965969696969696,0.9983666666666666,0.5086272727272727,0.6369868686868687,0.7963636363636363,0.222750505050505,0.10760101010101,0.7805707070707071,0.982469696969697,0.9975083333333332,0.6767171985815603,0.5799244447652735,0.999799979998,0.9955491053701794,0.9938332625067337,0.8999516681344345,0.9289488540343068,0.971910479493692,0.8938893889388939,0.4808008008008008,0.6336777777777778,0.5636381111111112,0.7933346733668342,0.4165953684210526,0.0899313131313131,0.9915609700967324,0.9704673469387756,0.5104370526315789,0.4535939393939394,0.9278383838383838,0.9005585858585858,0.5105878787878788,0.9054905490549054,0.9951272727272727,0.9666020202020202,0.8780060606060607,0.9548939393939394,null,null,null,null,null,0.994704964539007,null,0.998966288890493,0.999618181818182,0.9985816326530612,0.9955274914089348,0.9935298326813156,0.9913410556326134,0.9932092862385556,0.9873224749925352,0.9336928073041464,0.9272171607427884,1.0,0.99996996996997,0.9996919191919192,0.9999997777777778,0.9999798994974872,0.9999964210526316,0.9949080808080808,0.9950737373737374,0.994838383838384,0.995420202020202,0.9894575757575758,0.9953717171717172,0.9685535353535354,0.999650505050505,null,null,null,null,0.9999060606060608,0.4084363636363637,0.9992878787878788,0.999977777777778,1.0,0.9998565656565656,0.9999262626262628,0.9999676767676768,0.997078787878788,0.9949131313131312,0.2080909090909091,0.9999929292929294]},{"boxpoints":false,"name":"OceanWNN (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.5800826241134751,0.3420820276497696,0.3197670781298876,0.7695393939393939,0.3653544362416846,0.7836651013734268,0.6632721323806714,0.4032033677656053,0.4811850139073363,0.6057873540906661,1.0,0.6550850850850851,0.6105939393939395,0.6377984444444446,0.806902512562814,0.6197612631578948,0.6719676767676769,0.9677070707070708,0.9226797979797978,0.7457646464646465,0.5893045177045176,0.8424948979591836,0.4804231578947368,0.4648484848484848,0.6549060606060606,0.6323171717171718,0.6724313131313131,1.0,0.292360606060606,0.4679343434343434,0.5196525252525253,0.6287818181818182,0.6280272727272729,null,null,null,null,null,0.423214804964539,0.6585109062980031,0.8667224909165282,0.7505222222222222,0.7951913265306123,0.7876099656357388,0.8129224542448634,0.7890628673653922,0.8189501615780966,0.6499095648473241,0.7305455512756651,0.7611793281009891,1.0,0.8233933933933935,0.7015929292929293,0.7101814444444444,0.7522190954773869,0.7695603157894736,0.654089898989899,0.6990171717171716,0.5270848484848485,0.6253141414141414,0.4091747474747474,0.8164727272727272,0.798719,0.8028867346938776,0.7954614736842105,0.7224070707070708,0.566360606060606,0.6405232323232323,0.7115050505050506,1.0,0.8176333333333333,1.0,0.7775363636363637,0.9002676767676767,0.6157535353535353,0.3980409090909091,0.8072707070707071,null,null,null,null,null,0.706539560637144,0.5863007092198582,0.2353819870545489,1.0,0.1602882179318043,0.9091210952077048,0.6270708457459909,0.5687450817689602,1.0,0.5452152152152152,0.4015585858585859,0.8351287777777778,0.8368180904522613,0.5622098947368421,0.3083242424242424,0.6599597227131329,0.6532168367346938,0.5582863157894736,0.7343727272727273,0.2439434343434343,0.3558535353535353,1.0,0.1561141414141414,1.0,0.5321777777777777,0.6068414141414141,null,null,null,null,null,0.6105223404255319,0.4257255319148936,0.7883736374792464,1.0,0.6814409696348966,0.7299282747401882,0.6857080858080721,0.5458811040946441,0.5426981598441185,1.0,0.9106406406406408,0.5114727272727272,0.6546011666666668,0.4728100502512563,0.3533758947368421,0.4227818181818182,0.7021467623668373,0.6815413265306123,0.7471223157894737,0.5270020202020202,0.6244646464646465,0.4361272727272727,0.7602878787878787,1.0,0.9876808080808082,0.1799161616161616,0.6138727272727272,0.937658585858586,null,null,null,null,null,0.900994680851064,0.8690780337941628,0.988804350441541,0.9708222222222224,0.944704081632653,0.9445955326460482,0.645445518067246,0.935473068552704,0.9607211516539508,0.9585706942992936,0.9261550679831664,0.9272353465115012,1.0,0.8978478478478479,0.8649909090909091,0.8942805,0.8978090452261306,0.8978677894736842,1.0,1.0,0.9551030303030302,0.8449515151515151,0.6724242424242425,0.9966272727272728,0.986978787878788,0.9961565656565656,0.934288888888889,0.9505050286110628,0.9637127551020408,0.9472136842105262,0.8472515151515151,0.5913055555555555,0.9023707070707072,0.916842424242424,1.0,0.9577747474747474,1.0,0.885339393939394,0.9909828282828284,0.9667575757575758,0.4090464646464646,0.9076838383838384]},{"boxpoints":false,"name":"HOT SAX (49 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.5759397163120568,0.7252227342549924,0.5242065497244881,0.2605050505050504,0.516553327218771,0.5279752375991255,0.5438103870008861,0.6638782510335267,0.662880891548832,0.6909078372234523,0.5,null,0.7134343434343434,0.5502222222222223,0.6233165829145728,0.5094736842105263,0.6654040404040404,0.9494949494949496,0.8181818181818181,0.1569696969696969,0.6556654456654457,0.5251020408163265,0.5719052631578947,0.6622222222222223,0.8383838383838385,0.6058585858585859,0.4811111111111111,0.5,0.611111111111111,0.4645454545454545,0.8335353535353536,0.3674242424242424,0.6313636363636363,null,null,null,null,null,0.9879255319148936,null,null,null,null,null,null,null,null,null,null,null,0.5,null,null,0.9976666666666668,null,1.0,0.7136363636363637,0.991919191919192,0.8998484848484848,0.996060606060606,0.9972727272727272,null,null,null,null,null,null,null,null,0.5,null,null,null,null,null,null,null,null,null,null,null,null,0.7886579477928692,0.6912854609929078,0.7777256430616714,0.5,0.8908785665918849,0.689657894830369,0.7049223144900714,0.7414918012812536,0.5,null,0.9374242424242424,0.7607777777777778,0.6683417085427136,0.8866315789473684,0.3580808080808081,0.7597019869387966,0.7395918367346938,0.8924631578947368,0.8183838383838383,0.8636363636363636,0.7587878787878788,0.5,0.9442424242424244,0.8383838383838383,0.3461111111111111,0.7943434343434344,null,null,null,null,null,0.9236879432624114,0.4021808510638298,0.5920618879183811,0.5,0.7940090958282615,0.99444074656821,0.6584743983265049,0.5150291008596853,0.7541185656899697,0.5,null,0.9993939393939394,0.9142222222222224,0.8041708542713568,0.987157894736842,0.6849999999999999,0.7865821280912131,0.9351530612244896,0.8905894736842105,0.5797979797979798,0.4086868686868686,0.8040909090909091,0.3464646464646465,0.5,0.99989898989899,0.1473737373737373,0.4123232323232323,0.9984848484848484,null,null,null,null,null,0.980744680851064,0.8148387096774194,null,0.9990909090909093,0.9450510204081632,0.9402405498281786,0.788912204189972,0.9638497515976702,0.935616817738352,0.9127281464616304,0.9502731338436372,0.9227173365611716,0.5,1.0,null,0.9991111111111112,null,1.0,null,null,null,0.9912626262626264,0.982020202020202,null,null,null,0.966060606060606,0.7258050532227299,0.8318877551020407,0.4982105263157895,0.9987878787878788,1.0,0.973939393939394,null,0.5,null,null,null,null,null,null,null]},{"boxpoints":false,"name":"Subsequence IF (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.5935283687943262,0.3879717357910907,0.419173704853341,0.2080656565656565,0.250430336497636,0.8299664043290029,0.5631165866673243,0.4587175149946781,0.4585886653895073,0.5923310424038808,0.115111511151115,0.616996996996997,0.9166444444444444,0.7370285555555556,0.760297487437186,0.867733052631579,0.6755646464646465,0.9758474747474748,0.9796737373737372,0.7493232323232323,0.6125466422466422,0.8074285714285714,0.48438,0.9046929292929292,0.5795787878787879,0.7589454545454546,0.3540454545454545,0.5842584258425843,0.9303646464646464,0.8187464646464647,0.090140404040404,0.1147070707070707,0.9760131313131312,null,null,null,null,null,0.5851521276595745,0.7357410138248848,0.9941769532471908,0.113260606060606,0.4813413265306122,0.4760773195876288,0.5725630515047789,0.6525690150080574,0.6794907920762329,0.5510243858915851,0.4882771589416683,0.5540612010831661,1.0,0.99992992992993,0.9976050505050506,0.9999426666666666,0.9990753768844222,0.999805894736842,0.1779686868686868,0.1716,0.1837161616161616,0.177770707070707,0.1864070707070707,0.6889262626262627,0.7644273333333333,0.7089714285714286,0.7953456842105264,0.337330303030303,0.6260545454545455,0.9601272727272728,0.989960606060606,0.999899989999,0.7350272727272728,0.9999959595959595,0.6822939393939395,0.5898989898989899,2.0202020202019224e-05,0.5593585858585859,0.9640666666666666,null,null,null,null,null,0.8849596110993208,0.4842710992907801,0.4407372650930003,0.1913191319131912,0.8362810924995925,0.965174129353234,0.9056196155441584,0.856480789899405,0.9585958595859586,0.6488188188188189,0.9546454545454544,0.9833278888888888,0.9846452261306532,0.962304842105263,0.8390696969696969,0.8679470797347788,0.8383989795918367,0.8479117894736843,0.9899181818181818,0.9108292929292928,0.7819070707070708,0.7137713771377138,0.9825323232323232,0.9999969696969696,0.994079797979798,0.9733686868686868,null,null,null,null,null,0.8444205673758866,0.712704964539007,0.4938039895088909,0.9452945294529452,0.9509561421845792,0.8533671067054767,0.9327203989588267,0.8753488712846491,0.7450106629566429,0.2243224322432243,0.7255555555555555,0.8413252525252526,0.9016832222222222,0.730902512562814,0.9293136842105264,0.8229777777777777,0.8308933105618114,0.798361224489796,0.8751776842105262,0.9608777777777778,0.7461686868686869,0.7504212121212122,0.9182525252525252,0.5653565356535654,0.9942707070707072,0.90559898989899,0.8609030303030303,0.9837313131313132,null,null,null,null,null,0.9791581560283688,0.7648978494623655,0.999566880820039,0.99999898989899,0.9989908163265306,0.9257123711340204,0.9633931504395254,0.9750394822403312,0.982733133585445,0.774263306210809,0.7140282750940807,0.7250378270774968,1.0,0.99998998998999,0.9999929292929294,0.9999997777777778,0.9999879396984924,1.0,1.0,1.0,1.0,0.1739323232323232,0.0917474747474747,0.9067757575757576,0.8673060606060605,0.9944464646464646,0.7523131313131312,0.7310248941418639,0.7670040816326531,0.7486738947368421,0.999919191919192,0.7780939393939394,0.9767676767676768,1.0,1.0,0.99999898989899,0.9999969696969696,0.9999969696969696,0.9078535353535354,1.0,0.5017737373737373,0.9999898989898992]},{"boxpoints":false,"name":"SSA (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.627095390070922,0.502389708141321,0.4172549868861137,0.1905565656565656,0.2481583798343467,0.6878742830393395,0.4688026542449319,0.4615901905825081,0.4611685146393181,0.7544036351797967,0.7575757575757576,0.1832332332332332,0.4860712121212121,0.6015773333333334,0.6045427135678392,0.6508371578947368,0.5944328282828283,0.8941070707070709,0.8843065656565656,0.905,0.5542240537240537,0.7098000000000001,0.3599195789473684,0.8648717171717173,0.4822282828282828,0.6614520202020202,0.6824055555555556,0.7506750675067506,0.7061414141414142,0.6137060606060606,0.4375232323232323,0.3494469696969697,0.5546161616161616,null,null,null,null,null,0.793132535460993,0.4315047619047619,0.6990909309656151,0.8708045454545454,0.8981318877551021,0.8648883161512028,0.9037786544422328,0.9014246860190912,0.8915095380352045,0.9321677935433708,0.8848439672389727,0.8758260783651916,0.9994999499949996,0.9961861861861864,0.9977631313131314,0.9977025,0.9874733668341708,0.9989653684210528,0.990431313131313,0.9940525252525252,0.9864585858585858,0.9950979797979798,0.9977651515151514,0.6566419191919192,0.6000313888888889,0.702168112244898,0.7179203157894737,0.9986434343434344,0.9937631313131314,0.9849166666666668,0.919781818181818,0.9912991299129912,0.5481141414141414,0.4526590909090909,0.6440237373737374,0.5503045454545454,0.1147353535353535,0.5088252525252526,0.5326459595959596,null,null,null,null,null,0.7157492026858139,0.6546219858156028,0.5794456074496499,0.9935993599359936,0.6901917285374362,0.7224866584517966,0.8619642261986113,0.6970482690034993,0.9994999499949996,0.5348598598598597,0.6338025252525252,0.5865173888888888,0.5241015075376885,0.6958244210526316,0.5070919191919192,0.6108997689584532,0.669839030612245,0.6427572631578946,0.5628015151515152,0.4972611111111111,0.477209595959596,0.9642964296429644,0.8646656565656565,0.9967181818181818,0.8733803030303029,0.5706282828282829,null,null,null,null,null,0.8828438829787234,0.825272340425532,0.4971712505113212,0.999799979998,0.8540701681037889,0.5473794411958983,0.9572144814737554,0.8449880091936011,0.8993794703466003,0.968196819681968,0.804134134134134,0.968758585858586,0.9913845,0.9136984924623116,0.9977070526315788,0.9835247474747476,0.8334518960934884,0.976555612244898,0.9173868421052632,0.5215808080808081,0.4658585858585858,0.5032252525252525,0.963780808080808,0.9811981198119812,0.9808227272727272,0.9080863636363636,0.946789898989899,0.9734924242424242,null,null,null,null,null,0.9769215425531916,0.6281552995391705,0.5891604706561755,0.9953676767676768,0.9937836734693878,0.993578178694158,0.8512500346817957,0.9807731426720208,0.9781168266688016,0.9827368982967554,0.9691429093889654,0.9575586908363676,0.9972997299729972,0.6083283283283283,0.8551676767676768,0.9289812222222222,0.8696482412060301,0.9316185263157896,0.4096348484848484,0.7399439393939393,0.7642772727272727,0.7307515151515152,0.8388267676767677,0.8646843434343434,0.8454227272727273,0.8592691919191919,0.669359595959596,0.6211988259116106,0.6121119897959184,0.6129570526315788,0.9975414141414142,0.998391414141414,0.999379797979798,0.9109252525252524,0.9985998599859984,0.8915459595959596,0.8661343434343436,0.7332808080808081,0.9167060606060606,0.7294636363636364,0.5789813131313132,0.9137646464646464]},{"boxpoints":false,"name":"NormA (10 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.4500124113475177,0.6480978494623657,0.5633542674270314,0.9168252525252526,0.5794644723589442,0.5086299292394035,0.5290585493795127,0.5742818181133269,0.5538544975529518,0.5846170132801681,0.2030703070307031,0.2493293293293293,0.9591676767676768,null,0.6409527638190955,null,0.8404929292929293,0.4180828282828283,0.5159060606060606,0.3661484848484848,0.6012847374847374,0.4941984693877551,0.6156724210526316,0.2255959595959595,0.9960282828282828,0.989859595959596,0.4912090909090909,0.0133013301330133,0.5434090909090908,0.7062040404040404,0.9877373737373736,0.2411858585858586,0.9631121212121212,null,null,null,null,null,0.9829294326241134,0.8876748079877113,0.3959209798118338,0.999978787878788,0.9974265306122448,0.9991085910652922,0.9970380890039352,0.977022492212016,0.8944261177613191,0.9598149978429042,0.9214730036316086,0.9161367347235132,0.9545954595459548,0.7709009009009009,0.5297272727272727,null,0.4985507537688442,null,0.9999939393939394,0.999639393939394,0.999920202020202,0.9998151515151515,0.9995909090909092,0.999978787878788,0.994289,0.9999607142857144,0.9895949473684212,0.5443727272727273,0.5238393939393939,0.4842626262626263,0.999958585858586,0.9731973197319732,0.9999939393939394,0.9999525252525252,0.9999939393939394,0.9999929292929292,0.999978787878788,0.8898808080808082,0.9998272727272728,null,null,null,null,null,0.4131058335101867,0.1139624113475177,0.5669587814913738,0.8705870587058706,0.2534219378094997,0.3557186005882415,0.3785652457920277,0.3835153755365727,0.0778577857785778,0.2649549549549549,0.5586656565656565,null,0.7993507537688442,null,0.4144636363636363,0.6610590668771362,0.4672540816326531,0.3625153684210526,0.5787646464646464,0.5228717171717172,0.9562535353535354,0.3532853285328533,0.4690525252525252,0.4661727272727273,0.9997444444444444,0.5491030303030304,null,null,null,null,null,0.929234219858156,0.7324478723404255,0.9958593806395726,0.6354635463546354,0.9900359972354444,0.7905522900854437,0.6056229381458307,0.7251352813923104,0.8618070732941949,0.7386238623862387,0.99987987987988,0.9999080808080808,null,0.9998773869346734,null,0.9997666666666668,0.7255905487908817,0.6959510204081631,0.9858871578947368,0.7275848484848485,0.5355949494949495,0.8368070707070707,0.8100363636363637,0.6516151615161516,0.995218181818182,0.6095151515151515,0.5151888888888889,0.9999969696969696,null,null,null,null,null,0.9882982269503546,0.9237330261136713,0.9737010033927668,0.99999898989899,0.9927959183673468,0.9874123711340206,0.988032125790274,0.9841525470623887,0.9795421264009512,0.9784055952647556,0.9636475567832904,0.95001899327113,0.911891189118912,0.99993993993994,0.9998080808080808,null,0.9999798994974872,null,0.99999898989899,1.0,0.99999898989899,0.9999969696969696,0.99999898989899,0.9999949494949496,0.9999363636363636,0.9996414141414142,0.999520202020202,0.983359040406018,0.9966295918367346,0.9953947368421052,0.9999939393939394,0.9999333333333332,0.999921212121212,0.9999939393939394,0.750975097509751,1.0,0.999977777777778,0.9999939393939394,0.9999414141414142,1.0,0.9999969696969696,0.99999898989899]},{"boxpoints":false,"name":"PST (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.5689179078014184,0.4861170506912442,0.2622315262638658,0.9028272727272728,0.6726532032938621,0.8097089813713351,0.6661395033703855,0.5576600482334118,0.560292406029083,0.4671900168513697,0.8875887588758876,0.991111111111111,0.9730282828282828,0.985129777777778,0.9738693467336684,0.9756063157894738,0.9749525252525252,0.649120202020202,0.4434464646464646,0.2675989898989899,0.6723279609279609,0.5606632653061225,0.7463033684210526,0.6404787878787879,0.9680353535353534,0.997268686868687,0.8667868686868687,0.4810481048104811,0.2077393939393939,0.5058858585858585,0.5051444444444444,0.6580878787878788,0.3941888888888889,null,null,null,null,null,0.610893439716312,0.854747926267281,0.6114603335017685,0.990079797979798,0.9949428571428572,0.8091512027491409,0.7775836739000048,0.7838160614714904,0.7375964987595081,0.7065220412338976,0.7201223759890738,0.6833916024362958,0.5228522852285229,0.9910810810810812,0.465830303030303,0.9192923333333332,0.8045788944723617,0.91686,0.7756979797979798,0.9061434343434344,0.7805323232323231,0.889090909090909,0.7883525252525253,0.9695959595959596,0.9707255555555556,0.9923632653061224,0.958857052631579,0.8716313131313131,0.9538424242424242,0.9789343434343434,0.5311545454545454,0.9557955795579558,0.9730949494949496,0.0160494949494949,0.9869757575757576,0.6403676767676768,0.9538,0.454560606060606,0.7605858585858586,null,null,null,null,null,0.6549099668694587,0.8539867021276596,0.3825765778772347,0.0768576857685768,0.8288946078161711,0.2160043744945037,0.533743760273947,0.7047728631333429,0.7760776077607761,0.6456956956956956,0.8553848484848484,0.9322556666666666,0.8582211055276382,0.7521601052631578,0.8840444444444444,0.6698133393414621,0.9643765306122448,0.7132033684210528,0.779711111111111,0.9812131313131311,0.7210767676767676,0.7924792479247925,0.919438383838384,0.7845101010101011,0.5208080808080808,0.9626929292929292,null,null,null,null,null,0.9870826241134752,0.9416523936170214,0.9829692726003996,0.2255225522552255,0.999887977483474,0.98090905813823,0.9737928936743488,0.987880465520229,0.8399607774660174,0.9906990699069907,0.9066866866866868,0.9997040404040404,0.9999996666666666,0.9999095477386936,0.9999955789473683,0.9999989898989898,0.9980004866268678,0.9988770408163268,0.9950322105263156,0.9522929292929292,0.9288868686868686,0.986359595959596,0.992080808080808,1.0,0.9323898989898988,0.914239898989899,0.9718383838383838,0.9999444444444444,null,null,null,null,null,0.964345390070922,0.7868784946236559,0.9704381722370606,0.9994575757575758,0.893859693877551,0.7468439862542956,0.8106325993808999,0.9352293814894996,0.8307873147273198,0.6760300804966657,0.7343545752699314,0.701704535815718,0.8045804580458046,0.9642842842842844,0.9991979797979798,0.9999996666666666,0.9980422110552764,0.9991745263157894,0.9152848484848484,0.8393454545454545,0.205680808080808,0.9994535353535352,0.9741141414141412,0.644009090909091,0.6727838383838384,0.6511858585858585,0.9604757575757576,0.6580409882143676,0.8594454081632653,0.7336568421052632,0.9995454545454544,0.9378040404040404,0.9992080808080808,0.973621212121212,0.7992799279927993,0.9986676767676768,0.9999939393939394,1.0,0.743090909090909,0.2984989898989899,0.5457207070707071,0.9974343434343436]},{"boxpoints":false,"name":"ARIMA (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.8153191489361702,0.480168970814132,0.9559782477922952,0.4390909090909091,0.3432184869158701,0.868526791494106,0.6260019613625954,0.6759716761850971,0.6156230543439913,0.5025934716388386,0.995049504950495,0.7052052052052051,1.0,1.0,0.9974874371859296,0.9957894736842106,0.903838383838384,0.99,0.965959595959596,0.9763636363636364,0.8447252747252746,0.9787755102040816,0.8995789473684211,1.0,1.0,1.0,1.0,0.9750475047504752,0.9595959595959596,0.5353535353535354,0.7474747474747475,0.3939393939393939,1.0,null,null,null,null,null,0.7712765957446809,0.5845353302611366,0.4899805096369017,0.0505050505050505,0.5244897959183673,0.5815807560137457,0.5650784630672272,0.8072977001189078,0.7149170445297425,0.4399854730182468,0.490115974306749,0.5887831942868458,0.9990499049904992,0.9994994994994996,0.9963636363636365,0.9809333333333332,0.996281407035176,0.9869473684210528,0.5252525252525253,0.4646464646464646,0.98989898989899,0.2424242424242424,0.5656565656565656,0.7109595959595959,0.6514305555555555,0.6962755102040816,0.7129105263157894,0.993939393939394,0.8177777777777777,0.8298989898989898,0.9115656565656566,0.9992999299929992,0.5802777777777778,0.6177777777777776,0.6538383838383839,0.5173232323232324,0.0711111111111111,0.6037626262626262,0.7988383838383838,null,null,null,null,null,0.9229744387851349,0.867517730496454,0.7921629490603721,0.905040504050405,0.9048313711055922,0.937322520980159,0.923391937861183,0.8502936584988201,0.645014501450145,0.8253253253253253,0.8575757575757575,0.9717666666666668,0.8065326633165829,0.935157894736842,0.9828282828282828,0.90438053662337,0.9326020408163264,0.8882736842105263,0.8142424242424242,0.7981818181818181,0.8681818181818182,0.785028502850285,0.9604040404040404,0.9318181818181818,0.8460606060606061,0.9133333333333332,null,null,null,null,null,0.9405141843971632,0.8453723404255319,0.4434538848384225,0.9150415041504152,0.992649022453513,0.9021376940179192,0.9259267061473954,0.8364466217516943,0.880678794006891,0.8550355035503551,0.9554554554554554,0.9236363636363636,0.9926666666666668,0.8368844221105528,0.9753894736842106,0.995959595959596,0.988716748136971,0.9905102040816328,0.9865052631578948,0.9821212121212122,0.8549494949494949,0.8763636363636363,0.8795959595959596,0.665016501650165,0.9781818181818182,0.9204040404040404,0.6303030303030303,0.9342424242424242,null,null,null,null,null,0.9277542553191488,0.9115440860215054,0.9102408623884116,0.8956393939393937,0.9943204081632654,0.8770230240549828,0.6493833148535024,0.7671624667885448,0.8526398093380562,0.6105738575569821,0.6242999454330601,0.6488223561183373,0.997049704970497,0.9994994994994996,0.953939393939394,0.9020444444444444,0.9717587939698492,0.998484210526316,0.2379797979797979,0.9111111111111112,0.3208080808080809,0.5357575757575758,0.2109090909090908,0.4642424242424242,0.3705050505050505,0.7058585858585859,0.9950464646464646,0.9413971968802848,0.9519673469387754,0.8649583157894738,0.999230303030303,0.999230303030303,0.9986656565656566,0.8937373737373737,0.9990499049904992,1.0,0.993939393939394,1.0,0.7846464646464646,0.8646464646464647,0.8387878787878787,1.0]},{"boxpoints":false,"name":"Random Black Forest (RR) (14 errors)","type":"box","visible":"legendonly","x":[0.7245666666666666,null,0.8263727272727273,null,null,0.5881455673758865,0.3164847926267281,0.5290242787362546,0.3224565656565656,0.4383441071655403,0.7164991452574864,0.5817474761072399,0.5877100664320031,0.5387267364418442,0.4719204914177332,1.0,0.951991991991992,0.8878222222222222,0.8397771111111111,0.8991839195979899,0.8762357894736841,0.562539393939394,0.9670272727272728,0.9797939393939392,0.7174535353535353,0.7336483516483517,0.8076464285714287,0.6769686315789474,0.8173464646464645,0.7687141414141414,0.853650505050505,0.64830101010101,1.0,0.5394919191919192,0.5639141414141414,0.1302777777777778,0.526010101010101,0.8781656565656566,0.7866333333333334,null,0.8077777777777778,null,null,0.5918235815602837,0.6608482334869431,0.9267277845953944,0.7614676767676767,0.7680831632653062,0.784260824742268,0.7952866326254135,0.8036497983086871,0.8289217963693625,0.645623432520789,0.7778186693183612,0.7617896370704138,1.0,0.9732332332332332,0.8426202020202019,0.8428147777777778,0.8827236180904523,0.842996,0.6878222222222222,0.8441515151515151,0.8343959595959596,0.7654646464646464,0.7340323232323231,0.8087161616161616,0.7610936666666668,0.8152887755102041,0.791417894736842,0.7350747474747474,0.6819676767676768,0.7504696969696969,0.6400030303030304,1.0,0.8008242424242424,0.996239393939394,0.6984424242424242,0.8524171717171717,0.5672737373737373,0.8137676767676767,0.8187050505050504,1.0,null,1.0,null,null,0.7775493421052632,0.6421514184397162,0.5862219976419066,1.0,0.8074813037420521,0.8627949140916502,0.8883736001827772,0.7833840235332079,1.0,0.8793793793793794,0.8538181818181818,0.8714486666666668,0.8660763819095478,0.8367972631578946,0.7614222222222222,0.7782861658206555,0.7414448979591837,0.7948587368421052,0.8521313131313131,0.6878060606060605,0.8330878787878788,1.0,0.6677545454545455,1.0,0.4976111111111111,0.8250030303030303,1.0,null,0.9377666666666667,null,0.1460535353535353,0.8282398936170213,0.7455039007092198,0.595766981881181,1.0,0.8866392144821109,0.6198769394176176,0.5265104221793595,0.7305504339993854,0.7003815298133074,1.0,0.9764064064064064,0.9396828282828285,0.9338653333333332,0.9914713567839196,0.9170046315789474,0.9454303030303032,0.8639463430831502,0.9551698979591836,0.8669193684210525,0.929530303030303,0.7696646464646464,0.8682747474747474,0.7010636363636364,1.0,0.9997080808080808,0.4517060606060606,0.5019262626262626,0.9345464646464646,0.9209464646464648,null,0.9425444444444444,null,null,0.8816078014184398,0.8431568356374808,0.9944483745999664,0.9537444444444444,0.9384311224489796,0.935893470790378,0.6421167507421904,0.922008708824875,0.947377799406976,0.9359022360530508,0.8986104222701842,0.9071286720493827,1.0,0.8853453453453454,0.8668363636363635,0.8876806666666666,0.9233829145728644,0.8982745263157894,0.9890020202020202,0.987759595959596,0.9432161616161616,0.8101181818181818,0.6173191919191919,0.9346777777777778,0.9347161616161616,0.9455373737373736,0.9266020202020202,0.9131065983506452,0.9225678571428572,0.9183195789473686,0.8337161616161616,0.7843282828282829,0.8817707070707071,0.916757575757576,1.0,0.9587252525252524,1.0,0.8944070707070706,0.9854848484848484,0.9717333333333332,0.4836181818181818,0.9017656565656564]},{"boxpoints":false,"name":"HealthESN (38 errors)","type":"box","visible":"legendonly","x":[0.377159595959596,0.6841616161616161,0.8983414141414142,0.4405131313131313,null,0.8520150709219858,0.2402102918586789,0.5266719603455329,0.5169575757575757,0.4380180416263669,0.8179060813901713,0.6648344402392409,0.4728661729362394,0.4767937543168216,0.5467744559507252,0.9988998899889988,0.8933133133133133,0.9284080808080808,null,0.9103437185929648,0.917703157894737,0.888110101010101,0.9676232323232324,0.931180808080808,0.8614575757575758,0.8889189255189256,0.9197474489795918,0.8476475789473684,0.9025949494949496,0.875510101010101,0.949689898989899,0.5979424242424243,0.998999899989999,null,0.5786858585858586,0.1078616161616161,0.4380585858585858,0.9475282828282828,0.9999181818181818,0.9150080808080808,0.999878787878788,0.8641353535353535,0.9720464646464646,0.9109921985815602,0.9000334869431644,0.8062099665535744,0.9931656565656566,0.9958739795918368,0.8660773195876288,0.8647495597552783,null,0.898576990665474,0.9086897940606492,0.9154474757536089,0.9134330266317012,0.9991999199919992,0.9153853853853854,0.8950757575757575,0.9179922222222222,null,0.9137863157894736,0.6855343434343434,0.6742535353535354,null,0.5724363636363636,0.5385151515151516,0.9735272727272728,0.9564178888888888,0.9707653061224488,0.9752486315789471,0.7935515151515152,0.8526232323232323,0.8565858585858587,null,0.9993999399939996,0.9686474747474748,0.9897737373737374,0.9863828282828284,0.6796131313131313,0.9913343434343432,0.4661737373737373,null,0.922090909090909,1.0,0.999939393939394,null,0.9998646464646466,0.8832424748868138,0.5866324468085107,0.5387530980052455,0.9986998699869988,0.9464682401162632,0.9267718962083143,0.7447563693760256,0.7858242714912893,null,0.9757057057057056,0.9628636363636364,0.949798,null,0.9424016842105262,0.9760848484848484,0.9547735246928544,null,0.9499911578947368,null,0.8551282828282828,null,0.998999899989999,0.5500464646464647,0.9998636363636364,0.5900828282828283,0.9482060606060606,0.8181717171717172,0.5223121212121212,0.6896969696969697,null,0.1741494949494949,0.9674631205673758,0.9674634751773048,null,0.9974997499749976,0.9989567903148532,0.8769724192589456,0.7286506572071854,0.7327711557651344,0.8024311415068589,0.9975997599759976,0.9996596596596596,0.9998111111111112,null,0.999734673366834,null,0.9999434343434344,0.9987780621882985,null,null,0.98020101010101,null,0.9809767676767676,null,0.9975997599759976,0.9938,0.4488373737373737,0.8282909090909091,null,0.996189898989899,0.996322222222222,0.9997080808080808,null,0.9638323232323232,0.9132913120567376,null,0.8782896604826874,0.9729515151515152,null,0.8252817869415808,0.8098564122273112,0.8633536483824297,0.8683323951108205,0.8315979350179159,0.8115265258685187,0.7987680905987855,0.9987998799879988,0.9850850850850852,0.9405727272727272,0.9668385555555554,null,0.9623313684210528,0.4434464646464646,0.9805747474747476,null,null,0.5267545454545455,0.5814161616161616,null,null,0.9252353535353536,0.9537735325759652,null,0.9642886315789474,null,0.974810101010101,0.9842757575757576,null,null,null,0.9896131313131312,null,null,0.8428343434343435,0.5164787878787879,0.9893777777777778]},{"boxpoints":false,"name":"ImageEmbeddingCAE (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.6145531914893617,0.4207569892473118,0.1235135590365504,0.5732121212121213,0.4971594290452381,0.9561537653095884,0.8185450156008137,0.5301797854566626,0.6302542824657034,0.5693400490971621,0.8896389638963896,0.6433433433433433,0.9985858585858586,0.143968,0.8456964824120603,0.7919814736842106,0.8002505050505051,0.9925090909090908,0.9468686868686867,0.7932686868686869,0.7033191697191697,0.8435428571428571,0.5793128421052632,0.9561777777777778,0.8884282828282828,0.9856565656565656,0.3443636363636363,0.9856485648564856,0.9675555555555556,0.6712161616161616,0.7632727272727273,0.1064646464646464,0.8305050505050506,null,null,null,null,null,0.6652539007092197,0.9441118279569892,0.978386871676412,0.961349494949495,0.9856489795918368,0.9932068728522336,0.983795466121623,0.9446535499983244,0.8906115550770237,0.947076980434248,0.955505239699512,0.9222236065120796,0.9984498449844984,0.8195195195195195,0.9778989898989898,0.7802133333333333,0.5554773869346734,0.828629894736842,0.9908282828282828,0.4808969696969696,0.6003636363636363,0.9856565656565656,0.9856565656565656,0.9985858585858586,0.9643484444444445,0.9955102040816326,0.9871882105263158,0.8392969696969697,0.6127757575757575,0.9416969696969696,0.8951515151515151,0.9984498449844984,0.9985858585858586,0.9985858585858586,0.4793454545454545,0.992379797979798,0.966521212121212,0.4038383838383838,0.9833292929292928,null,null,null,null,null,0.9015044331258252,0.946490780141844,0.937361822950504,0.9984498449844984,0.9375679511581828,0.9797443540537948,0.975158071918227,0.9644727383541356,0.9984498449844984,0.6017017017017017,0.9888888888888888,0.8159395555555555,0.974596984924623,0.5457903157894737,0.8285656565656566,0.9124919732261988,0.7990040816326531,0.9093642105263158,0.6642343434343434,0.6370828282828283,0.9597979797979798,0.9984498449844984,0.9916040404040404,0.9958707070707072,0.9914747474747474,0.9331636363636364,null,null,null,null,null,0.9714780141843972,0.5457475177304965,0.9059462450973316,0.9984498449844984,0.6726827092245541,0.9950164982821376,0.990459851496832,0.980268232429656,0.966351852563953,0.9984498449844984,0.9348348348348348,0.6572525252525252,0.6523271111111111,0.7281165829145729,0.3309658947368421,0.9939313131313132,0.9757417440389377,0.4714285714285714,0.5533355789473685,0.9985858585858586,0.8398141414141415,0.6877656565656566,0.9939313131313132,0.9376437643764376,0.9965171717171716,0.8046464646464647,0.9184242424242424,0.9974222222222222,null,null,null,null,null,0.9429957446808512,0.7861075268817204,0.8603628576241007,0.9985858585858586,0.994269387755102,0.9886323024054984,0.9935728209813048,0.9815318719556978,0.9836193493631749,0.9690454862147904,0.9644985832078334,0.9486282569659976,0.5664066406640664,0.9764764764764764,0.904460606060606,0.8712355555555554,0.523316582914573,0.9803974736842106,0.9928969696969696,0.9985858585858586,0.9944484848484848,0.9944484848484848,0.8951515151515151,0.9494545454545454,0.9856565656565656,0.869810101010101,0.7374141414141414,0.8522787234002882,0.975461224489796,0.7309187368421053,0.3999595959595959,0.7613333333333333,0.9468686868686867,0.9272161616161616,0.9664466446644664,0.9949656565656566,0.9954828282828284,0.9096323232323232,0.9985858585858586,0.9970343434343436,0.3407434343434343,0.8139555555555555]},{"boxpoints":false,"name":"XGBoosting (RR) (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.6477242907801418,0.4953273425499231,0.6481147284583364,0.4337767676767677,0.3477268931055142,0.7352857104415671,0.5399741522142057,0.4779971105676791,0.5740877440823164,0.5416131818462651,1.0,0.8187587587587588,0.8779414141414141,0.7796296666666667,0.7909909547738694,0.8260759999999999,0.738240404040404,0.7655434343434343,0.7468888888888889,0.7941545454545456,0.7231649572649573,0.6328530612244898,0.6846825263157894,0.7644333333333333,0.8576868686868687,0.824210101010101,0.5487979797979797,1.0,0.5900838383838385,0.7442313131313131,0.4966767676767677,0.4536747474747475,0.8229171717171717,null,null,null,null,null,0.6020420212765958,0.6762327188940092,0.9947351957458072,0.8492252525252526,0.8470408163265306,0.8655120274914089,0.8463512524324356,0.8679478509684743,0.8778949102531856,0.7083438444171938,0.8310408417514253,0.8256546639236013,1.0,0.987007007007007,0.853679797979798,0.8771083333333333,0.9056824120603016,0.8722753684210526,0.8453464646464647,0.8171858585858586,0.7634676767676767,0.7560282828282828,0.7713181818181817,0.8612606060606062,0.8030815555555555,0.8463086734693877,0.8291082105263158,0.8386323232323232,0.8737232323232325,0.8622555555555556,0.8303636363636364,1.0,0.8572959595959595,1.0,0.8188343434343435,0.8948757575757575,0.916660606060606,0.3737353535353535,0.8705888888888889,null,null,null,null,null,0.8868392313950199,0.8471448581560284,0.9590057508602228,1.0,0.9157310619434508,0.9226583685308531,0.931235504293863,0.9310274683122386,1.0,0.706056056056056,0.7529999999999999,0.7509362222222222,0.701035175879397,0.7261052631578947,0.8725020202020201,0.8897531871149693,0.8925494897959184,0.8879187368421053,0.6348,0.8386737373737374,0.7586686868686868,1.0,0.9999858585858586,1.0,0.938449494949495,0.7420878787878789,null,null,null,null,null,0.8918046099290781,0.8424828014184397,0.5636401260858057,1.0,0.9685376760728908,0.9567252014242492,0.9616314864806078,0.9263467542208134,0.9339688871546306,1.0,0.9997097097097096,0.9456464646464646,0.965193222222222,0.9903638190954772,0.9790082105263158,0.9630858585858586,0.9257105943152456,0.9615045918367348,0.9202568421052632,0.8755646464646465,0.9006737373737375,0.940778787878788,0.9474,1.0,0.9721666666666666,0.9072060606060606,0.8291878787878788,0.9459373737373736,null,null,null,null,null,0.8938826241134751,0.915088632872504,0.9971000264683944,0.956879797979798,0.9415372448979592,0.9408103092783506,0.638960964225856,0.9239828857900046,0.9380241517176198,0.9355324894869116,0.8828613326268421,0.900851867549518,1.0,0.8874374374374374,0.8708656565656565,0.9018732222222222,0.8985688442211055,0.8921768421052632,0.995549494949495,0.9955555555555556,0.9561434343434344,0.8357181818181818,0.6466808080808081,0.9970080808080808,0.9873515151515152,0.9845363636363637,0.9361838383838385,0.9216736026819258,0.959344387755102,0.9224332631578946,0.8457777777777777,0.8607585858585858,0.9000202020202019,0.9126646464646464,1.0,0.9532787878787878,1.0,0.8828848484848485,0.9862949494949496,0.9868838383838384,0.4452313131313131,0.8954333333333333]},{"boxpoints":false,"name":"Random Forest Regressor (RR) (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.7359083333333334,0.6973926267281106,0.5083616063909141,0.5188919191919192,0.4665977861550172,0.739914063725662,0.658642754895785,0.4771036779340325,0.5530745015916162,0.5281605877638769,1.0,0.9730930930930932,0.8744444444444444,0.7843474444444445,0.8670110552763819,0.8683591578947368,0.787169696969697,0.962960606060606,0.9766818181818182,0.7429282828282828,0.7945168498168498,0.790791836734694,0.763493894736842,0.8287949494949495,0.8441424242424242,0.8597585858585858,0.6262202020202019,1.0,0.5008818181818182,0.5144050505050505,0.4057818181818182,0.4661525252525252,0.892110101010101,null,null,null,null,null,0.7306235815602837,0.7077036866359447,0.9804740248802908,0.7868909090909089,0.8252102040816328,0.8172587628865979,0.8278320298116153,0.8279694035044693,0.8773519389266523,0.6648151226481948,0.8227789437577001,0.7801432848574026,1.0,0.94984984984985,0.8586717171717172,0.883051,0.90675175879397,0.8765303157894737,0.8844656565656566,0.8866454545454545,0.8607737373737374,0.7950696969696971,0.7590585858585858,0.8621212121212121,0.8307803333333333,0.8749979591836734,0.8608989473684211,0.857950505050505,0.8664151515151514,0.8743646464646464,0.6728161616161616,1.0,0.8714565656565657,0.9415222222222224,0.8093242424242424,0.900740404040404,0.6823161616161616,0.8916191919191919,0.8701777777777778,null,null,null,null,null,0.8802059384432183,0.6107787234042553,0.5839755528285089,1.0,0.9343908125533232,0.9449080751970323,0.9390638278632006,0.8396749557505341,1.0,0.9322322322322322,0.9023383838383838,0.912877,0.9161587939698492,0.880821894736842,0.8801626262626263,0.9002403868396069,0.8700270408163264,0.9050856842105264,0.8647727272727272,0.8351212121212122,0.8824919191919192,1.0,0.6740979797979798,1.0,0.606288888888889,0.8923767676767675,null,null,null,null,null,0.8603177304964538,0.7623975177304965,0.6324213768377487,1.0,0.9340247389725336,0.8068926720616735,0.9261625423588896,0.6438251179011529,0.7926879160932792,1.0,0.9992292292292292,0.9684616161616162,0.9951603333333332,0.9984402010050252,0.9849557894736842,0.9439626262626264,0.9148105260847412,0.9984602040816326,0.9192016842105264,0.9155535353535352,0.8969898989898989,0.9120818181818182,0.857020202020202,1.0,0.9999,0.8172545454545455,0.7913060606060606,0.9989616161616162,null,null,null,null,null,0.8919347517730497,0.8509646697388633,0.9968478548569504,0.9593919191919192,0.9438147959183676,0.9388594501718212,0.6459976865101345,0.9317689212742704,0.9524574390538852,0.9445374318826516,0.9130446588292976,0.9140509356238716,1.0,0.8801201201201202,0.8837727272727273,0.8912997777777778,0.90684824120603,0.9054416842105264,0.99100101010101,0.9949626262626264,0.9496828282828282,0.8326848484848485,0.6489727272727273,0.9728878787878787,0.9502828282828284,0.971190909090909,0.936989898989899,0.9477423922913276,0.9445642857142856,0.9339905263157896,0.845540404040404,0.847979797979798,0.9002727272727272,0.9114919191919192,1.0,0.9651151515151516,1.0,0.8821232323232323,0.9873373737373736,0.9794333333333332,0.4781040404040403,0.9091828282828284]},{"boxpoints":false,"name":"Telemanom (0 errors)","type":"box","visible":"legendonly","x":[0.4974434343434344,0.2303818181818182,0.982438383838384,0.6419757575757575,0.6189959595959595,0.6445624113475178,0.3903215053763441,0.797469621501961,0.1463272727272727,0.2506573821338089,0.8992160333143953,0.6206743237221085,0.4233039133596367,0.558445378954692,0.6224655895881585,0.7702770277027702,0.8499599599599599,0.9733949494949494,0.8885201111111112,0.6380261306532663,0.9999825263157897,0.6976262626262626,0.9502979797979798,0.9907868686868686,0.7107141414141415,0.6697857142857142,0.6635887755102041,0.5357284210526316,0.8916181818181819,0.983477777777778,0.9792020202020204,0.0922080808080808,0.3475347534753475,0.5306232323232323,0.7578989898989898,0.1592919191919192,0.3671353535353535,0.8775393939393941,0.9918484848484848,0.9963707070707072,0.9928929292929294,0.9964565656565656,0.9954979797979798,0.8349989361702128,0.9187348694316436,0.9610529608508388,0.9922909090909092,0.9849836734693876,0.98043058419244,0.9774844068933366,0.9656918231559348,0.9565217391304348,0.951605996248052,0.9476524019961956,0.9317295385334048,0.9914991499149916,0.8714214214214214,0.983339393939394,0.989797,0.937449246231156,0.9962789473684212,0.8676323232323233,0.949480808080808,0.8342212121212121,0.9599333333333332,0.528789898989899,0.9908838383838384,0.922999,0.986630612244898,0.9660353684210528,0.7678212121212121,0.6388393939393938,0.6979373737373737,0.9931747474747474,0.9895989598959896,0.9918828282828284,0.9921737373737374,0.9950626262626264,0.9955787878787878,0.9938848484848484,0.2979030303030303,0.9717535353535354,0.9990929292929293,0.9999292929292928,0.999940404040404,0.9999424242424244,0.9998969696969696,0.9619641709701,0.6313395390070922,0.1242849924204143,0.9944994499449944,0.9852260304321168,0.7033319980361485,0.9755384584292862,0.758073562837359,0.8632863286328633,0.3592492492492493,0.7350909090909091,0.9475574444444445,0.9665909547738694,0.9999774736842104,1.0,0.8878996269285075,0.9997989795918368,0.987994105263158,0.3983181818181818,0.7111717171717172,0.8301545454545455,0.8436843684368437,0.4666616161616161,0.9998818181818182,0.2451585858585858,0.4695060606060606,0.7138454545454546,0.2968353535353535,0.5857070707070707,0.7487838383838384,0.3080909090909091,0.965064539007092,0.9548090425531915,0.8371722129983878,0.7056705670567056,0.9997879573794332,0.9842384160430624,0.9322511242896224,0.7265207644499544,0.8620854931887987,0.9993999399939996,0.9954654654654654,0.9999949494949496,0.999966777777778,0.997262311557789,0.9999774736842106,0.9999515151515151,0.9793551353378436,0.9995591836734694,0.9963650526315788,0.9998383838383836,0.7550444444444444,0.9998909090909092,0.9993898989898988,0.9948994899489948,0.999581818181818,0.9999333333333332,0.8162585858585858,0.9999121212121213,0.9782313131313132,0.993739393939394,0.9921212121212124,0.9480616161616162,0.8488929292929293,0.984081560283688,0.8519443932411674,0.9913405038619792,0.9955676767676768,0.9925102040816326,0.9876707903780068,0.9859265554314433,0.981671251603256,0.977450930332198,0.9809998475913208,0.9674543563732024,0.962606123799756,0.9908990899089908,0.9931431431431432,0.994338383838384,0.9992513333333334,0.9944924623115576,0.9986749473684212,0.9923363636363636,0.9923919191919192,0.992479797979798,0.9975393939393938,0.9905020202020202,0.9949969696969696,0.991219191919192,0.9917242424242424,0.964230303030303,0.8379012913667121,0.9816010204081632,0.9038294736842106,0.9940919191919192,0.9770050505050506,0.9967555555555556,0.9959717171717172,0.9917991799179916,0.9945828282828282,0.9950868686868686,0.9956161616161616,0.9935737373737374,0.9924525252525253,0.3413555555555554,0.995870707070707]},{"boxpoints":false,"name":"Series2Graph (4 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.7535792553191489,0.3641201228878648,0.8613085011670155,0.4460747474747474,null,0.9401340069729932,0.7022928349293811,0.428145959717853,0.5445176601213826,0.6343562587374768,0.6292629262926293,0.4603803803803803,0.9373282828282828,0.6443405555555556,0.4746793969849246,0.9760157894736844,0.9150181818181816,0.975941414141414,null,0.5721272727272727,0.7012774114774114,0.538854081632653,0.3125254736842105,0.9315767676767676,0.935459595959596,0.9262777777777778,0.3195838383838383,0.2666266626662666,0.988877777777778,0.9856363636363638,0.3537555555555555,0.778038383838384,0.6942929292929292,null,null,null,null,null,0.6935847517730498,0.9501992319508448,0.3388079597680405,0.9714303030303032,0.9682709183673468,0.954176288659794,0.976488311464106,0.9246897861087462,0.9454162524514084,0.939936613074744,0.8817178353814984,0.9543077132495132,0.9103910391039104,0.993953953953954,0.8854838383838384,0.9770492222222222,0.7854452261306533,0.977842947368421,0.9999383838383838,0.9999929292929292,0.9998848484848484,0.9998060606060608,0.9974727272727272,0.9789848484848483,0.9965206666666668,0.9998397959183674,0.9955046315789472,0.9672464646464648,0.9964262626262628,0.9992141414141414,0.8016666666666666,0.5411541154115411,0.999880808080808,0.6389212121212121,0.8897050505050506,0.6473838383838384,0.1232343434343434,0.374360606060606,0.9729555555555556,null,null,null,null,null,0.7081854028131485,0.8537308510638297,0.855030198031714,0.7765776577657766,0.9348599068412752,0.8789961814562254,null,0.903441988839756,0.9393939393939392,0.7489189189189189,0.9980848484848484,0.9802862222222224,0.917993969849246,0.8268416842105264,0.5687959595959596,0.8324457232794019,0.9103607142857142,0.8546680000000001,0.4706676767676768,0.6709656565656565,0.9980272727272728,0.4755475547554755,0.9590737373737376,null,0.7511686868686869,0.8471353535353535,null,null,null,null,null,0.9060397163120568,0.9361955673758866,0.973755865155562,0.9942994299429944,0.8329204170038179,0.8114920854448038,0.9522336617913484,0.9373277401350256,0.951836089900418,0.9852985298529852,0.77985985985986,0.8313898989898991,0.9342705555555556,0.9843738693467338,0.999334947368421,0.9827686868686868,0.9260587520215796,0.9917357142857144,0.8875111578947369,0.9974757575757576,0.999941414141414,0.9556575757575756,0.99929898989899,0.9915991599159916,0.9997050505050508,0.8751909090909091,0.999161616161616,0.9913838383838384,null,null,null,null,null,0.8952914893617022,0.3083477726574501,0.919032700498087,0.9992646464646464,0.997,0.9831838487972508,0.9903356821044332,0.9496222460828864,0.9570939182798736,0.9456789417861052,0.9525767730151832,0.9607294610403154,0.9985998599859988,0.998008008008008,0.9983181818181818,0.999964111111111,0.9999979899497488,0.9999997894736842,0.999989898989899,0.999978787878788,0.9999848484848484,0.9999636363636364,0.9994949494949495,0.9769464646464648,0.8956323232323233,0.9032252525252524,0.0690383838383838,0.7389163594869588,0.9157173469387756,0.8324082105263159,0.8057525252525253,0.9997161616161616,0.9996808080808082,0.999978787878788,0.9986998699869988,0.999978787878788,0.9856131313131312,0.9999787878787878,0.9974919191919192,0.9999848484848484,0.8097212121212122,0.9997909090909092]},{"boxpoints":false,"name":"VALMOD (8 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.5954499999999999,null,0.8860078442695927,0.7679585858585858,0.5558007159439048,0.5568047099942679,0.6474346260994129,0.6216181600379715,null,0.6174324843210035,1.0,0.7369969969969971,0.9741080808080808,0.993847111111111,0.9718954773869348,0.9763374736842104,0.8009575757575756,0.2263363636363636,0.4735848484848485,0.4607353535353535,0.7112115995115994,0.4749556122448979,0.7003233684210526,0.8074616161616162,0.9835151515151516,0.9814353535353536,0.8447363636363635,0.935993599359936,0.8869414141414141,0.6886575757575757,null,0.6023525252525253,0.9445616161616162,null,null,null,null,null,0.994306560283688,0.9218831029185868,0.8081378281479342,0.9975767676767676,0.9539392857142858,0.8658855670103094,0.9331752871053254,0.9435968366405584,0.8437919402798781,0.8143396498972614,0.8786800660694115,0.9248956252233352,1.0,1.0,0.9999848484848484,0.9998932222222224,1.0,0.9999568421052633,0.999650505050505,0.9993747474747474,0.998879797979798,0.9984878787878788,0.9977959595959596,0.9990575757575758,0.9562598888888888,0.9864030612244896,0.9897989473684208,0.9999989898989898,0.9999909090909092,0.999990909090909,0.4570575757575756,1.0,0.9992888888888888,0.545309090909091,0.8087454545454544,0.8293202020202021,0.999979797979798,null,0.99999797979798,null,null,null,null,null,0.7033549094510471,0.0550464539007092,0.5378666474169254,0.978097809780978,0.838052448542157,0.350482001666329,0.2254871636251159,0.3026297159486947,0.9492949294929492,0.8474374374374375,0.9064070707070708,0.9254813333333334,0.9090773869346732,0.9033282105263156,0.9607757575757576,0.7950150496225796,0.9236173469387756,0.8443334736842105,0.8461666666666666,0.8746959595959597,0.9799505050505052,0.8965896589658966,0.3239383838383838,0.340540404040404,0.0667010101010101,0.8947828282828283,null,null,null,null,null,0.9881289007092198,null,0.9962905748454004,1.0,0.9999689937677474,0.985172108637342,0.9500160820771671,null,0.8746007301115214,1.0,0.99987987987988,0.9999555555555556,0.9999387777777776,1.0,0.9999456842105264,0.99999797979798,0.9986581567676396,0.9999954081632654,0.9999435789473684,0.8600626262626263,0.9819909090909092,0.9999959595959595,0.9937939393939392,1.0,0.9999969696969696,1.0,0.5871383838383839,0.9999828282828284,null,null,null,null,null,0.9960608156028368,0.6277336405529954,0.6433523424528983,0.9966505050505052,0.9978586734693876,0.98516323024055,0.9834435101197198,0.9916057860349649,0.930403431477922,0.9716502360779335,0.9734892420902098,0.9375244201623716,1.0,0.99992992992993,0.9999868686868688,0.9999223333333334,0.9999798994974874,0.999998105263158,null,1.0,0.9999969696969696,1.0,0.9999767676767676,0.6439010101010101,0.6459828282828283,0.6414040404040404,0.8084343434343434,0.6106459910018254,0.7691979591836735,0.6424964210526316,1.0,0.9998060606060608,0.9999515151515151,0.5024424242424244,1.0,0.9982272727272729,0.6599606060606061,0.4485535353535353,0.8374757575757575,1.0,null,0.9999989898989898]},{"boxpoints":false,"name":"k-Means (0 errors)","type":"box","visible":"legendonly","x":[0.0843292929292929,0.6276828282828284,0.4543555555555555,0.6663383838383838,0.3968858585858585,0.706256914893617,0.4716729646697389,0.4249293775114896,0.5333878787878789,0.2919326784683721,0.9431564496123322,0.7887685102310442,0.5507322432537263,0.5641707426288596,0.5703268960357768,0.0,0.9984784784784784,0.996879797979798,0.9960497777777778,0.9893226130653268,0.9763353684210526,0.8998959595959597,0.995670707070707,0.9638212121212122,0.8182989898989899,0.704782905982906,0.8807974489795918,0.5510564210526316,0.9778616161616162,0.967979797979798,0.9999454545454546,0.5598363636363637,0.0,0.9639535353535352,0.9412717171717172,0.287040404040404,0.1091171717171717,0.9949222222222222,0.9999747474747476,0.9999333333333332,0.9999545454545457,0.9999333333333332,0.9999545454545457,0.7592843971631205,0.9535430107526882,0.9829148920811376,0.9999848484848486,0.9971561224489796,0.9962226804123712,0.9950835771335128,0.9821931783729552,0.9735057729577165,0.9718044490519134,0.9745422290894102,0.964386293413264,0.0,1.0,0.9998828282828284,0.9997548888888887,0.9999899497487438,0.9999642105263158,0.5656848484848485,0.5200575757575757,0.5568363636363636,0.5407797979797979,0.6145424242424242,0.9999313131313132,0.9940844444444444,0.9999357142857144,0.9998254736842104,0.8709060606060606,0.2369323232323232,0.5506757575757575,0.99999898989899,0.0,1.0,0.9999888888888888,0.9999636363636364,0.9997737373737372,0.9946262626262626,0.4786969696969697,0.8912828282828282,0.9992090909090908,0.9976727272727272,0.9996767676767676,0.9972969696969696,0.9996818181818182,0.9994734926193172,0.9463033687943264,0.8743935128371713,0.0,0.9840287897867472,0.9823486912818294,0.986094055660086,0.9952595332171704,0.0,1.0,0.9999929292929292,0.9999287777777778,0.9999979899497488,0.9998846315789474,0.9999030303030304,0.9965723131357808,0.9999535714285714,0.9988408421052632,0.9999636363636364,0.9996949494949496,0.99999898989899,0.9931993199319932,0.999149494949495,0.9998151515151515,0.943620202020202,0.9999848484848486,0.999129292929293,0.9903545454545456,0.9992151515151516,0.9656040404040404,0.998770707070707,0.9902338652482268,0.956538829787234,0.9782680045236892,0.0,0.998244647174082,0.985966178902406,0.9922487470880136,0.9806700043307712,0.9863849519615364,0.0,0.99995995995996,0.9999515151515151,0.9999256666666668,0.9999698492462312,0.9999612631578948,1.0,0.9969282262730872,0.9999505102040817,0.9991496842105264,0.9999868686868688,0.9999717171717172,0.9996434343434344,0.998022222222222,0.0,0.9990929292929294,0.9989848484848484,0.9826444444444444,0.9999444444444444,0.9990222222222224,0.9999969696969696,0.9998828282828284,0.999910101010101,0.999130303030303,0.998754609929078,0.9758557603686636,0.999007675834356,0.9993959595959596,0.999975,0.9981137457044674,0.9955271615836,0.9951322340050488,0.9972197934901856,0.992148231437245,0.9880529543234672,0.9844606677787128,0.0,0.99993993993994,0.9998626262626262,0.9999998888888888,0.9999879396984924,0.9999955789473683,0.9982717171717173,0.998340404040404,0.997959595959596,0.9958575757575756,0.997979797979798,0.9985454545454546,0.9968434343434344,0.99870202020202,0.9995828282828284,0.9511425779975426,0.9976627551020408,0.9805987368421052,1.0,0.749841414141414,0.9998525252525252,0.9999848484848486,0.0,0.9999939393939394,0.9998141414141414,0.99999898989899,0.999738383838384,0.9980383838383838,0.9999939393939394,0.999989898989899]},{"boxpoints":false,"name":"STAMP (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.5859358156028368,0.7478356374807988,0.8850222575134147,0.7660838383838384,0.5551435838603559,0.55566437635275,0.6474455872595696,0.621637904405566,0.4610431731546907,0.6166480697932428,0.2561256125612561,0.6057057057057057,0.9740242424242423,0.9726616666666666,0.7153788944723618,0.9817048421052632,0.7969212121212121,0.2262858585858586,0.4735212121212121,0.4606606060606061,0.711121978021978,0.4749852040816327,0.6988501052631579,0.8040676767676768,0.9835101010101012,0.9814121212121212,0.8446050505050505,0.9337933793379338,0.8859272727272727,0.6870434343434343,0.999949494949495,0.5994353535353535,0.9443979797979798,null,null,null,null,null,0.994259929078014,0.945400307219662,0.980952380952381,0.9999424242424244,0.9990744897959184,0.9997426116838488,0.998938480146085,0.9838532640167474,0.9742420622488048,0.9759170046588664,0.974889236168692,0.9672382019486186,0.4287428742874287,0.7907107107107106,0.9999969696969696,0.9999435555555556,0.9999879396984924,0.9999042105263156,0.9999707070707068,0.9994707070707072,0.9989151515151514,0.9984979797979796,0.9977959595959596,0.9999787878787878,0.963713111111111,0.9983760204081632,0.9836677894736842,0.999978787878788,1.0,0.9999848484848484,0.9999787878787878,0.6154615461546155,0.9999939393939394,0.9993060606060604,0.99999898989899,0.9996868686868688,0.999978787878788,1.0,0.9999989898989898,null,null,null,null,null,0.6983280350995096,0.0552675531914893,0.5380312327053105,0.1603160316031603,0.8377273832040241,0.3505388660331366,0.2243996110158289,0.3012021462127575,0.7018701870187019,0.5892492492492492,0.904360606060606,0.8897029999999998,0.9618070351758794,0.8680734736842106,0.9556656565656564,0.7926023910995802,0.921515306122449,0.8431357894736842,0.8461797979797979,0.8716222222222222,0.97950101010101,0.1806180618061805,0.3241212121212121,0.3406050505050505,0.009910101010101,0.8949141414141414,null,null,null,null,null,0.9881290780141844,0.7708104609929078,0.996289612358334,0.999799979998,0.9999689937677474,0.9852416659431692,0.910357577021846,0.984309203031592,0.8749671937312868,0.999899989999,0.99997997997998,0.9999474747474748,0.9932445555555556,0.9999216080402008,0.999285052631579,0.9999828282828284,0.9986271004464172,0.9999964285714288,0.9999437894736842,0.8593969696969698,0.9799060606060606,0.9999959595959595,0.9937919191919192,0.9994999499949996,0.9999969696969696,1.0,0.5925080808080808,0.9999909090909092,null,null,null,null,null,0.9942063829787234,0.9577135176651306,0.9941086166654636,0.9999838383838384,0.995640306122449,0.9924199312714777,0.991246486006195,0.990990073519192,0.987717585147633,0.9864587610107496,0.9830184369371394,0.9747091600224146,0.9883988398839884,0.99996996996997,0.9998686868686868,0.9999998888888888,0.9999798994974872,0.9999835789473684,1.0,1.0,0.9999848484848484,1.0,1.0,0.9986616161616162,0.9979464646464646,0.9976111111111112,0.9989555555555556,0.8765547768076057,0.9929622448979591,0.8109741052631578,0.99999797979798,0.9998444444444444,0.9998959595959596,1.0,0.9886988698869889,1.0,0.9989333333333332,0.9999535353535354,0.9999676767676768,1.0,0.99999898989899,0.9999939393939392]},{"boxpoints":false,"name":"STOMP (0 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,0.5859358156028368,0.7478356374807988,0.8850222575134147,0.7660838383838384,0.5551435838603559,0.55566437635275,0.6474455872595696,0.6216368652283242,0.757655759120773,0.6166459454478732,0.2561256125612561,0.6057057057057057,0.9740242424242423,0.9726616666666666,0.7153788944723618,0.9817048421052632,0.7969212121212121,0.2262858585858586,0.4735212121212121,0.4606606060606061,0.711121978021978,0.4749852040816327,0.6988501052631579,0.8040676767676768,0.9835101010101012,0.9814121212121212,0.8446050505050505,0.9337933793379338,0.8859272727272727,0.6870434343434343,0.999949494949495,0.5994353535353535,0.9443979797979798,null,null,null,null,null,0.994259929078014,0.945400307219662,0.980952380952381,0.9999424242424242,0.9990744897959184,0.9997426116838488,0.9989384801460848,0.9838532640167472,0.9742420622488048,0.9759170046588664,0.974889236168692,0.9672382019486188,0.4287428742874287,0.7907107107107106,0.9999969696969696,0.9999435555555556,0.9999879396984924,0.9999042105263156,0.9999707070707072,0.9994707070707072,0.9989151515151516,0.9984979797979796,0.9977959595959596,0.999978787878788,0.963713111111111,0.9983760204081632,0.9836677894736844,0.999978787878788,1.0,0.9999848484848484,0.999978787878788,0.6154615461546156,0.9999939393939392,0.9993060606060606,0.99999898989899,0.9996868686868688,0.9999787878787878,1.0,0.9999989898989898,null,null,null,null,null,0.6983280350995096,0.0552675531914893,0.5380312327053105,0.1603160316031603,0.8377273832040241,0.3505388660331366,0.2243996110158289,0.3012021462127575,0.7018701870187019,0.5892492492492492,0.904360606060606,0.8897029999999998,0.9618070351758794,0.8680734736842106,0.9556656565656564,0.7926023910995802,0.921515306122449,0.8431357894736842,0.8461797979797979,0.8716222222222222,0.97950101010101,0.1806180618061805,0.3241212121212121,0.3406050505050505,0.009910101010101,0.8949141414141414,null,null,null,null,null,0.9881290780141844,0.7708104609929078,0.996289612358334,0.999799979998,0.9999689937677474,0.9852416659431692,0.950177416653222,0.9649597227890788,0.8749215959070384,0.999899989999,0.99997997997998,0.9999474747474748,0.9932445555555556,0.9999216080402008,0.999285052631579,0.9999828282828284,0.9986271004464172,0.9999964285714286,0.9999437894736842,0.8593969696969698,0.9799060606060606,0.9999959595959595,0.9937919191919192,0.9994999499949996,0.9999969696969696,1.0,0.5925080808080808,0.9999909090909092,null,null,null,null,null,0.9942063829787234,0.9577135176651306,0.9941086166654636,0.9999838383838384,0.995640306122449,0.9924199312714777,0.991246486006195,0.990990073519192,0.987717585147633,0.9864587610107496,0.9830184369371394,0.9747091600224146,0.9883988398839884,0.99996996996997,0.9998686868686868,0.9999998888888888,0.9999798994974872,0.9999835789473684,0.9999494949494948,1.0,0.9999848484848484,1.0,1.0,0.9986616161616162,0.9979464646464646,0.9976111111111112,0.9989555555555556,0.8765547768076057,0.9929622448979591,0.8109741052631578,0.99999797979798,0.9998444444444444,0.9998959595959596,1.0,0.9886988698869889,1.0,0.9989333333333332,0.9999535353535354,0.9999676767676768,1.0,0.99999898989899,0.9999939393939394]},{"boxpoints":false,"name":"Normalizing Flows (127 errors)","type":"box","visible":"legendonly","x":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,0.962763133640553,0.992723597776655,0.9999848484848486,0.9977234693877552,0.9713721649484536,0.9854956448227872,0.9315226362679612,0.9328484834731,0.9659614371125614,0.8891389085292714,0.9637647201244124,1.0,0.1013413413413413,0.4328747474747474,0.5149238888888888,0.0058452261306532,0.6060642105263158,null,null,null,null,null,0.9999848484848486,0.9998626666666668,0.9999846938775512,0.9998810526315788,0.1717020202020202,0.7869040404040404,0.1331131313131313,0.0046787878787878,0.9985998599859988,0.99999898989899,1.0,1.0,0.7119818181818183,0.999978787878788,0.5446323232323232,0.7419474747474748,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,0.9580383838383838,null,0.989578787878788,null,null,null,0.8475248847926267,0.9998546644529464,null,null,0.9787553264604812,null,null,null,null,0.908483862866852,null,1.0,0.9165765765765764,0.999978787878788,0.9999998888888888,0.999991959798995,0.9999989473684212,1.0,1.0,1.0,0.99999898989899,0.9996727272727272,0.9264101010101012,0.893731313131313,0.9933707070707072,0.9817525252525252,0.999406150306434,0.9964948979591836,0.9990623157894736,null,null,null,1.0,1.0,1.0,1.0,0.9999494949494948,0.7122838383838382,1.0,0.9527292929292928,0.9999969696969696]},{"boxpoints":false,"name":"Torsk (7 errors)","type":"box","x":[0.318989898989899,0.5930434343434344,0.5416989898989899,null,0.2864646464646465,0.5788367907801419,0.4605006912442396,0.6392122043360042,0.3115151515151515,0.3338215981412263,0.5696215320986657,0.8308912211040695,0.3834810826875929,0.578504113995401,0.7400373070452675,0.9184918491849184,0.3071071071071071,0.5621373737373738,0.6226940555555556,0.992635175879397,0.6464167368421052,0.3525757575757575,0.3576767676767677,0.972118181818182,0.87009898989899,0.7759907814407816,0.3411224489795919,0.4545071578947368,0.9872626262626262,0.8471222222222222,0.6487464646464645,0.3035353535353535,0.9127912791279128,0.9365141414141412,0.5124979797979798,0.3618454545454545,0.4761101010101009,0.7286540404040404,0.9260353535353536,null,0.994638383838384,null,0.878910101010101,0.7273654255319149,0.6665185099846389,0.9764979908082484,0.9826101010101008,0.9848428571428572,0.9728900343642612,0.7870224316717241,0.9202588642468214,0.7529908075206572,0.7725486426406746,0.9186822199064554,0.8477552586389527,0.9975497549754976,0.9997797797797796,0.9968141414141414,0.963895777777778,0.9980904522613064,0.973966105263158,0.9953060606060606,0.9955914141414142,0.9939626262626264,0.9991848484848485,0.990260606060606,0.9955707070707068,0.734262,0.9889262755102042,0.9563154736842104,0.9973929292929292,0.9959828282828282,0.9989565656565657,0.9968858585858584,0.9975497549754976,0.9967045454545456,0.994509090909091,0.9954166666666666,0.9879717171717172,0.9956292929292928,0.999989898989899,0.9965979797979798,0.8774313131313132,null,0.9396025252525252,0.918578787878788,0.9091247474747476,0.9618446106866628,0.8661746453900709,0.9782814793426212,0.9975497549754976,0.9932681468975264,0.983096305390082,0.980858389004038,0.9890158965540624,0.9975497549754976,0.9994994994994996,0.9972878787878788,0.9714967222222222,0.997475376884422,0.9928105263157896,0.9974383838383838,0.9749025683825612,0.995820918367347,0.9869324210526316,0.999658585858586,0.9981323232323231,0.999139393939394,0.9985498549854984,0.9943252525252526,0.9957070707070708,0.9990737373737372,0.998040404040404,0.9694848484848484,null,0.7634474747474748,0.95950101010101,0.6463090909090909,0.944399645390071,0.7923451241134751,0.9264443321542868,0.9975497549754976,0.9337661870035876,0.8387214859471396,0.8244818539706288,0.689104148681323,0.8469102430994417,0.9953495349534952,0.9964964964964964,0.9950626262626262,0.8194403888888888,0.9929286432160804,0.8888223157894737,0.985741414141414,0.7730161782418012,0.9686622448979592,0.9466275789473684,0.993479797979798,0.9956484848484848,0.9947242424242424,0.9027878787878788,0.9975497549754976,0.972111111111111,0.9428868686868688,0.9625565656565656,0.9865308080808082,0.997161616161616,null,0.9977252525252526,null,0.9976060606060606,0.9836922872340426,0.9803435483870968,0.9298385427945812,0.9930666666666664,0.9950214285714286,0.995743470790378,0.7014296435670493,0.9863784647143472,0.920897861083812,0.9714898570468796,0.9825986381429506,0.720619906712435,0.9975497549754976,0.9997297297297296,0.999141414141414,0.9230578333333336,0.9997236180904524,0.9827669473684212,0.6218818181818181,0.9640545454545456,0.9950969696969696,0.9104676767676768,0.6403282828282829,0.0771717171717171,0.9725424242424242,0.996489393939394,0.998139393939394,0.9181373069988495,0.993123724489796,0.9063427368421052,0.9993444444444444,0.9999292929292928,0.9992090909090908,0.9950646464646464,0.9993499349934992,0.9971782828282828,0.995160606060606,0.9984535353535354,0.9975818181818183,0.9743151515151516,0.9978565656565656,0.9990313131313132]},{"boxpoints":false,"name":"Left STAMPi (1 errors)","type":"box","x":[null,null,null,null,null,0.5083563829787234,0.7225233486943166,0.90118626530956,0.7711181818181818,0.5484872459364332,0.5540538962499473,null,0.6366282959129939,0.645074731051635,0.6652925692700342,0.4053405340534053,0.7006306306306307,0.9768818181818182,0.8794289999999999,0.7396020100502513,0.946348210526316,0.6116131313131312,0.2608383838383838,0.4904848484848485,0.4792565656565656,0.7251855921855922,0.5080979591836735,0.7361656842105263,0.7873868686868687,0.9815828282828284,0.9754666666666666,0.8468595959595959,0.4506450645064507,0.8956575757575758,0.7830959595959596,0.9647050505050504,0.5868343434343435,0.9495505050505052,null,null,null,null,null,0.969842730496454,0.9458559139784948,0.9818330566183016,0.9999545454545457,0.9994647959183672,0.9987498281786942,0.9982479270562196,0.9832627515490884,0.9729100594473752,0.9361292550859042,0.9738854928796816,0.9593021496257194,0.7322732273227323,0.8449949949949951,0.9999848484848486,0.9980878888888888,0.9999698492462312,0.9999915789473685,0.9998060606060608,0.9994020202020204,0.9989070707070709,0.9984545454545456,0.9977373737373738,0.9999969696969696,0.9629148888888888,0.9974811224489796,0.9850863157894736,0.999960606060606,1.0,1.0,0.9999717171717172,0.7750775077507751,0.9999969696969696,0.9993585858585858,1.0,0.999659595959596,0.999989898989899,0.9997181818181818,0.99999898989899,null,null,null,null,null,0.7112440459347295,0.2878317375886525,0.5032171130200438,0.4563456345634563,0.8295507396986793,0.5057491397995226,0.4618693779096314,0.4542316466360923,0.7535753575357536,0.6090890890890891,0.8664434343434344,0.9258919999999998,0.9528120603015076,0.8434364210526315,0.9617454545454546,0.7922521739371811,0.9093617346938776,0.8366378947368421,0.8129363636363637,0.8445444444444444,0.9820111111111112,0.6140614061406141,0.3026686868686868,0.3427191919191919,0.1268787878787878,0.8557262626262626,null,null,null,null,null,0.9846581560283688,0.8729382978723403,0.9876118289660484,0.9991999199919992,0.9974714917698458,0.9823040121364806,0.94480987353904,0.965322915235092,0.8845677420818958,0.9673967396739674,0.9998898898898898,0.9999171717171718,0.983035888888889,0.9999015075376884,0.9989602105263158,0.9999878787878788,0.9956962476958778,0.9998867346938776,0.9989303157894736,0.865609090909091,0.9449272727272728,0.9999313131313132,0.9765464646464648,0.9643964396439644,0.999738383838384,0.9999030303030304,0.597479797979798,0.9999959595959595,null,null,null,null,null,0.994215070921986,0.956194777265745,0.9953829495416155,0.9994454545454546,0.995497448979592,0.9922725085910652,0.9808001578407062,0.99081679071412,0.9883210734022008,0.9870695621205337,0.9823054002861656,0.9414433176053576,0.7842784278427842,0.99997997997998,0.999858585858586,0.999974,0.9999879396984924,0.99998,0.999989898989899,0.9999939393939394,0.9999747474747476,1.0,1.0,0.4560888888888889,0.9981131313131312,0.9976373737373736,0.9991070707070708,0.9114507878530234,0.9947341836734692,0.8894920000000001,0.9999969696969696,0.9998454545454544,0.9999010101010102,0.99999898989899,0.9253925392539254,0.999989898989899,0.9988929292929292,0.9999909090909092,0.9978303030303032,0.9999969696969696,0.9996878787878788,1.0]},{"boxpoints":false,"name":"EncDec-AD (176 errors)","type":"box","x":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1.0,0.7971571571571572,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1.0,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,0.999899989999,0.9694594594594594,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1.0,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1.0,null,null,null,null,0.7891789178917892,0.5300300300300301,null,null,null,null,null,null,null,null,null,null,null,0.4955495549554956,null,null,null,null,null,null,null,null,null,null,null,null,0.999899989999,null,null,null,null,null,1.0,0.3442642642642642,null,null,null,null,null,null,null,null,null,null,null,null,0.9951995199519952,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1.0,0.9997497497497496,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,0.999899989999,null,null,null,null,null,null,null]},{"boxpoints":false,"name":"GrammarViz (0 errors)","type":"box","x":[null,null,null,null,null,0.6745997340425532,0.3503716589861751,0.7632248129165765,0.587178787878788,0.2305393384070198,0.9017820378665912,0.7868797653215611,0.7038534510686509,0.5858405307502692,0.6382236294830105,0.9998499849985,0.9358458458458458,0.9920934343434344,0.9202985555555556,0.9879336683417084,0.9080590526315788,0.8831954545454546,0.8826323232323232,0.9134757575757576,0.8852388888888889,0.7641655677655678,0.8136905612244898,0.6305768421052632,0.9739636363636364,0.909759595959596,0.9999050505050504,0.7914843434343434,0.9996499649964996,0.9755050505050504,0.9149560606060604,0.5795636363636364,0.5350712121212122,0.9898030303030304,null,null,null,null,null,0.7664650709219858,0.9406467741935484,0.997021583772468,0.9999994949494948,0.998788775510204,0.999596735395189,0.9994355002519356,0.9883788809048324,0.987543388851311,0.9853078503943936,0.988397583591198,0.9818909779451412,0.9999499949995,0.9997897897897898,0.999941414141414,0.9985717777777778,0.9999437185929648,0.9995223157894736,0.9964257575757576,0.9988671717171717,0.992028787878788,0.7778984848484849,0.9999292929292928,0.999900505050505,0.9641808888888888,0.9988857142857144,0.9844013684210526,0.999660101010101,0.4357641414141414,0.999740404040404,0.9999772727272728,0.9999499949995,0.999989898989899,0.9999989898989898,0.9999934343434344,0.9999944444444444,0.99995,0.999859595959596,0.9999974747474748,null,null,null,null,null,0.8710438257522166,0.7574135638297872,0.5009624870665801,0.9997999799979996,0.8448703189341058,0.9353749164169964,0.9203072276177392,0.8658545583120021,0.9996999699969996,0.7137087087087087,0.9883959595959596,0.3783808888888889,0.9915788944723618,0.6136195789473684,0.8413808080808081,0.8611048333669518,0.8400410714285714,0.8486704210526316,0.9999828282828284,0.8219121212121212,0.9172237373737372,0.999799979998,0.8844,0.99,0.999480808080808,0.9930262626262626,null,null,null,null,null,0.6568648049645389,0.4461868794326241,0.6445063644457278,0.5,0.714683151313414,0.3458503482180891,0.7128682992629647,0.7189575025869017,0.5874887765263241,0.5,0.2078078078078078,0.9987015151515152,0.5071109444444444,0.958878391959799,0.9991366315789474,0.7409717171717172,0.8250557729498041,0.4506829081632653,0.7993252631578948,0.999970707070707,0.762240909090909,0.9998873737373736,0.9182646464646465,0.5,0.9995651515151516,0.9937767676767676,0.9945287878787878,0.9921267676767676,null,null,null,null,null,0.9990783687943262,0.9523990783410138,0.9991568613296758,0.5902545454545454,0.9988913265306124,0.9919946735395188,0.9949528995522708,0.9979339857461254,0.9982403862661036,0.9964672873432368,0.9452237359592146,0.9795853889019852,0.9998499849985,0.9998848848848848,0.9997964646464648,0.99948,0.9999939698492464,0.999794947368421,1.0,0.999841414141414,0.9999984848484847,0.9996171717171716,0.999989393939394,0.9997454545454546,0.9898757575757576,0.9993782828282828,0.9996843434343434,0.9359690540915964,0.9989576530612244,0.9654224210526317,0.9999080808080808,0.9974661616161616,0.9998313131313132,0.9999676767676768,0.999899989999,0.9999974747474748,1.0,0.999989898989899,0.9999282828282828,0.99999797979798,0.9999853535353534,0.9999454545454546]},{"boxpoints":false,"name":"Donut (0 errors)","type":"box","x":[null,null,null,null,null,0.6050828014184397,0.5512362519201229,0.591096032147068,0.8277979797979799,0.7337444826410108,0.9733397508833016,0.6329282157046707,0.6200765405997455,0.6075006529734509,0.6776320063787011,0.9815981598159816,0.8544444444444443,0.9934383838383838,0.9354431111111112,0.9351718592964824,0.979566947368421,0.6688525252525251,0.9223181818181818,0.8296696969696971,0.6851272727272727,0.8002525030525031,0.8791545918367348,0.6258475789473684,0.9255868686868688,0.8778030303030304,0.9955414141414142,0.5894080808080808,0.7179717971797179,0.9438262626262626,0.8402282828282827,0.4111676767676767,0.4648888888888889,0.94790101010101,null,null,null,null,null,0.602622340425532,0.9752720430107528,0.9922770037777616,0.9994828282828284,0.9986729591836734,0.9079460481099656,0.9494913165346704,0.9329938514480546,0.9180676440570804,0.921565982432726,0.904606495966388,0.9379678000607732,1.0,0.9982382382382384,0.9993161616161615,0.9998586666666668,0.9911376884422112,0.9946711578947368,0.7607313131313131,0.7614181818181818,0.7612535353535353,0.8214646464646465,0.8148000000000001,0.9992545454545456,0.994813,0.9992066326530612,0.9960806315789474,0.9550020202020202,0.9789070707070708,0.9993909090909092,0.9988151515151515,1.0,0.9919989898989898,0.999980808080808,0.9918222222222222,0.652529292929293,0.5297858585858586,0.2192727272727272,0.9996171717171716,null,null,null,null,null,0.7907580822014715,0.6712343971631205,0.8848971341947592,0.8536853685368537,0.7796437083853854,0.9317835762508004,0.9051969258056196,0.780936241540123,1.0,0.9168168168168168,0.9498464646464646,0.9970883333333334,0.9511557788944724,0.9895223157894736,0.5930121212121212,0.7620226961077318,0.6640505102040816,0.7372454736842106,0.9560919191919192,0.6535252525252525,0.9892969696969696,0.998999899989999,0.9927868686868688,0.9961717171717172,0.9992020202020202,0.9557949494949496,null,null,null,null,null,0.8398079787234043,0.858558510638298,0.746718640968262,0.999899989999,0.951481247730794,0.9892759896811484,0.9820034877041474,0.9750753338551734,0.9125904418134988,0.9735973597359736,0.8123123123123124,0.7353919191919193,0.9917866666666666,0.9799979899497488,0.9982029473684212,0.746240404040404,0.8549849598672938,0.9334709183673467,0.9609943157894736,0.9876020202020204,0.8333909090909092,0.9452909090909092,0.984150505050505,1.0,0.9822474747474748,0.9996535353535352,0.998769696969697,0.9712050505050506,null,null,null,null,null,0.991121985815603,0.9588368663594472,0.9976293943550134,0.9966353535353536,0.9986117346938777,0.9817972508591064,0.9647451410375903,0.9890623997356331,0.9727455290492812,0.9875726662809796,0.982849689020601,0.9820483391303864,1.0,0.9984884884884884,0.999969696969697,0.9988253333333332,0.9983979899497488,0.9999016842105264,0.9975141414141412,0.9982222222222222,0.998620202020202,0.997739393939394,0.7343232323232323,0.704929292929293,0.5726838383838383,0.8165565656565656,0.9998676767676768,0.9981458511628082,0.999655612244898,0.9984667368421052,0.998180808080808,0.9995656565656564,0.9996787878787878,0.9999828282828284,1.0,0.9987838383838384,0.9992101010101012,0.9999676767676768,0.786589898989899,0.9985161616161616,0.1519616161616161,0.99970202020202]},{"boxpoints":false,"name":"SAND (28 errors)","type":"box","x":[null,null,null,null,null,null,null,0.6048441974060974,0.8169590909090909,null,null,null,0.589026574100222,0.5037249429974664,0.6556225491471728,0.5644564456445644,0.92012012012012,0.981058585858586,null,0.7077427135678392,null,null,0.5633636363636363,0.4297656565656566,0.4340797979797979,0.6481871794871794,0.4534464285714286,0.6108292631578948,0.7627272727272727,0.996121212121212,0.961140404040404,0.8479797979797981,0.9842984298429844,0.9562626262626264,0.8356565656565657,0.8588323232323232,0.1671717171717172,0.9063565656565656,null,null,null,null,null,null,null,0.9848860655934936,0.9999636363636364,0.9989908163265306,0.9904646048109964,0.987338661142242,0.9769549456912984,0.9691340552918796,null,0.9654793921209142,0.9649516808196734,0.9956995699569956,0.6131131131131131,0.9999636363636364,null,0.9999778894472362,null,0.9933333333333332,0.9993434343434344,0.9988666666666668,1.0,1.0,0.9986767676767676,0.9834798888888888,0.9999423469387756,0.9933977894736842,0.9999434343434344,0.9963030303030302,0.9999888888888888,0.9999939393939394,0.9733973397339734,0.9981636363636364,0.9991727272727272,0.9967272727272728,0.9927272727272728,0.9999787878787878,0.9995434343434344,0.9997737373737374,null,null,null,null,null,0.7484638622134975,0.7837491134751773,null,0.9984998499849986,0.8743547453038061,0.6295136725800531,0.7672764154540026,0.7752405110777593,0.4845484548454846,0.68003003003003,0.8126747474747475,null,0.9449929648241204,null,0.9597858585858586,0.7705955565445732,0.9869112244897958,0.7379455789473685,0.9004277777777777,0.8282989898989899,0.7430595959595959,0.6180618061806181,0.8572020202020203,0.5152752525252525,0.4482828282828283,0.8927787878787878,null,null,null,null,null,0.9361929964539007,null,null,0.9831983198319832,0.9907601427887004,null,0.928233859092231,0.9069902595319184,null,0.9611961196119612,0.9844944944944944,0.9994676767676768,null,1.0,null,0.9891666666666666,0.9674180078093804,0.9034244897959184,0.9687334736842104,0.9980434343434342,0.8888414141414142,0.9621050505050506,0.7815636363636365,0.940994099409941,0.925430303030303,0.9422828282828284,0.1862787878787878,0.9841323232323232,null,null,null,null,null,0.9839100177304964,null,0.986552611949277,1.0,0.9946867346938776,0.9864845360824742,null,0.9874888255972216,0.977143617807022,0.984380345967702,0.9741666882715136,null,0.999799979998,0.99998998998999,1.0,null,0.9999879396984924,null,0.9971707070707072,0.9999989898989898,0.9999939393939392,0.9999969696969696,0.9999767676767676,null,0.9974747474747476,0.9982949494949496,0.998109090909091,0.9727192722404634,0.9967545918367348,0.9823606315789474,0.999389898989899,0.9998383838383836,0.9998565656565656,0.9999909090909092,0.9886988698869886,0.9964040404040404,0.9981828282828284,0.9974949494949495,0.9987878787878788,0.9999989898989898,0.9999989898989898,0.9971717171717172]},{"boxpoints":false,"name":"DWT-MLEAD (0 errors)","type":"box","x":[null,null,null,null,null,0.5474312056737589,0.4460356374807988,0.4623783055415192,0.8395919191919192,0.6353712096131322,0.960964896915565,0.6541002103515141,0.4643468680107211,0.6007001682496675,0.562468499941315,0.8728372837283729,0.6287687687687687,0.9940929292929293,0.3409777777777777,0.7005386934673367,0.7572395789473685,0.7258262626262626,0.9902707070707072,0.9468363636363636,0.8928767676767677,0.6853118437118437,0.5432326530612245,0.4469456842105263,0.9358626262626264,0.8123555555555556,0.97629898989899,0.1751515151515151,0.6092109210921092,0.9804848484848484,0.831329292929293,0.6363070707070707,0.1258585858585858,0.9620121212121212,null,null,null,null,null,0.6452737588652482,0.9938267281105992,0.9965817271830408,0.9991676767676768,0.9939346938775512,0.9906226804123712,0.9756225510798626,0.9458267811043284,0.9339038524698156,0.9613851546142818,0.9263106228807754,0.9417627221327184,0.9996499649964996,0.9703103103103105,0.9988121212121212,0.9999448888888888,0.9842773869346734,0.9986846315789474,0.8642666666666666,0.8774383838383838,0.6824323232323233,0.8504484848484848,0.8510949494949496,0.9996767676767676,0.974448,0.9979061224489796,0.9891376842105264,0.8921939393939394,0.8456161616161616,0.9942222222222222,0.9999757575757576,0.9996499649964996,0.9997696969696968,0.9986262626262626,0.3186989898989898,0.996210101010101,0.9996363636363635,0.9899555555555556,0.9774545454545456,null,null,null,null,null,0.9271680755989437,0.852,0.9226935200558244,0.8936393639363936,0.8656614979610902,0.9709770872141994,0.927148190432346,0.9241526613718856,0.9832483248324831,0.9066866866866868,0.9184929292929292,0.9720413333333332,0.8936964824120603,0.9865583157894736,0.8646949494949495,0.8885097311331492,0.8694693877551021,0.8667764210526315,0.951438383838384,0.9151515151515152,0.9254060606060606,0.9512451245124512,0.9976646464646464,0.999058585858586,0.9976686868686868,0.955369696969697,null,null,null,null,null,0.9528822695035462,0.9460879432624114,0.966278784378835,0.9992499249924992,0.9642213084830052,0.988667997902111,0.9771009375559832,0.9836434801110568,0.9678790644839388,0.978047804780478,0.9551751751751753,0.9861737373737374,0.9945048888888888,0.9565226130653268,0.9898231578947368,0.9174545454545456,0.96487903679637,0.9522326530612244,0.9696934736842104,0.9826222222222222,0.8883959595959596,0.9780767676767677,0.9801131313131312,0.9944494449444944,0.98530101010101,0.974230303030303,0.9999272727272728,0.9950222222222224,null,null,null,null,null,0.9893992907801418,0.7918193548387098,0.9967087754758296,0.9997979797979798,0.997661224489796,0.9868948453608248,0.9833296168149678,0.9893018001927156,0.9847347099673692,0.9776239175873396,0.9636677298296764,0.9681928869487116,0.9996499649964996,0.7969369369369369,0.9999434343434344,0.9999786666666668,0.9961768844221104,0.9996951578947368,0.997761616161616,0.9950141414141414,0.9980525252525252,0.9964040404040404,0.9025858585858586,0.998440404040404,0.9977616161616162,0.9992,0.3837333333333333,0.8353320990209404,0.9609061224489795,0.8001802105263158,0.9934545454545454,0.9626424242424242,0.9999919191919192,0.9998141414141416,0.9996499649964996,0.9999757575757576,0.9972444444444444,0.9999919191919192,0.999280808080808,0.9974060606060606,0.997939393939394,0.99970101010101]},{"boxpoints":false,"name":"PhaseSpace-SVM (0 errors)","type":"box","x":[null,null,null,null,null,0.7647196808510639,0.3789745007680491,0.4532486344714743,0.789729292929293,0.6327971922356393,0.8419592008322505,0.7497330786233742,0.7607980257710761,0.5964506401451231,0.6385190905181792,0.9925992599259924,0.8715015015015015,0.9985343434343434,0.9891017777777776,0.9196020100502512,0.9975027368421052,0.9056040404040404,0.9498777777777776,0.9121111111111112,0.8867787878787879,0.7795091575091575,0.887563775510204,0.8019103157894737,0.8844151515151515,0.9862959595959596,0.9678949494949496,0.6229464646464646,0.967996799679968,0.6916909090909091,0.9039939393939392,0.3153444444444444,0.3648727272727272,0.9378505050505052,null,null,null,null,null,0.9608475177304964,0.9744115207373272,0.7932799153011382,0.9918222222222222,0.9911,0.8648874570446736,0.9338999225525528,0.9394664967958268,0.8851063007157598,0.8699057976748686,0.8428912408939405,0.8978927444075706,0.9992999299929992,0.98,0.9855424242424244,0.9997875555555557,0.9917788944723618,0.998596,0.99689898989899,0.9983828282828284,0.9974717171717172,0.697130303030303,0.7073429292929292,0.9999282828282828,0.9892806666666666,0.9979158163265306,0.9888376842105264,0.9975626262626264,0.9958545454545452,0.9984343434343436,0.985138383838384,0.9994999499949996,0.98360202020202,0.6190878787878789,0.982220202020202,0.8124080808080808,0.3078656565656566,0.9040696969696972,0.9994666666666666,null,null,null,null,null,0.9798167872217508,0.9419476950354608,0.9274015255420004,0.9962996299629964,0.9902380378456068,0.9801264115182836,0.9822370974299846,0.9769380590611187,0.9962996299629964,0.9547947947947948,0.9933828282828284,0.9987018888888888,0.9934994974874372,0.9974995789473684,0.997740404040404,0.9633441297681812,0.9676270408163266,0.972015789473684,0.984619191919192,0.9949080808080808,0.993,0.9925992599259926,0.992342424242424,0.9916343434343436,0.929581818181818,0.992048484848485,null,null,null,null,null,0.9709762411347518,0.9597925531914894,0.9087369763468804,0.9962996299629964,0.9911827277282734,0.9769112900646272,0.9823422560602372,0.9768062134485642,0.9627805132970192,0.9925992599259924,0.8828628628628629,0.9910878787878789,0.9961347777777776,0.9899638190954774,0.9985067368421052,0.9943171717171716,0.9723539197046986,0.9937170918367346,0.9819130526315792,0.9906555555555556,0.9940828282828282,0.9971030303030304,0.9002171717171717,0.9925992599259924,0.9927858585858584,0.992018181818182,0.9567333333333332,0.997009090909091,null,null,null,null,null,0.9855959219858156,0.7888924731182796,0.711582088115691,0.9949464646464646,0.9978852040816326,0.9171099656357388,0.9467058117098758,0.963248197871817,0.912513745012344,0.9463122931596496,0.9211470133382956,0.8755144774326146,0.9985998599859984,0.9972372372372372,0.9965585858585858,0.9992566666666668,0.9681286432160804,0.999824,0.999040404040404,0.9989838383838384,0.9894494949494947,0.939350505050505,0.7474797979797979,0.5416969696969697,0.6230343434343435,0.6688666666666666,0.902370707070707,0.8247558410757536,0.8925663265306123,0.869889052631579,0.9989454545454546,0.9997737373737374,0.9996808080808082,0.9548939393939396,0.9985998599859988,0.999359595959596,0.6869818181818181,0.99970202020202,0.8739363636363636,0.9970828282828282,0.7798979797979798,0.9991757575757576]},{"boxpoints":false,"name":"Subsequence LOF (0 errors)","type":"box","x":[null,null,null,null,null,0.8530033687943261,0.3991714285714286,0.8901128516085565,0.8533535353535353,0.547112969706911,0.7420063677936474,0.7473593023769618,0.6492844355410048,0.5518477730295804,0.549518047995689,1.0,0.7587187187187188,0.9999555555555556,0.9979937777777778,0.9939256281407036,0.9970825263157896,0.9523454545454546,0.9420464646464648,0.9811929292929292,0.6012222222222223,0.8821407814407816,0.8468719387755101,0.7287416842105264,0.957880808080808,0.9950262626262626,0.9960242424242424,0.9877070707070708,0.9897989798979898,0.8655939393939395,0.9244505050505052,0.8351818181818182,0.3418191919191919,0.9934858585858586,null,null,null,null,null,0.8504195035460993,0.9940402457757296,0.9959036550446352,0.9996888888888888,0.998734693877551,0.7979759450171822,0.991008765845299,0.9716385149221954,0.9164927330306226,0.8815688078120676,0.901845780051818,0.9045085642077744,1.0,1.0,0.999940404040404,0.9998373333333332,0.9999979899497488,0.999922947368421,0.9973242424242424,0.9973545454545454,0.9971424242424244,0.9968040404040404,0.9958010101010102,0.9996262626262626,0.9816136666666666,0.999775,0.9978124210526316,0.962369696969697,0.9998878787878788,0.9974555555555557,0.9997030303030304,1.0,0.9999272727272728,0.99999898989899,1.0,0.8023727272727273,0.4151060606060606,0.987421212121212,0.9999919191919192,null,null,null,null,null,0.980136228718638,0.9497054964539008,0.9729618133256336,1.0,0.9829805790963984,0.8870450279473131,0.9831218685763748,0.954698626909131,1.0,1.0,0.9999717171717172,0.9999598888888888,0.9999979899497488,0.9999526315789474,0.9999222222222224,0.9776987540226396,0.9999571428571428,0.9884724210526316,0.99999898989899,0.9999848484848486,0.9999717171717172,1.0,0.9992131313131312,0.9690020202020202,0.9750535353535352,0.9999848484848486,null,null,null,null,null,0.9808189716312056,0.9489421985815604,0.9912192304915902,1.0,0.9979775934962928,0.9877071424183298,0.9808063234932944,0.9749007520785492,0.9647014004415636,1.0,0.9994194194194194,0.9999969696969696,0.9996385555555556,0.9992120603015076,0.9985926315789474,0.9990121212121212,0.97429505653418,0.9951377551020408,0.9837513684210526,0.9999848484848486,0.9999525252525252,0.9998858585858584,0.9969181818181818,1.0,1.0,0.999689898989899,0.9916717171717172,0.9999969696969696,null,null,null,null,null,0.9957563829787234,0.7309380952380953,0.9977054308332732,0.999959595959596,0.999966836734694,0.993175945017182,0.9928543511866657,0.9942367230169186,0.98996700776781,0.9671417385164728,0.9725430265000192,0.9691500148132588,1.0,0.99992992992993,0.9999626262626262,0.999966,0.9999798994974872,1.0,0.6273676767676767,0.7508505050505049,0.5207959595959596,0.3621979797979797,0.8932505050505051,0.880361616161616,0.7494515151515151,0.9990767676767676,0.9998525252525252,0.6680218232770434,0.9986061224489796,0.6750890526315789,0.9999969696969696,0.999870707070707,0.9998727272727274,1.0,1.0,0.9977111111111112,0.9971878787878788,1.0,0.8719121212121212,0.5558858585858586,0.993359595959596,0.9999959595959595]},{"boxpoints":false,"name":"LSTM-AD (112 errors)","type":"box","x":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,0.995979797979798,null,0.9999878787878788,null,null,null,0.9804622119815668,0.9804037633244304,0.9964434343434344,0.9931933673469387,0.9922079037800688,0.9901760602096528,0.9799623246290982,0.9736572754060254,0.9691325536631769,0.9706860323821116,0.9625651379628056,1.0,0.99986986986987,0.9998050505050504,0.9999984444444444,0.9992723618090452,0.9994353684210526,null,null,null,null,null,0.9998171717171718,0.9986352222222222,0.9999744897959184,0.9992842105263158,0.9982565656565656,0.4507515151515151,0.9996585858585858,0.9995929292929292,1.0,0.9999454545454546,0.9988868686868688,0.9987060606060606,0.9983717171717172,0.9953565656565656,0.8503686868686868,0.9996737373737372,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,0.9988333333333334,0.123730303030303,1.0,null,0.9972696969696968,0.9701877659574468,0.99468356374808,0.997637094251546,0.9976181818181818,0.9940826530612246,0.9908821305841924,0.9923220498465608,0.979359601828848,0.975368979905228,0.9774242699935304,0.9628734640679693,0.955662417303949,1.0,0.9961161161161162,0.9999858585858586,0.9998974444444444,0.9984442211055276,0.9999077894736844,0.9956050505050504,0.9955242424242424,0.9961111111111112,0.9945111111111112,0.9949676767676768,0.9951868686868688,0.9954272727272728,0.9957383838383838,0.9999656565656566,0.9842042507332224,0.9992785714285712,0.9940985263157894,0.996820202020202,0.9533878787878788,0.9962373737373738,0.9996747474747476,1.0,0.9998474747474748,0.999180808080808,0.99979898989899,0.9999636363636364,0.9955838383838383,0.371770707070707,0.9990949494949496]}],                        {"legend":{"title":{"text":"Algorithms"} },"template":{"data":{"bar":[{"error_x":{"color":"#2a3f5f"},"error_y":{"color":"#2a3f5f"},"marker":{"line":{"color":"#E5ECF6","width":0.5},"pattern":{"fillmode":"overlay","size":10,"solidity":0.2} },"type":"bar"}],"barpolar":[{"marker":{"line":{"color":"#E5ECF6","width":0.5},"pattern":{"fillmode":"overlay","size":10,"solidity":0.2} },"type":"barpolar"}],"carpet":[{"aaxis":{"endlinecolor":"#2a3f5f","gridcolor":"white","linecolor":"white","minorgridcolor":"white","startlinecolor":"#2a3f5f"},"baxis":{"endlinecolor":"#2a3f5f","gridcolor":"white","linecolor":"white","minorgridcolor":"white","startlinecolor":"#2a3f5f"},"type":"carpet"}],"choropleth":[{"colorbar":{"outlinewidth":0,"ticks":""},"type":"choropleth"}],"contour":[{"colorbar":{"outlinewidth":0,"ticks":""},"colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]],"type":"contour"}],"contourcarpet":[{"colorbar":{"outlinewidth":0,"ticks":""},"type":"contourcarpet"}],"heatmap":[{"colorbar":{"outlinewidth":0,"ticks":""},"colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]],"type":"heatmap"}],"heatmapgl":[{"colorbar":{"outlinewidth":0,"ticks":""},"colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]],"type":"heatmapgl"}],"histogram":[{"marker":{"pattern":{"fillmode":"overlay","size":10,"solidity":0.2} },"type":"histogram"}],"histogram2d":[{"colorbar":{"outlinewidth":0,"ticks":""},"colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]],"type":"histogram2d"}],"histogram2dcontour":[{"colorbar":{"outlinewidth":0,"ticks":""},"colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]],"type":"histogram2dcontour"}],"mesh3d":[{"colorbar":{"outlinewidth":0,"ticks":""},"type":"mesh3d"}],"parcoords":[{"line":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"parcoords"}],"pie":[{"automargin":true,"type":"pie"}],"scatter":[{"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scatter"}],"scatter3d":[{"line":{"colorbar":{"outlinewidth":0,"ticks":""} },"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scatter3d"}],"scattercarpet":[{"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scattercarpet"}],"scattergeo":[{"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scattergeo"}],"scattergl":[{"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scattergl"}],"scattermapbox":[{"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scattermapbox"}],"scatterpolar":[{"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scatterpolar"}],"scatterpolargl":[{"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scatterpolargl"}],"scatterternary":[{"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scatterternary"}],"surface":[{"colorbar":{"outlinewidth":0,"ticks":""},"colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]],"type":"surface"}],"table":[{"cells":{"fill":{"color":"#EBF0F8"},"line":{"color":"white"} },"header":{"fill":{"color":"#C8D4E3"},"line":{"color":"white"} },"type":"table"}]},"layout":{"annotationdefaults":{"arrowcolor":"#2a3f5f","arrowhead":0,"arrowwidth":1},"autotypenumbers":"strict","coloraxis":{"colorbar":{"outlinewidth":0,"ticks":""} },"colorscale":{"diverging":[[0,"#8e0152"],[0.1,"#c51b7d"],[0.2,"#de77ae"],[0.3,"#f1b6da"],[0.4,"#fde0ef"],[0.5,"#f7f7f7"],[0.6,"#e6f5d0"],[0.7,"#b8e186"],[0.8,"#7fbc41"],[0.9,"#4d9221"],[1,"#276419"]],"sequential":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]],"sequentialminus":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]]},"colorway":["#636efa","#EF553B","#00cc96","#ab63fa","#FFA15A","#19d3f3","#FF6692","#B6E880","#FF97FF","#FECB52"],"font":{"color":"#2a3f5f"},"geo":{"bgcolor":"white","lakecolor":"white","landcolor":"#E5ECF6","showlakes":true,"showland":true,"subunitcolor":"white"},"hoverlabel":{"align":"left"},"hovermode":"closest","mapbox":{"style":"light"},"paper_bgcolor":"white","plot_bgcolor":"#E5ECF6","polar":{"angularaxis":{"gridcolor":"white","linecolor":"white","ticks":""},"bgcolor":"#E5ECF6","radialaxis":{"gridcolor":"white","linecolor":"white","ticks":""} },"scene":{"xaxis":{"backgroundcolor":"#E5ECF6","gridcolor":"white","gridwidth":2,"linecolor":"white","showbackground":true,"ticks":"","zerolinecolor":"white"},"yaxis":{"backgroundcolor":"#E5ECF6","gridcolor":"white","gridwidth":2,"linecolor":"white","showbackground":true,"ticks":"","zerolinecolor":"white"},"zaxis":{"backgroundcolor":"#E5ECF6","gridcolor":"white","gridwidth":2,"linecolor":"white","showbackground":true,"ticks":"","zerolinecolor":"white"} },"shapedefaults":{"line":{"color":"#2a3f5f"} },"ternary":{"aaxis":{"gridcolor":"white","linecolor":"white","ticks":""},"baxis":{"gridcolor":"white","linecolor":"white","ticks":""},"bgcolor":"#E5ECF6","caxis":{"gridcolor":"white","linecolor":"white","ticks":""} },"title":{"x":0.05},"xaxis":{"automargin":true,"gridcolor":"white","linecolor":"white","ticks":"","title":{"standoff":15},"zerolinecolor":"white","zerolinewidth":2},"yaxis":{"automargin":true,"gridcolor":"white","linecolor":"white","ticks":"","title":{"standoff":15},"zerolinecolor":"white","zerolinewidth":2} }},"title":{"text":"AUC_ROC box plots (worst 10 and best 10 algorithms)","x":0.5,"xanchor":"center"},"xaxis":{"title":{"text":"AUC_ROC score"} }},                        {"responsive": true}                    ).then(function(){

var gd = document.getElementById('1c3e9b7b-a080-4248-aa69-8d4d96c10eea');
var x = new MutationObserver(function (mutations, observer) { {
        var display = window.getComputedStyle(gd).display;
        if (!display || display === 'none') { {
            console.log([gd, 'removed!']);
            Plotly.purge(gd);
            observer.disconnect();
        } }
} });

// Listen for the removal of the full notebook cells
var notebookContainer = gd.closest('#notebook-container');
if (notebookContainer) { {
    x.observe(notebookContainer, {childList: true});
} }

// Listen for the clearing of the current output cell
var outputEl = gd.closest('.output');
if (outputEl) { {
    x.observe(outputEl, {childList: true});
} }

                        })                };                });            </script>        </div>

The best five algorithms are LSTM-AD, Subsequence LOF, PhaseSpace-SVM, DWT-MLEAD, SAND

#### Scores of best algorithms

The next plot shows the scorings of the best 5 algorithms on the dataset `poly-same-count-2`.

    <ipython-input-26-48d3dc691f43>:37: UserWarning:

    No anomaly scores found! Probably LSTM-AD was not executed on poly-same-count-2.



var gd = document.getElementById('c0a725e9-900c-474a-b0d3-1e101f32a37d');
var x = new MutationObserver(function (mutations, observer) { {
        var display = window.getComputedStyle(gd).display;
        if (!display || display === 'none') { {
            console.log([gd, 'removed!']);
            Plotly.purge(gd);
            observer.disconnect();
        } }
} });

// Listen for the removal of the full notebook cells
var notebookContainer = gd.closest('#notebook-container');
if (notebookContainer) { {
    x.observe(notebookContainer, {childList: true});
} }

// Listen for the clearing of the current output cell
var outputEl = gd.closest('.output');
if (outputEl) { {
    x.observe(outputEl, {childList: true});
} }

                        })                };                });            </script>        </div>

#### Reliability of reported AUC-ROC values

In the next plot, we show the ROC_AUC score of each algorithm in relation to its relative number of processed datasets.


![png](./img/Test2_24_0.png)


### Runtime-weighted AUC_ROC scores

<div>                            <div id="2e420e75-c590-40ca-a8a8-8c6e32362198" class="plotly-graph-div" style="height:525px; width:100%;"></div>            <script type="text/javascript">                require(["plotly"], function(Plotly) {                    window.PLOTLYENV=window.PLOTLYENV || {};                                    if (document.getElementById("2e420e75-c590-40ca-a8a8-8c6e32362198")) {                    Plotly.newPlot(                        "2e420e75-c590-40ca-a8a8-8c6e32362198",                        [{"alignmentgroup":"True","customdata":[[2.220446049250313e-16],[0.477424251253877],[0.6127665808211158],[0.7238067114140587],[0.7918480889820328],[0.5575842352015112],[0.6471455696100157],[0.8217025989326632],[0.5540104048378895],[0.9953460622419916],[0.9986854364621003],[0.999999],[0.9950679436504352],[0.9989731967027026],[0.5550264359225707],[0.9988217640921004],[0.9945282483095259],[0.9315882613455696],[0.9980543511440675],[0.9993712014134685],[0.9989472085355316],[0.998745667231291],[0.9985911434501815],[0.6994164534840591],[0.9984544936377907],[0.9979798069647937],[0.9990726891783291],[0.998966012168881],[0.720043779863498],[0.8701616247059821],[0.9994099800661053],[0.9994893205371351],[0.9993460060847028],[0.7934213558910632],[0.9985327362377232],[0.9871355596042422],[0.8287997752046041],[0.9991287821247334],[0.9642542774433692],[0.9997663333305814],[0.8219951096221505],[0.9981107322275634],[0.9973295300619377],[0.9077464769808911],[0.9987891387409328],[0.9073759390532279],[0.9965316397982154],[0.9313936190425887],[0.994833135860797],[0.9521550098693042],[0.9925821794467783],[0.9862305945429093],[0.996801027839253],[0.9946799645148728],[0.9983225674373325],[0.9925423430444646],[0.99680175204655],[0.9881441573765599],[0.9990194987256955],[0.988081860348141],[0.9973334527936553]],"hovertemplate":"variable=ROC_AUC<br>algorithm=%{x}<br>value=%{y}<br>overall_time=%{customdata[0]}<extra></extra>","legendgroup":"ROC_AUC","marker":{"color":"#636efa","pattern":{"shape":""} },"name":"ROC_AUC","offsetgroup":"ROC_AUC","orientation":"v","showlegend":true,"textposition":"auto","type":"bar","x":["OmniAnomaly","TAnoGan","Bagel","Hybrid KNN","SR-CNN","DeepAnT","Triple ES (Holt-Winter's)","DSPOT","HealthESN","MultiHMM","TARZAN","normal","RobustPCA","PCC","LSTM-AD","COPOD","COF","Hybrid Isolation Forest (HIF)","S-H-ESD (Twitter)","Spectral Residual (SR)","LOF","IF-LOF","HBOS","Random Forest Regressor (RR)","Isolation Forest (iForest)","CBLOF","Extended Isolation Forest (EIF)","KNN","Telemanom","HOT SAX","TSBitmap","MedianMethod","FFT","Random Black Forest (RR)","LaserDBN","NumentaHTM","ARIMA","PCI","OceanWNN","DBStream","Torsk","Subsequence IF","SSA","ImageEmbeddingCAE","NormA","Normalizing Flows","PST","EncDec-AD","XGBoosting (RR)","Donut","VALMOD","k-Means","Series2Graph","STAMP","STOMP","Left STAMPi","GrammarViz","SAND","DWT-MLEAD","PhaseSpace-SVM","Subsequence LOF"],"xaxis":"x","y":[0.6391801881085044,0.481888757316577,0.5245565876255386,0.448737520906354,0.5022619047619047,0.7163927821374412,0.6683847914868054,0.5524680346195376,0.8396417981111925,0.47317080588116794,0.4783778608126775,0.5,0.5165373480877785,0.5327847740579226,0.9657380849589883,0.5369970085603497,0.5509402984356575,0.5929180529821724,0.5574385904735049,0.5678717934560025,0.5735166060838143,0.5837208714162869,0.5947713633586912,0.851052215578199,0.5979325528069993,0.6027375818080737,0.6041881408243206,0.6079381836717804,0.8518760623328651,0.7278739378266542,0.6343125973662793,0.6411556528437484,0.6412554068321864,0.8083229200598834,0.6504817270720213,0.6649002135207274,0.8080846443527928,0.6909354510368149,0.7254669700318094,0.7081117991079078,0.8722112336970671,0.7551682100122239,0.7627304650946646,0.8415708225150835,0.7805560974593668,0.869715762860108,0.7962011235680917,0.8776640366739377,0.8456288531775102,0.8873187320113683,0.8531793365408944,0.8605206911088406,0.8523886396962325,0.8659966885394946,0.8678834961523373,0.8733677500845153,0.8831526455040067,0.8914972849071141,0.896714436203154,0.9108395801415776,0.9298271357198965],"yaxis":"y"},{"alignmentgroup":"True","customdata":[[2.220446049250313e-16],[0.477424251253877],[0.6127665808211158],[0.7238067114140587],[0.7918480889820328],[0.5575842352015112],[0.6471455696100157],[0.8217025989326632],[0.5540104048378895],[0.9953460622419916],[0.9986854364621003],[0.999999],[0.9950679436504352],[0.9989731967027026],[0.5550264359225707],[0.9988217640921004],[0.9945282483095259],[0.9315882613455696],[0.9980543511440675],[0.9993712014134685],[0.9989472085355316],[0.998745667231291],[0.9985911434501815],[0.6994164534840591],[0.9984544936377907],[0.9979798069647937],[0.9990726891783291],[0.998966012168881],[0.720043779863498],[0.8701616247059821],[0.9994099800661053],[0.9994893205371351],[0.9993460060847028],[0.7934213558910632],[0.9985327362377232],[0.9871355596042422],[0.8287997752046041],[0.9991287821247334],[0.9642542774433692],[0.9997663333305814],[0.8219951096221505],[0.9981107322275634],[0.9973295300619377],[0.9077464769808911],[0.9987891387409328],[0.9073759390532279],[0.9965316397982154],[0.9313936190425887],[0.994833135860797],[0.9521550098693042],[0.9925821794467783],[0.9862305945429093],[0.996801027839253],[0.9946799645148728],[0.9983225674373325],[0.9925423430444646],[0.99680175204655],[0.9881441573765599],[0.9990194987256955],[0.988081860348141],[0.9973334527936553]],"hovertemplate":"variable=weighted ROC_AUC<br>algorithm=%{x}<br>value=%{y}<br>overall_time=%{customdata[0]}<extra></extra>","legendgroup":"weighted ROC_AUC","marker":{"color":"#EF553B","pattern":{"shape":""} },"name":"weighted ROC_AUC","offsetgroup":"weighted ROC_AUC","orientation":"v","showlegend":true,"textposition":"auto","type":"bar","x":["OmniAnomaly","TAnoGan","Bagel","Hybrid KNN","SR-CNN","DeepAnT","Triple ES (Holt-Winter's)","DSPOT","HealthESN","MultiHMM","TARZAN","normal","RobustPCA","PCC","LSTM-AD","COPOD","COF","Hybrid Isolation Forest (HIF)","S-H-ESD (Twitter)","Spectral Residual (SR)","LOF","IF-LOF","HBOS","Random Forest Regressor (RR)","Isolation Forest (iForest)","CBLOF","Extended Isolation Forest (EIF)","KNN","Telemanom","HOT SAX","TSBitmap","MedianMethod","FFT","Random Black Forest (RR)","LaserDBN","NumentaHTM","ARIMA","PCI","OceanWNN","DBStream","Torsk","Subsequence IF","SSA","ImageEmbeddingCAE","NormA","Normalizing Flows","PST","EncDec-AD","XGBoosting (RR)","Donut","VALMOD","k-Means","Series2Graph","STAMP","STOMP","Left STAMPi","GrammarViz","SAND","DWT-MLEAD","PhaseSpace-SVM","Subsequence LOF"],"xaxis":"x","y":[1.4192651234446006e-16,0.23006537914952802,0.3214307466464933,0.3247992292953255,0.39771512945419,0.399449321531988,0.43254225660540024,0.45396441987409464,0.4651702924903953,0.4709686984016903,0.4777490027195147,0.4999995,0.5139897567803549,0.5322377088951701,0.536010167329476,0.5363642994024292,0.5479256899263419,0.5523554980980623,0.5563540107176974,0.5675147164749462,0.5729128126961984,0.5829886911994901,0.5939334158277788,0.5952399223494549,0.597008444242464,0.6015199355432479,0.603627870623009,0.6073095829877913,0.613388059897389,0.6333679683203824,0.6339383402895127,0.6408282278193415,0.6408360296979667,0.6413406672317362,0.6495272988058653,0.6563466443547633,0.6697403715858872,0.6903334957212163,0.6995346289970528,0.7079463369822342,0.7169533686564918,0.7537414950502792,0.760693616316785,0.7639329492679778,0.7796109523204245,0.789159157034585,0.7934396112784919,0.817450683421266,0.841259603780952,0.8448649760355029,0.8468506053227173,0.848671832808747,0.8496618721677072,0.8613895554264619,0.8664276801152896,0.8668544730083573,0.8803281043629396,0.8809278333980313,0.8958352065557696,0.8999840668250098,0.9273477077687591],"yaxis":"y"}],                        {"barmode":"group","legend":{"title":{"text":"variable"},"tracegroupgap":0},"margin":{"t":60},"template":{"data":{"bar":[{"error_x":{"color":"#2a3f5f"},"error_y":{"color":"#2a3f5f"},"marker":{"line":{"color":"#E5ECF6","width":0.5},"pattern":{"fillmode":"overlay","size":10,"solidity":0.2} },"type":"bar"}],"barpolar":[{"marker":{"line":{"color":"#E5ECF6","width":0.5},"pattern":{"fillmode":"overlay","size":10,"solidity":0.2} },"type":"barpolar"}],"carpet":[{"aaxis":{"endlinecolor":"#2a3f5f","gridcolor":"white","linecolor":"white","minorgridcolor":"white","startlinecolor":"#2a3f5f"},"baxis":{"endlinecolor":"#2a3f5f","gridcolor":"white","linecolor":"white","minorgridcolor":"white","startlinecolor":"#2a3f5f"},"type":"carpet"}],"choropleth":[{"colorbar":{"outlinewidth":0,"ticks":""},"type":"choropleth"}],"contour":[{"colorbar":{"outlinewidth":0,"ticks":""},"colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]],"type":"contour"}],"contourcarpet":[{"colorbar":{"outlinewidth":0,"ticks":""},"type":"contourcarpet"}],"heatmap":[{"colorbar":{"outlinewidth":0,"ticks":""},"colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]],"type":"heatmap"}],"heatmapgl":[{"colorbar":{"outlinewidth":0,"ticks":""},"colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]],"type":"heatmapgl"}],"histogram":[{"marker":{"pattern":{"fillmode":"overlay","size":10,"solidity":0.2} },"type":"histogram"}],"histogram2d":[{"colorbar":{"outlinewidth":0,"ticks":""},"colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]],"type":"histogram2d"}],"histogram2dcontour":[{"colorbar":{"outlinewidth":0,"ticks":""},"colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]],"type":"histogram2dcontour"}],"mesh3d":[{"colorbar":{"outlinewidth":0,"ticks":""},"type":"mesh3d"}],"parcoords":[{"line":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"parcoords"}],"pie":[{"automargin":true,"type":"pie"}],"scatter":[{"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scatter"}],"scatter3d":[{"line":{"colorbar":{"outlinewidth":0,"ticks":""} },"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scatter3d"}],"scattercarpet":[{"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scattercarpet"}],"scattergeo":[{"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scattergeo"}],"scattergl":[{"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scattergl"}],"scattermapbox":[{"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scattermapbox"}],"scatterpolar":[{"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scatterpolar"}],"scatterpolargl":[{"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scatterpolargl"}],"scatterternary":[{"marker":{"colorbar":{"outlinewidth":0,"ticks":""} },"type":"scatterternary"}],"surface":[{"colorbar":{"outlinewidth":0,"ticks":""},"colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]],"type":"surface"}],"table":[{"cells":{"fill":{"color":"#EBF0F8"},"line":{"color":"white"} },"header":{"fill":{"color":"#C8D4E3"},"line":{"color":"white"} },"type":"table"}]},"layout":{"annotationdefaults":{"arrowcolor":"#2a3f5f","arrowhead":0,"arrowwidth":1},"autotypenumbers":"strict","coloraxis":{"colorbar":{"outlinewidth":0,"ticks":""} },"colorscale":{"diverging":[[0,"#8e0152"],[0.1,"#c51b7d"],[0.2,"#de77ae"],[0.3,"#f1b6da"],[0.4,"#fde0ef"],[0.5,"#f7f7f7"],[0.6,"#e6f5d0"],[0.7,"#b8e186"],[0.8,"#7fbc41"],[0.9,"#4d9221"],[1,"#276419"]],"sequential":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]],"sequentialminus":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]]},"colorway":["#636efa","#EF553B","#00cc96","#ab63fa","#FFA15A","#19d3f3","#FF6692","#B6E880","#FF97FF","#FECB52"],"font":{"color":"#2a3f5f"},"geo":{"bgcolor":"white","lakecolor":"white","landcolor":"#E5ECF6","showlakes":true,"showland":true,"subunitcolor":"white"},"hoverlabel":{"align":"left"},"hovermode":"closest","mapbox":{"style":"light"},"paper_bgcolor":"white","plot_bgcolor":"#E5ECF6","polar":{"angularaxis":{"gridcolor":"white","linecolor":"white","ticks":""},"bgcolor":"#E5ECF6","radialaxis":{"gridcolor":"white","linecolor":"white","ticks":""} },"scene":{"xaxis":{"backgroundcolor":"#E5ECF6","gridcolor":"white","gridwidth":2,"linecolor":"white","showbackground":true,"ticks":"","zerolinecolor":"white"},"yaxis":{"backgroundcolor":"#E5ECF6","gridcolor":"white","gridwidth":2,"linecolor":"white","showbackground":true,"ticks":"","zerolinecolor":"white"},"zaxis":{"backgroundcolor":"#E5ECF6","gridcolor":"white","gridwidth":2,"linecolor":"white","showbackground":true,"ticks":"","zerolinecolor":"white"} },"shapedefaults":{"line":{"color":"#2a3f5f"} },"ternary":{"aaxis":{"gridcolor":"white","linecolor":"white","ticks":""},"baxis":{"gridcolor":"white","linecolor":"white","ticks":""},"bgcolor":"#E5ECF6","caxis":{"gridcolor":"white","linecolor":"white","ticks":""} },"title":{"x":0.05},"xaxis":{"automargin":true,"gridcolor":"white","linecolor":"white","ticks":"","title":{"standoff":15},"zerolinecolor":"white","zerolinewidth":2},"yaxis":{"automargin":true,"gridcolor":"white","linecolor":"white","ticks":"","title":{"standoff":15},"zerolinecolor":"white","zerolinewidth":2} }},"xaxis":{"anchor":"y","domain":[0.0,1.0],"title":{"text":"algorithm"} },"yaxis":{"anchor":"x","domain":[0.0,1.0],"title":{"text":"value"} }},                        {"responsive": true}                    ).then(function(){

var gd = document.getElementById('2e420e75-c590-40ca-a8a8-8c6e32362198');
var x = new MutationObserver(function (mutations, observer) { {
        var display = window.getComputedStyle(gd).display;
        if (!display || display === 'none') { {
            console.log([gd, 'removed!']);
            Plotly.purge(gd);
            observer.disconnect();
        } }
} });

// Listen for the removal of the full notebook cells
var notebookContainer = gd.closest('#notebook-container');
if (notebookContainer) { {
    x.observe(notebookContainer, {childList: true});
} }

// Listen for the clearing of the current output cell
var outputEl = gd.closest('.output');
if (outputEl) { {
    x.observe(outputEl, {childList: true});
} }

                        })                };                });            </script>        </div>