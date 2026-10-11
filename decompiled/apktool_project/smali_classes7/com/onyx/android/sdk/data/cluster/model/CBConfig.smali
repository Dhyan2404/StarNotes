.class public final Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/cluster/model/CBConfig;",
        "",
        "()V",
        "onyxCouchbaseWSSHost",
        "",
        "getOnyxCouchbaseWSSHost",
        "()Ljava/lang/String;",
        "setOnyxCouchbaseWSSHost",
        "(Ljava/lang/String;)V",
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
.field public static final Companion:Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public onyxCouchbaseWSSHost:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->Companion:Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createAmericanTestCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->Companion:Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;->createAmericanTestCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    move-result-object v0

    return-object v0
.end method

.method public static final createChineseTestCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->Companion:Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;->createChineseTestCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    move-result-object v0

    return-object v0
.end method

.method public static final createDefaultAmericaCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->Companion:Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;->createDefaultAmericaCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    move-result-object v0

    return-object v0
.end method

.method public static final createDefaultChineseCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->Companion:Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;->createDefaultChineseCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    move-result-object v0

    return-object v0
.end method

.method public static final createDefaultEURCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->Companion:Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;->createDefaultEURCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    move-result-object v0

    return-object v0
.end method

.method public static final createEuropeTestCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->Companion:Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;->createEuropeTestCouchbase()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    move-result-object v0

    return-object v0
.end method

.method public static final fromWSSHost(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->Companion:Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;->fromWSSHost(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getOnyxCouchbaseWSSHost()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->onyxCouchbaseWSSHost:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "onyxCouchbaseWSSHost"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setOnyxCouchbaseWSSHost(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->onyxCouchbaseWSSHost:Ljava/lang/String;

    return-void
.end method
