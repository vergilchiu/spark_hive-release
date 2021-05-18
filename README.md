# spark_hive-release
hortonworks(hdp) 版本的spark_hive源码，spark依赖hive的源码，本质是hive的源码，和hdp-hive源码略有不同。

这个hive版本是专门用于放到spark jars中的hive依赖。

## 分支说明

| 分支                  | 对应hdp版本          | 修改                                                         | 说明 |
| --------------------- | -------------------- | ------------------------------------------------------------ | ---- |
| branch-1.2.1000.2.6.5 | 1.2.1000.2.6.5.0-292 | 1.修复spark连接metastore时总是使用第一个配置的metastore uri，改为随机获取，使metastore做到负载均衡。（2021-05-18） |      |
|                       |                      |                                                              |      |

