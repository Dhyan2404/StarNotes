.class public final Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014R\u001e\u0010\u0018\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001a\u0010\u001b\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0012\"\u0004\u0008\u001d\u0010\u0014R\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000c\"\u0004\u0008 \u0010\u000e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;",
        "",
        "()V",
        "deviceActivated",
        "",
        "getDeviceActivated",
        "()Z",
        "setDeviceActivated",
        "(Z)V",
        "deviceLimitCount",
        "",
        "getDeviceLimitCount",
        "()I",
        "setDeviceLimitCount",
        "(I)V",
        "encryptedContent",
        "",
        "getEncryptedContent",
        "()Ljava/lang/String;",
        "setEncryptedContent",
        "(Ljava/lang/String;)V",
        "endedAt",
        "getEndedAt",
        "setEndedAt",
        "exceedDeviceLimit",
        "getExceedDeviceLimit",
        "setExceedDeviceLimit",
        "startedAt",
        "getStartedAt",
        "setStartedAt",
        "state",
        "getState",
        "setState",
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
.field private deviceActivated:Z
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        name = "isDeviceActive"
    .end annotation
.end field

.field private deviceLimitCount:I

.field private encryptedContent:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private endedAt:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private exceedDeviceLimit:Z
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        name = "isDeviceLimitExceeded"
    .end annotation
.end field

.field private startedAt:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->startedAt:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->endedAt:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->encryptedContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDeviceActivated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->deviceActivated:Z

    return p0
.end method

.method public final getDeviceLimitCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->deviceLimitCount:I

    return p0
.end method

.method public final getEncryptedContent()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->encryptedContent:Ljava/lang/String;

    return-object p0
.end method

.method public final getEndedAt()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->endedAt:Ljava/lang/String;

    return-object p0
.end method

.method public final getExceedDeviceLimit()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->exceedDeviceLimit:Z

    return p0
.end method

.method public final getStartedAt()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->startedAt:Ljava/lang/String;

    return-object p0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->state:I

    return p0
.end method

.method public final setDeviceActivated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->deviceActivated:Z

    return-void
.end method

.method public final setDeviceLimitCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->deviceLimitCount:I

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

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->encryptedContent:Ljava/lang/String;

    return-void
.end method

.method public final setEndedAt(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->endedAt:Ljava/lang/String;

    return-void
.end method

.method public final setExceedDeviceLimit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->exceedDeviceLimit:Z

    return-void
.end method

.method public final setStartedAt(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->startedAt:Ljava/lang/String;

    return-void
.end method

.method public final setState(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->state:I

    return-void
.end method
