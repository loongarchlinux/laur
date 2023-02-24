# 说明

本仓库(laur)主要提供以下几类软件的二进制包并长期维护：

- 重要系统软件，如yay/paru，用于从 [AUR](https://aur.archlinux.org/) 仓库下载、编译及安装软件包的工具
- LoongArch 架构特定的软件，且未在 AUR 中提供的，如 lat 
- AUR 中无法直接安装，需要针对 LoongArch 架构打补丁的重要软件，如 pamac-aur
- 存在于稳定仓库(core/extra/community)，但上游暂未支持LoongArch架构，而又极为常用的软件，在本仓库中做为过渡提供二进制包，如 firefox、chromium等

由于 Archlinux 是滚动升级版本，凡是本仓库维护的软件，在每次升级时都需要检查依赖以确保系统升级后仍然可用，如果在本仓库中维护过多的软件，会显著增加维护者负担，所以

**本仓库不维护可以直接从 AUR 安装的软件**
