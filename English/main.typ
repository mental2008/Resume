#import "@preview/octique:0.1.0": *

#show heading: set text(font: "Linux Biolinum")

#show link: underline

// Uncomment the following lines to adjust the size of text
// The recommend resume text size is from `10pt` to `12pt`
#set text(
  size: 10pt,
)

// Feel free to change the margin below to best fit your own CV
#set page(
  margin: (x: 0.9cm, y: 1.3cm),
)

// For more customizable options, please refer to official reference: https://typst.app/docs/reference/

#set par(justify: true)

#show outline: it => {
  show heading: set align(center)
  it
}

#let chiline() = {v(-3pt); line(length: 100%); v(-5pt)}

// = Lingyun Yang 杨凌云

#align(center, text(size: 20pt)[
  #text(size: 24pt)[*Lingyun Yang*] #text(font: "华文楷体", size: 20pt)[杨凌云]
])

#align(center, text(10pt)[
  #octique-inline("mail") #link("mailto:lyangbk@cse.ust.hk") | #octique-inline("globe") #link("https://www.lingyunyang.com")[lingyunyang.com] | #octique-inline("book") #link("https://paper.lingyunyang.com")[Reading Notes] | #emoji.phone.receiver (+86) 135-0284-6103 | #octique-inline("location") Hong Kong
])

== Education
#chiline()

#link("https://hkust.edu.hk")[*Hong Kong University of Science and Technology*] #h(1fr) *Hong Kong, China* \
Ph.D. in Computer Science and Engineering, Advisor: *Wei Wang* #h(1fr) Sep. 2020 -- Present \
- Research Domain: Cluster Management, Model Serving Systems, Resource Scheduling

#link("https://www.scut.edu.cn/en/")[*South China University of Technology*] #h(1fr) *Guangzhou, China* \
B.Eng. in Computer Science and Technology, Elite Class (GPA 3.82/4) #h(1fr) Sep. 2016 -- Jul. 2020 \
- National Scholarship, The First Prize Scholarship

== Research and Selected Projects
#chiline()

I have a broad interest in resource management for large-scale data centers / AI infrastructure. Specifically, my research focuses on: (a) improving resource efficiency for AI/GPU clusters; (b) building efficient and low-cost AI model serving systems. \

#link("https://arxiv.org/abs/2407.02031")[*SwiftDiffusion: Efficient Diffusion Model Serving with Add-on Modules*] #h(1fr) (review, 2407.02031) \
#text(style: "italic", size: 8pt)[*Lingyun Yang*, Suyi Li, Xiaoxiao Jiang, Hanfeng Lu, Zhipeng Di, Weiyi Lu, Jiawei Chen, Kan Liu, Yinghao Yu, Tao Lan, Guodong Yang, Lin Qu, Liping Zhang, Wei Wang] \
- Built an efficient text-to-image system that generates images with diffusion models and add-on modules (i.e., ControlNets and LoRAs).
- Incorporated system designs, e.g., ControlNet-as-a-Service, async bounded LoRA loading, latent parallelelism for CFG computation.
- Achieved up to *7.8×* in serving latency and *1.6×* in throughput without compromising image quality.

*Prism: GPU-Disaggregated Serving for Deep Learning Recommendation Models at Scale* #h(1fr) (review) \
#text(style: "italic", size: 8pt)[*Lingyun Yang*, Yongchen Wang, Yinghao Yu, Qizhen Weng, Jianbo Dong, Kan Liu, Chi Zhang, Yanyi Zi, Hao Li, Zechao Zhang, Nan Wang, Yu Dong, Menglei Zheng, Lanlan Xi, Xiaowei Lu, Liang Ye, Guodong Yang, Binzhang Fu, Tao Lan, Liping Zhang, Lin Qu, Wei Wang] \
- Proposed a GPU-disaggregated DLRM serving system to eliminate resource mismatch and meet elastic demand; leveraged RDMA network to offload computation on separate GPU and CPU nodes; resource-aware graph partitioning; topology-aware scheduling.
- In daily scenarios (e.g., a crowded GPU cluster with > 90% allocation rate), reduced CPU fragments by *53%* and GPU fragments by *27%*; In the Double 11 Shopping Festival, saved up to *90%* of GPUs when loaning GPU servers from training clusters.

#link("https://www.usenix.org/conference/atc23/presentation/weng")[*Beware of Fragmentation: Scheduling GPU-Sharing Workloads with Fragmentation Gradient Descent*] #h(1fr) (ATC'23) \
#text(style: "italic", size: 8pt)[*Lingyun Yang*, Qizhen Weng, Yinghao Yu, Wei Wang, Xiaochuan Tang, Guodong Yang, Liping Zhang] #h(1fr) #octique-inline("mark-github") #link("https://github.com/hkust-adsl/kubernetes-scheduler-simulator")[hkust-adsl/kubernetes-scheduler-simulator] \
- Formally quantified *statistical* GPU resource fragments in shared GPU clusters.
- Proposed the fragmentation gradient descent (FGD) scheduling algorithm to reduce resource fragmentation.
- Reduced unallocated GPUs by up to *49%* compared to state-of-the-art scheduling policies.

*Large-Scale GPU Sharing and Overcommitment in Production* \
- Enabled large-scale GPU sharing in production clusters, with over *10k* shared GPU containers running daily.
- Support the co-location of GPU tasks with different priorities (e.g., latency-sensitive, best-effort).
- Designed and implemented the node-level agent and the cluster-level controller.

#link("https://dl.acm.org/doi/10.1145/3472883.3486987")[*Morphling: Fast, Near-Optimal Auto-Configuration for Cloud-Native Model Serving*] #h(1fr) (SoCC'21) \
#text(style: "italic", size: 8pt)[*Lingyun Yang*, Luping Wang, Yinghao Yu, Wei Wang, Bo Li, Xianchao Sun, Jian He, and Liping Zhang] #h(1fr) #octique-inline("mark-github") #link("https://github.com/kubedl-io/morphling")[kubedl-io/morphling]
- An auto-configuration framework for AI serving on Kubernetes; part of Alibaba's open-sourced #link("https://github.com/kubedl-io/kubedl")[KubeDL], a #link("https://landscape.cncf.io/?item=provisioning--automation-configuration--kubedl")[CNCF sandbox] project.
- Combined meta-learning and bayesian optimization to quickly find the *optimal* resource configuration (e.g., CPU cores, GPU memory, GPU timeshare, GPU type) and runtime parameters (i.e., batch size).

== Work Experience
#chiline()

*Alibaba Group* #h(1fr) *Hangzhou, China* \
_Research Intern_, Cluster Management Group, Mentor: *Yinghao Yu* #h(1fr) Dec. 2020 -- Present \
- Conducted several research projects including Morphling, GPU sharing, FGD, Prism, SwiftDiffusion (details as mentioned above).

*Microsoft Research Asia* #h(1fr) *Beijing, China* \
_Research Intern_, Innovation Engineering Group #h(1fr) Jul. 2019 -- Jun. 2020 \
- Conducted research on model robustness of face recognition. Star of Tomorrow Internship Award of Excellence.

== Technical Skills
#chiline()

- *Programming: * Golang, C++, Python, JavaScript, asynchronous, multithread, multiprocess, distributed, RDMA \
- *Machine Learning: * PyTorch, TensorFlow, Numpy, Matplotlib, HuggingFace \
- *Full Stack: * Web Frontend, Backend, SQL, Grafana, Docker, Kubernetes, Git, CI/CD \

