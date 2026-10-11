.class public final Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "()V",
        "configStatus",
        "",
        "getConfigStatus",
        "()I",
        "setConfigStatus",
        "(I)V",
        "configType",
        "",
        "getConfigType",
        "()Ljava/lang/String;",
        "setConfigType",
        "(Ljava/lang/String;)V",
        "content",
        "getContent",
        "setContent",
        "key",
        "getKey",
        "setKey",
        "isEmpty",
        "",
        "Companion",
        "sdk-replicator_overseasRelease"
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
.field public static final Companion:Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Empty:Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private configStatus:I

.field private configType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private content:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;->Companion:Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel$Companion;

    new-instance v0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;->Empty:Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;->configType:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;->configStatus:I

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;->content:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;->Empty:Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;

    return-object v0
.end method


# virtual methods
.method public final getConfigStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;->configStatus:I

    return p0
.end method

.method public final getConfigType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;->configType:Ljava/lang/String;

    return-object p0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;->content:Ljava/lang/String;

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;->Empty:Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final setConfigStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;->configStatus:I

    return-void
.end method

.method public final setConfigType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;->configType:Ljava/lang/String;

    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;->content:Ljava/lang/String;

    return-void
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;->key:Ljava/lang/String;

    return-void
.end method
