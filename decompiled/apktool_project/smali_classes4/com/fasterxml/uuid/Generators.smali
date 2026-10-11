.class public Lcom/fasterxml/uuid/Generators;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static _sharedTimer:Lcom/fasterxml/uuid/UUIDTimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/fasterxml/uuid/UUIDTimer;
    .locals 5

    const-class v0, Lcom/fasterxml/uuid/Generators;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fasterxml/uuid/Generators;->_sharedTimer:Lcom/fasterxml/uuid/UUIDTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Lcom/fasterxml/uuid/UUIDTimer;

    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/uuid/UUIDTimer;-><init>(Ljava/util/Random;Lcom/fasterxml/uuid/TimestampSynchronizer;)V

    sput-object v1, Lcom/fasterxml/uuid/Generators;->_sharedTimer:Lcom/fasterxml/uuid/UUIDTimer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create UUIDTimer with specified synchronizer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :goto_0
    sget-object v1, Lcom/fasterxml/uuid/Generators;->_sharedTimer:Lcom/fasterxml/uuid/UUIDTimer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static nameBasedGenerator()Lcom/fasterxml/uuid/impl/NameBasedGenerator;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/fasterxml/uuid/Generators;->nameBasedGenerator(Ljava/util/UUID;)Lcom/fasterxml/uuid/impl/NameBasedGenerator;

    move-result-object v0

    return-object v0
.end method

.method public static nameBasedGenerator(Ljava/util/UUID;)Lcom/fasterxml/uuid/impl/NameBasedGenerator;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/fasterxml/uuid/Generators;->nameBasedGenerator(Ljava/util/UUID;Ljava/security/MessageDigest;)Lcom/fasterxml/uuid/impl/NameBasedGenerator;

    move-result-object p0

    return-object p0
.end method

.method public static nameBasedGenerator(Ljava/util/UUID;Ljava/security/MessageDigest;)Lcom/fasterxml/uuid/impl/NameBasedGenerator;
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "SHA-1"

    .line 3
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/fasterxml/uuid/UUIDType;->NAME_BASED_SHA1:Lcom/fasterxml/uuid/UUIDType;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t instantiate SHA-1 MessageDigest instance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    new-instance v1, Lcom/fasterxml/uuid/impl/NameBasedGenerator;

    invoke-direct {v1, p0, p1, v0}, Lcom/fasterxml/uuid/impl/NameBasedGenerator;-><init>(Ljava/util/UUID;Ljava/security/MessageDigest;Lcom/fasterxml/uuid/UUIDType;)V

    return-object v1
.end method

.method public static randomBasedGenerator()Lcom/fasterxml/uuid/impl/RandomBasedGenerator;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/fasterxml/uuid/Generators;->randomBasedGenerator(Ljava/util/Random;)Lcom/fasterxml/uuid/impl/RandomBasedGenerator;

    move-result-object v0

    return-object v0
.end method

.method public static randomBasedGenerator(Ljava/util/Random;)Lcom/fasterxml/uuid/impl/RandomBasedGenerator;
    .locals 1

    .line 2
    new-instance v0, Lcom/fasterxml/uuid/impl/RandomBasedGenerator;

    invoke-direct {v0, p0}, Lcom/fasterxml/uuid/impl/RandomBasedGenerator;-><init>(Ljava/util/Random;)V

    return-object v0
.end method

.method public static timeBasedEpochGenerator()Lcom/fasterxml/uuid/impl/TimeBasedEpochGenerator;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/fasterxml/uuid/Generators;->timeBasedEpochGenerator(Ljava/util/Random;)Lcom/fasterxml/uuid/impl/TimeBasedEpochGenerator;

    move-result-object v0

    return-object v0
.end method

.method public static timeBasedEpochGenerator(Ljava/util/Random;)Lcom/fasterxml/uuid/impl/TimeBasedEpochGenerator;
    .locals 1

    .line 2
    new-instance v0, Lcom/fasterxml/uuid/impl/TimeBasedEpochGenerator;

    invoke-direct {v0, p0}, Lcom/fasterxml/uuid/impl/TimeBasedEpochGenerator;-><init>(Ljava/util/Random;)V

    return-object v0
