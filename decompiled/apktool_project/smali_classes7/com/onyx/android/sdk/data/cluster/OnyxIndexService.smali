.class public interface abstract Lcom/onyx/android/sdk/data/cluster/OnyxIndexService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J&\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00032\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\nH\'J&\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00032\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\nH\'\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/cluster/OnyxIndexService;",
        "",
        "getPriorityServerInfo",
        "Lretrofit2/Call;",
        "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;",
        "priorityClusterParma",
        "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma;",
        "getSSLServerInfos",
        "Lcom/onyx/android/sdk/data/cluster/bean/ClusterResultBean;",
        "localeStr",
        "",
        "model",
        "getServerInfos",
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


# virtual methods
.method public abstract getPriorityServerInfo(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v2/serverInfos/user"
    .end annotation
.end method

.method public abstract getSSLServerInfos(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "lang"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "model"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/cluster/bean/ClusterResultBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "serverInfos/ssl"
    .end annotation
.end method

.method public abstract getServerInfos(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "lang"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "model"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/cluster/bean/ClusterResultBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "serverInfos"
    .end annotation
.end method
