.class public final Lcom/onyx/android/sdk/data/common/oss/OssConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 %2\u00020\u0001:\u0001%B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0000\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010#\u001a\u00020$2\u0006\u0010\u0003\u001a\u00020\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0008R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0008\"\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/oss/OssConfig;",
        "",
        "()V",
        "config",
        "(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)V",
        "bucketName",
        "",
        "getBucketName",
        "()Ljava/lang/String;",
        "clusterInfo",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "getClusterInfo",
        "()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "setClusterInfo",
        "(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V",
        "endPoint",
        "getEndPoint",
        "keyId",
        "keySecret",
        "ossBucket",
        "Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;",
        "getOssBucket",
        "()Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;",
        "setOssBucket",
        "(Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;)V",
        "ossSTS",
        "Lcom/onyx/android/sdk/data/common/oss/OssSTS;",
        "getOssSTS",
        "()Lcom/onyx/android/sdk/data/common/oss/OssSTS;",
        "setOssSTS",
        "(Lcom/onyx/android/sdk/data/common/oss/OssSTS;)V",
        "token",
        "getToken",
        "setToken",
        "(Ljava/lang/String;)V",
        "isChanged",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private keyId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private keySecret:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ossBucket:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private ossSTS:Lcom/onyx/android/sdk/data/common/oss/OssSTS;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->Companion:Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/data/common/oss/OssSTS;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/oss/OssSTS;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->ossSTS:Lcom/onyx/android/sdk/data/common/oss/OssSTS;

    .line 3
    new-instance v0, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->ossBucket:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/OssConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/onyx/android/sdk/data/common/oss/OssSTS;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/oss/OssSTS;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->ossSTS:Lcom/onyx/android/sdk/data/common/oss/OssSTS;

    .line 6
    new-instance v0, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->ossBucket:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    .line 7
    iget-object v0, p1, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->keyId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->keyId:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->keySecret:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->keySecret:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->token:Ljava/lang/String;

    .line 10
    new-instance v0, Lcom/onyx/android/sdk/data/common/oss/OssSTS;

    iget-object v1, p1, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->ossSTS:Lcom/onyx/android/sdk/data/common/oss/OssSTS;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/oss/OssSTS;-><init>(Lcom/onyx/android/sdk/data/common/oss/OssSTS;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->ossSTS:Lcom/onyx/android/sdk/data/common/oss/OssSTS;

    .line 11
    new-instance v0, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    iget-object v1, p1, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->ossBucket:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;-><init>(Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->ossBucket:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    .line 12
    iget-object p1, p1, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-void
.end method


# virtual methods
.method public final getBucketName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->ossBucket:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->getBucketName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-object p0
.end method

.method public final getEndPoint()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->ossBucket:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->getEndPoint()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOssBucket()Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->ossBucket:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    return-object p0
.end method

.method public final getOssSTS()Lcom/onyx/android/sdk/data/common/oss/OssSTS;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->ossSTS:Lcom/onyx/android/sdk/data/common/oss/OssSTS;

    return-object p0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->token:Ljava/lang/String;

    return-object p0
.end method

.method public final isChanged(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/OssConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->token:Ljava/lang/String;

    iget-object v1, p1, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->token:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getClusterId()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getClusterId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method public final setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-void
.end method

.method public final setOssBucket(Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->ossBucket:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    return-void
.end method

.method public final setOssSTS(Lcom/onyx/android/sdk/data/common/oss/OssSTS;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/OssSTS;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->ossSTS:Lcom/onyx/android/sdk/data/common/oss/OssSTS;

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->token:Ljava/lang/String;

    return-void
.end method
