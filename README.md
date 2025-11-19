# Vision ARC

<img src="assets/teaser.png" alt="Teaser" width="90%" />

This is the project webpage for the paper [ARC Is a Vision Problem!](https://arxiv.org/abs/2511.14761)

We formulate ARC with a vision paradigm, casting it as an image-to-image translation task.

## Visualization Galleries ✨

### VARC on ARC-1 🎉
[🌟🌟Explore the full gallery on ARC-1 VARC ↗🌟🌟](https://lillian039.github.io/assets/html/varc/arc_agi_1_VARC.html)

[🌟🌟Explore the full gallery on ARC-1 VARC-ensemble ↗🌟🌟](https://lillian039.github.io/assets/html/varc/arc_agi_1_ensemble.html)

![ARC1 Success](assets/arc1_success.png)

### VARC on ARC-2 🎉
[🌟🌟Explore the full gallery on ARC-2 VARC ↗🌟🌟](https://lillian039.github.io/assets/html/varc/arc_agi_2_VARC.html)

[🌟🌟Explore the full gallery on ARC-2 VARC-emsemble ↗🌟🌟](https://lillian039.github.io/assets/html/varc/arc_agi_2_ensemble.html)


![ARC2 Success](assets/arc2_success.png)

### Pixel-to-Pixel Attention 🔍
Attention heatmaps highlighting how VARC aligns pixels between inputs and outputs.  
[🌟🌟Try interactive attention demos ↗🌟🌟](https://lillian039.github.io/assets/html/varc/attention_heatmap.html)

![Heatmap](assets/heatmap.png)

### Task Token t-SNE Demonstrations 🔍
t-SNE of task embeddings, on the 400 task tokens learned from the ARC-1 training set. Each point represents a single task.

[🌟🌟Try interactive task token demos ↗🌟🌟](https://lillian039.github.io/assets/html/varc/task_embedding_tsne.html)

![tSNE](assets/tsne_task_token.png)
## Training and Inference Code
Coming soon.


The Abstraction and Reasoning Corpus (ARC) is designed to promote research on abstract reasoning, a fundamental aspect of human intelligence. Common approaches to ARC treat it as a language-oriented problem, addressed by large language models (LLMs) or recurrent reasoning models. However, although the puzzle-like tasks in ARC are inherently visual, existing research has rarely approached the problem from a vision-centric perspective. In this work, we formulate ARC within a vision paradigm, framing it as an image-to-image translation problem. To incorporate visual priors, we represent the inputs on a “canvas” that can be processed like natural images. It is then natural for us to apply standard vision architectures, such as a vanilla Vision Transformer (ViT), to perform image-to-image mapping. Our model is trained from scratch solely on ARC data and generalizes to unseen tasks through test-time training. Our framework, termed Vision ARC (VARC), achieves 60.4% accuracy on the ARC-1 benchmark, substantially outperforming existing methods that are also trained from scratch. Our results are competitive with those of leading LLMs and close the gap to average human performance.