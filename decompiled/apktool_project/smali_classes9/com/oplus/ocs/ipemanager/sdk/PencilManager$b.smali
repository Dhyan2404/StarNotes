.class public Lcom/oplus/ocs/ipemanager/sdk/PencilManager$b;
.super Lcom/oplus/ipemanager/sdk/ISDKAidlCallback$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/ipemanager/sdk/PencilManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/ipemanager/sdk/PencilManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$b;->a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    invoke-direct {p0}, Lcom/oplus/ipemanager/sdk/ISDKAidlCallback$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "onConnectionChanged  state = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PencilManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$b;->a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    invoke-static {v0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b(Lcom/oplus/ocs/ipemanager/sdk/PencilManager;)Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$b;->a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    invoke-static {p0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b(Lcom/oplus/ocs/ipemanager/sdk/PencilManager;)Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;->onConnectionChanged(I)V

    :cond_0
    return-void
.end method

.method public onDemoModeEnableChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "onDemoModeEnableChange, enable = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PencilManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$b;->a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    invoke-static {v0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b(Lcom/oplus/ocs/ipemanager/sdk/PencilManager;)Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$b;->a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    invoke-static {p0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b(Lcom/oplus/ocs/ipemanager/sdk/PencilManager;)Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;->onDemoModeEnableChange(Z)V

    :cond_0
    return-void
.end method

.method public onFunctionFeedbackStateChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "onFunctionFeedbackStateChange, enable = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PencilManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$b;->a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    invoke-static {v0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b(Lcom/oplus/ocs/ipemanager/sdk/PencilManager;)Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$b;->a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    invoke-static {p0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b(Lcom/oplus/ocs/ipemanager/sdk/PencilManager;)Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;->onFunctionFeedbackStateChange(Z)V

    :cond_0
    return-void
.end method

.method public onVibrationSwitchStateChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "onVibrationSwitchStateChange  isOpen = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PencilManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$b;->a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    invoke-static {v0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b(Lcom/oplus/ocs/ipemanager/sdk/PencilManager;)Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$b;->a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    invoke-static {p0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b(Lcom/oplus/ocs/ipemanager/sdk/PencilManager;)Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;->onVibrationSwitchStateChange(Z)V

    :cond_0
    return-void
.end method
