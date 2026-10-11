.class public final Lcom/onyx/android/sdk/device/OppoDevice$callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/device/OppoDevice;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0008H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/onyx/android/sdk/device/OppoDevice$callback$1",
        "Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;",
        "onConnectionChanged",
        "",
        "p0",
        "",
        "onDemoModeEnableChange",
        "enable",
        "",
        "onFunctionFeedbackStateChange",
        "onReleased",
        "onVibrationSwitchStateChange",
        "sdk-device_release"
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
.field public final synthetic a:Lcom/onyx/android/sdk/device/OppoDevice;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/device/OppoDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/device/OppoDevice$callback$1;->a:Lcom/onyx/android/sdk/device/OppoDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(I)V
    .locals 0

    return-void
.end method

.method public onDemoModeEnableChange(Z)V
    .locals 0

    return-void
.end method

.method public onFunctionFeedbackStateChange(Z)V
    .locals 0

    return-void
.end method

.method public onReleased(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/onyx/android/sdk/device/OppoDevice$callback$1;->a:Lcom/onyx/android/sdk/device/OppoDevice;

    invoke-static {p1}, Lcom/onyx/android/sdk/device/OppoDevice;->access$getPencilManagerUnitClient$p(Lcom/onyx/android/sdk/device/OppoDevice;)Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->release()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/device/OppoDevice$callback$1;->a:Lcom/onyx/android/sdk/device/OppoDevice;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/device/OppoDevice;->access$setPencilManagerUnitClient$p(Lcom/onyx/android/sdk/device/OppoDevice;Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;)V

    :cond_1
    return-void
.end method

.method public onVibrationSwitchStateChange(Z)V
    .locals 0

    return-void
.end method
