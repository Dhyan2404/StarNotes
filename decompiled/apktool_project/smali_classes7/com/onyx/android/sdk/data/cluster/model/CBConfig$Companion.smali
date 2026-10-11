.class public final Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u0008\u0010\u0005\u001a\u00020\u0004H\u0007J\u0008\u0010\u0006\u001a\u00020\u0004H\u0007J\u0008\u0010\u0007\u001a\u00020\u0004H\u0007J\u0008\u0010\u0008\u001a\u00020\u0004H\u0007J\u0008\u0010\t\u001a\u00020\u0004H\u0007J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;",
        "",
        "()V",
        "createAmericanTestCouchbase",
        "Lcom/onyx/android/sdk/data/cluster/model/CBConfig;",
        "createChineseTestCouchbase",
        "createDefaultAmericaCouchbase",
        "createDefaultChineseCouchbase",
        "createDefaultEURCouchbase",
        "createEuropeTestCouchbase",
        "fromWSSHost",
        "host",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createAmericanTestCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost$Companion;->getDEFAULT_AMERICAN_TEST_COUCH_BASE_WSS_HOST()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->setOnyxCouchbaseWSSHost(Ljava/lang/String;)V

    return-object p0
.end method

.method public final createChineseTestCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost$Companion;->getDEFAULT_CHINESE_TEST_COUCH_BASE_WSS_HOST()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->setOnyxCouchbaseWSSHost(Ljava/lang/String;)V

    return-object p0
.end method

.method public final createDefaultAmericaCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost$Companion;->getDEFAULT_AMERICAN_COUCH_BASE_WSS_HOST()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->setOnyxCouchbaseWSSHost(Ljava/lang/String;)V

    return-object p0
.end method

.method public final createDefaultChineseCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost$Companion;->getDEFAULT_CHINESE_COUCH_BASE_WSS_HOST()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->setOnyxCouchbaseWSSHost(Ljava/lang/String;)V

    return-object p0
.end method

.method public final createDefaultEURCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost$Companion;->getDEFAULT_EUR_MESSAGE_CB_WSS_HOST()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->setOnyxCouchbaseWSSHost(Ljava/lang/String;)V

    return-object p0
.end method

.method public final createEuropeTestCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost$Companion;->getDEFAULT_EUR_TEST_COUCH_BASE_WSS_HOST()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->setOnyxCouchbaseWSSHost(Ljava/lang/String;)V

    return-object p0
.end method

.method public final fromWSSHost(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "host"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->setOnyxCouchbaseWSSHost(Ljava/lang/String;)V

    return-object p0
.end method
