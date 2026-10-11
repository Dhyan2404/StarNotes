.class public final Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/common/oss/OssConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;",
        "",
        "()V",
        "AIOssConfig",
        "Lcom/onyx/android/sdk/data/common/oss/OssConfig;",
        "clusterInfo",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "DeprecatedBackupOssConfig",
        "docConvertOssConfig",
        "feedbackOssConfig",
        "noteOssConfig",
        "onyxOssConfig",
        "testOssConfig",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;-><init>()V

    return-void
.end method

.method private final onyxOssConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/OssConfig;
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V

    new-instance v0, Lcom/onyx/android/sdk/data/common/oss/OssSTS;

    sget-boolean v1, Lcom/onyx/android/sdk/data/common/cloud/Constant;->USE_DEV_HOST:Z

    if-eqz v1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/data/common/cloud/Constant;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/Constant;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/cloud/Constant;->getDEV_CONTENT_API_BASE()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->loadOnyxSend2BooxApiBaseUrl()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/common/oss/OssSTS;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->setOssSTS(Lcom/onyx/android/sdk/data/common/oss/OssSTS;)V

    return-object p0
.end method


# virtual methods
.method public final AIOssConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/OssConfig;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clusterInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getOssConfig()Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;->onyxOssConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->Companion:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;->getOssAIBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;->getOssAIEndPoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->setOssBucket(Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;)V

    return-object p0
.end method

.method public final DeprecatedBackupOssConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/OssConfig;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clusterInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;->Companion:Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo$Companion;->createDefaultOss()Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;->onyxOssConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->Companion:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;->getOssDeprecatedBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;->getOssDeprecatedEndPoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->setOssBucket(Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;)V

    return-object p0
.end method

.method public final docConvertOssConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/OssConfig;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clusterInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getOssConfig()Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;->onyxOssConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->Companion:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;->getOssImmBukcet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;->getOssImmEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->setOssBucket(Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;)V

    return-object p0
.end method

.method public final feedbackOssConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/OssConfig;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clusterInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getOssConfig()Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;->onyxOssConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->Companion:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;->getOssLogBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;->getOssLogEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->setOssBucket(Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;)V

    return-object p0
.end method

.method public final noteOssConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/OssConfig;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clusterInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getOssConfig()Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;->onyxOssConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->Companion:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;->getOssNoteBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;->getOssNoteEndPoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->setOssBucket(Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;)V

    return-object p0
.end method

.method public final testOssConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/OssConfig;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clusterInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;->Companion:Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo$Companion;->createDefaultOss()Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;->onyxOssConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->Companion:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;->getOssTestBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;->getOssTestEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->setOssBucket(Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;)V

    return-object p0
.end method
