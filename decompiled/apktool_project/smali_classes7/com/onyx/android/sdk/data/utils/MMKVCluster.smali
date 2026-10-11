.class public final Lcom/onyx/android/sdk/data/utils/MMKVCluster;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0005\u001a\u0004\u0018\u00010\u0004*\u00020\u0006J\u0012\u0010\u0007\u001a\u00020\u0008*\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/utils/MMKVCluster;",
        "",
        "()V",
        "ONYX_CLUSTER_SYSTEM_KEY",
        "",
        "getClusterList",
        "Lcom/onyx/android/sdk/data/utils/MMKVUtils;",
        "saveClusterList",
        "",
        "value",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVCluster;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ONYX_CLUSTER_SYSTEM_KEY:Ljava/lang/String; = "ONYX_CLUSTER_SYSTEM_KEY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/utils/MMKVCluster;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/utils/MMKVCluster;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/utils/MMKVCluster;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVCluster;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClusterList(Lcom/onyx/android/sdk/data/utils/MMKVUtils;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/utils/MMKVUtils;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ONYX_CLUSTER_SYSTEM_KEY"

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final saveClusterList(Lcom/onyx/android/sdk/data/utils/MMKVUtils;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/utils/MMKVUtils;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ONYX_CLUSTER_SYSTEM_KEY"

    invoke-virtual {p1, p0, p2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
