.class public final Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/account/model/HWRActivationModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0016\u0018\u0000 /2\u00020\u00012\u00020\u0002:\u0001/B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010.\u001a\u00020\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0016\"\u0004\u0008!\u0010\u0018R\u001a\u0010\"\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0016\"\u0004\u0008$\u0010\u0018R\u001a\u0010%\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0010\"\u0004\u0008\'\u0010\u0012R\u001a\u0010(\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u0007\"\u0004\u0008*\u0010\tR\u001a\u0010+\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u001c\"\u0004\u0008-\u0010\u001e\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "Ljava/io/Serializable;",
        "()V",
        "activateTime",
        "",
        "getActivateTime",
        "()J",
        "setActivateTime",
        "(J)V",
        "cacheValidityTime",
        "getCacheValidityTime",
        "setCacheValidityTime",
        "deviceActivated",
        "",
        "getDeviceActivated",
        "()Z",
        "setDeviceActivated",
        "(Z)V",
        "deviceId",
        "",
        "getDeviceId",
        "()Ljava/lang/String;",
        "setDeviceId",
        "(Ljava/lang/String;)V",
        "deviceLimitCount",
        "",
        "getDeviceLimitCount",
        "()I",
        "setDeviceLimitCount",
        "(I)V",
        "encryptedContent",
        "getEncryptedContent",
        "setEncryptedContent",
        "engine",
        "getEngine",
        "setEngine",
        "exceedDeviceLimit",
        "getExceedDeviceLimit",
        "setExceedDeviceLimit",
        "expireTime",
        "getExpireTime",
        "setExpireTime",
        "state",
        "getState",
        "setState",
        "isEmpty",
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
.field public static final Companion:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private activateTime:J

.field private cacheValidityTime:J

.field private deviceActivated:Z

.field private deviceId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private deviceLimitCount:I

.field private encryptedContent:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private engine:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private exceedDeviceLimit:Z

.field private expireTime:J

.field private state:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->Companion:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->deviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->engine:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->encryptedContent:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->expireTime:J

    return-void
.end method


# virtual methods
.method public final getActivateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->activateTime:J

    return-wide v0
.end method

.method public final getCacheValidityTime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->cacheValidityTime:J

    return-wide v0
.end method

.method public final getDeviceActivated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->deviceActivated:Z

    return p0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeviceLimitCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->deviceLimitCount:I

    return p0
.end method

.method public final getEncryptedContent()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->encryptedContent:Ljava/lang/String;

    return-object p0
.end method

.method public final getEngine()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->engine:Ljava/lang/String;

    return-object p0
.end method

.method public final getExceedDeviceLimit()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->exceedDeviceLimit:Z

    return p0
.end method

.method public final getExpireTime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->expireTime:J

    return-wide v0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->state:I

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setActivateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->activateTime:J

    return-void
.end method

.method public final setCacheValidityTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->cacheValidityTime:J

    return-void
.end method

.method public final setDeviceActivated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->deviceActivated:Z

    return-void
.end method

.method public final setDeviceId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceLimitCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->deviceLimitCount:I

    return-void
.end method

.method public final setEncryptedContent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->encryptedContent:Ljava/lang/String;

    return-void
.end method

.method public final setEngine(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->engine:Ljava/lang/String;

    return-void
.end method

.method public final setExceedDeviceLimit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->exceedDeviceLimit:Z

    return-void
.end method

.method public final setExpireTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->expireTime:J

    return-void
.end method

.method public final setState(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->state:I

    return-void
.end method
