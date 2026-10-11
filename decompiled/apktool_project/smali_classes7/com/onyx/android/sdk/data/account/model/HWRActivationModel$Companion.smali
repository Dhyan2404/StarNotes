.class public final Lcom/onyx/android/sdk/data/account/model/HWRActivationModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0003\u001a\u00020\u0004*\u0004\u0018\u00010\u0005J\u000c\u0010\u0006\u001a\u00020\u0004*\u0004\u0018\u00010\u0005J\u000c\u0010\u0007\u001a\u00020\u0004*\u0004\u0018\u00010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel$Companion;",
        "",
        "()V",
        "isExpired",
        "",
        "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;",
        "isStateExpired",
        "isTimeExpired",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isExpired(Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel$Companion;->isTimeExpired(Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel$Companion;->isStateExpired(Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isStateExpired(Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->getState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p0, v2

    :cond_0
    return p0
.end method

.method public final isTimeExpired(Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->getExpireTime()J

    move-result-wide p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->millisOfNow()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
