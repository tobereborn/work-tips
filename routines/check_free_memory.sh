#!/usr/bin/env bash
# Demostarate free usage and explain outputs
#                      total       used       free     shared    buffers     cached
#  Mem:               496        457         38          0          8            104
#  -/+ buffers/cache:           344        151
#  Swap:              510        156        354
#  就可以查看当前内存的使用， 第二行的-/+buffers/c:ache是当前实际被使用的内存和空闲内存空间，具体解释如下：
#  mem 行显示了从系统角度看来内存使用的情况, total是系统可用的内存大小, 数量上等于系统物理内存减去内核保留的内存. buffers和cached是系统用做缓冲的内存. buffers与某个块设备关联, 包含了文件系统元数据, 并且跟踪了块的变化. cache只包含了文件本身.
#  -/+ buffers/cache行则从用户角度显示内存信息, 可用内存从数量上等于mem行used列值减去buffers和cached内存的大小. 因为buffers和cached是操作系统为加快系统运行而设置的, 当用户需要时, 可以只接为用户使用.
#  top和vmstat也显示了系统内存的信息, 和free的显示结果类似.

free -m