.end method

.method public static timeBasedGenerator()Lcom/fasterxml/uuid/impl/TimeBasedGenerator;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/fasterxml/uuid/Generators;->timeBasedGenerator(Lcom/fasterxml/uuid/EthernetAddress;)Lcom/fasterxml/uuid/impl/TimeBasedGenerator;

    move-result-object v0

    return-object v0
.end method

.method public static timeBasedGenerator(Lcom/fasterxml/uuid/EthernetAddress;)Lcom/fasterxml/uuid/impl/TimeBasedGenerator;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/fasterxml/uuid/Generators;->timeBasedGenerator(Lcom/fasterxml/uuid/EthernetAddress;Lcom/fasterxml/uuid/UUIDTimer;)Lcom/fasterxml/uuid/impl/TimeBasedGenerator;

    move-result-object p0

    return-object p0
.end method

.method public static timeBasedGenerator(Lcom/fasterxml/uuid/EthernetAddress;Lcom/fasterxml/uuid/TimestampSynchronizer;)Lcom/fasterxml/uuid/impl/TimeBasedGenerator;
    .locals 4

    .line 3
    :try_start_0
    new-instance v0, Lcom/fasterxml/uuid/UUIDTimer;

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/uuid/UUIDTimer;-><init>(Ljava/util/Random;Lcom/fasterxml/uuid/TimestampSynchronizer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-static {p0, v0}, Lcom/fasterxml/uuid/Generators;->timeBasedGenerator(Lcom/fasterxml/uuid/EthernetAddress;Lcom/fasterxml/uuid/UUIDTimer;)Lcom/fasterxml/uuid/impl/TimeBasedGenerator;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create UUIDTimer with specified synchronizer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static timeBasedGenerator(Lcom/fasterxml/uuid/EthernetAddress;Lcom/fasterxml/uuid/UUIDTimer;)Lcom/fasterxml/uuid/impl/TimeBasedGenerator;
    .locals 1

    if-nez p1, :cond_0

    .line 6
    invoke-static {}, Lcom/fasterxml/uuid/Generators;->a()Lcom/fasterxml/uuid/UUIDTimer;

    move-result-object p1

    .line 7
    :cond_0
    new-instance v0, Lcom/fasterxml/uuid/impl/TimeBasedGenerator;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/uuid/impl/TimeBasedGenerator;-><init>(Lcom/fasterxml/uuid/EthernetAddress;Lcom/fasterxml/uuid/UUIDTimer;)V

    return-object v0
.end method

.method public static timeBasedReorderedGenerator()Lcom/fasterxml/uuid/impl/TimeBasedReorderedGenerator;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/fasterxml/uuid/Generators;->timeBasedReorderedGenerator(Lcom/fasterxml/uuid/EthernetAddress;)Lcom/fasterxml/uuid/impl/TimeBasedReorderedGenerator;

    move-result-object v0

    return-object v0
.end method

.method public static timeBasedReorderedGenerator(Lcom/fasterxml/uuid/EthernetAddress;)Lcom/fasterxml/uuid/impl/TimeBasedReorderedGenerator;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/fasterxml/uuid/Generators;->timeBasedReorderedGenerator(Lcom/fasterxml/uuid/EthernetAddress;Lcom/fasterxml/uuid/UUIDTimer;)Lcom/fasterxml/uuid/impl/TimeBasedReorderedGenerator;

    move-result-object p0

    return-object p0
.end method

.method public static timeBasedReorderedGenerator(Lcom/fasterxml/uuid/EthernetAddress;Lcom/fasterxml/uuid/UUIDTimer;)Lcom/fasterxml/uuid/impl/TimeBasedReorderedGenerator;
    .locals 1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/fasterxml/uuid/Generators;->a()Lcom/fasterxml/uuid/UUIDTimer;

    move-result-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/fasterxml/uuid/impl/TimeBasedReorderedGenerator;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/uuid/impl/TimeBasedReorderedGenerator;-><init>(Lcom/fasterxml/uuid/EthernetAddress;Lcom/fasterxml/uuid/UUIDTimer;)V

    return-object v0
.end method
