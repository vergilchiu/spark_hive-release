# spark_hive-release
hortonworks(hdp) 版本spark_hive源码，spark依赖hive的源码，本质是hive的源码，和hdp-hive源码略有不同。



## 和hdp-hive源码有什么不同？

这个hive版本是专门用于放到spark jars中的hive依赖，hdp-hive源码是线上和测试环境使用的hive源码。

使用diff命令对相同版本的两个hive源码进行比较发现，spark-hive版本的源码有很多补丁没有打进来，而hdp-hive将很多高版本修复的问题都打进来了。



## 分支说明

| 分支                  | 对应hdp版本          | 修改                                                         | 说明 |
| --------------------- | -------------------- | ------------------------------------------------------------ | ---- |
| branch-1.2.1000.2.6.5 | 1.2.1000.2.6.5.0-292 | 1.修复spark连接metastore时总是使用第一个配置的metastore uri，改为随机获取，做到metastore做到负载均衡。（2021-05-18） |      |
|                       |                      |                                                              |      |

