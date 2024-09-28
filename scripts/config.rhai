let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = ["Object Detection", "Object Tracking", "Remote Sensing",  "LLM", "GPT", "Transformer", "ChatGPT", "Multi-Modal", "Multimodal", "Large Language Models", "Vision and Language", "Instruction Tuning", "Instruction following"];
let titles_method = ["Pre-train", "Pretrain", "Prompt", "Self-Supervised", "Multi-Modalities"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = [
    "Yann LeCun", "Geoffrey Hinton", "Tat-Seng Chua", "Long Chen", "Ilya Sutskever", "Di Hu", "Kaiming He", "Yi Ma", 
    "Yuan Li", "Steven Hoi", "Ziwei Liu", "Yuandong Tian", "Saining Xie", "Yann LeCun", "Hao Liu", "Jeff Dean", "Xipeng Qiu",
     "Tim Brooks", "William Peebles", "Li Fei-Fei", "Yi Tay", "Peng Jin", "Limin Wang", "Xinggang Wang", "Xian-Sheng Hua"
];

let conferences = [
    // AI
    "AAAI", "ACM MM", "AISTATS", "ALT", "GECCO", "ICANN", "ICAPS", "ICCBR", "IJCAI", "IJCNN", "IROS", "SIGGRAPH", "STOC", "UAI", "PRICAI", "TAAI", "TPAMI",
    // CV
    "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // IR
    "ECIR", "ESWC", "ICMR", "ICTIR", "ISWC", "SIGIR",
    // ML
    "ACML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS",
    // NLP
    "AACL", "ACL", "CCL", "COLING", "COLT", "CoNLL", "EACL", "EMNLP", "ICASSP", "ICDAR", "ICONIP", "INTERSPEECH", "LREC", "NAACL", "NLPCC", "RepL4NLP", "SIGDIAL",
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;