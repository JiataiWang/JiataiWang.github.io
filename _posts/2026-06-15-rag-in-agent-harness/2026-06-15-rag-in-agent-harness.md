---
title: "RAG 在 Agent Harness 里的新位置（草稿）"
date: 2026-06-15
permalink: /posts/2026/06/rag-in-agent-harness/
categories: []
tags:
  - rag
  - agent-harness
  - memory
  - context
---

> 这是一篇还在构思阶段的草稿，先把核心观点记下来，后续再展开。

RAG 已经不是单独卖点了——你也意识到了，它现在是 Agent 里的一个工具/记忆通路。

但 "长上下文管理 + 记忆压缩与召回 + 检索式 context 组装" 正是 Harness 里最难的一块。

接下来打算把它从学术 benchmark 的视角，换成生产级 Agent Harness 的 Memory / Context 子系统视角重新写一遍。

*待补全：*

- Memory 子系统在 Harness 中的位置与接口
- 检索 / 压缩 / 召回的工程化策略
- 与 Skill、Plugin、Eval 的耦合方式
