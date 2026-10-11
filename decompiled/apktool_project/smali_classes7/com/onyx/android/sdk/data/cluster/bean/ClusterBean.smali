.class public final Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001e\u001a\u00020\u001fR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000c\"\u0004\u0008\u001a\u0010\u000eR\u001a\u0010\u001b\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u000c\"\u0004\u0008\u001d\u0010\u000e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;",
        "Ljava/io/Serializable;",
        "()V",
        "host",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;",
        "getHost",
        "()Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;",
        "setHost",
        "(Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;)V",
        "lang",
        "",
        "getLang",
        "()Ljava/lang/String;",
        "setLang",
        "(Ljava/lang/String;)V",
        "name",
        "getName",
        "setName",
        "ossConfig",
        "Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;",
        "getOssConfig",
        "()Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;",
        "setOssConfig",
        "(Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;)V",
        "region",
        "getRegion",
        "setRegion",
        "serverId",
        "getServerId",
        "setServerId",
        "isValid",
        "",
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


# instance fields
.field private host:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lang:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private ossConfig:Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private region:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private serverId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->serverId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->lang:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getHost()Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->host:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;

    return-object p0
.end method

.method public final getLang()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->lang:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getOssConfig()Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->ossConfig:Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;

    return-object p0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->region:Ljava/lang/String;

    return-object p0
.end method

.method public final getServerId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->serverId:Ljava/lang/String;

    return-object p0
.end method

.method public final isValid()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->host:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;->isValid()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setHost(Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->host:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;

    return-void
.end method

.method public final setLang(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->lang:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->name:Ljava/lang/String;

    return-void
.end method

.method public final setOssConfig(Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->ossConfig:Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;

    return-void
.end method

.method public final setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->region:Ljava/lang/String;

    return-void
.end method

.method public final setServerId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->serverId:Ljava/lang/String;

    return-void
.end method
