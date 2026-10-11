.class Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;


# direct methods
.method public constructor <init>(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$3;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause activity->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VivoStylusGestureManagerImpl"

    invoke-static {v0, p1}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$3;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-static {p1}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$100(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$3;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-static {p1}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$100(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$3;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-static {p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$200(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)Lcom/vivo/bluetoothpen/OnPenStateListener;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/vivo/bluetoothpen/IBluetoothPenCallback;->unregisterPenStateListener(Lcom/vivo/bluetoothpen/OnPenStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "unregisterPenStateListener error"

    invoke-static {v0, p1, p0}, Lcom/vivo/penengine/impl/EngineLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume activity->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VivoStylusGestureManagerImpl"

    invoke-static {v0, p1}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$3;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-static {p1}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$100(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$3;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-static {p1}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$100(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$3;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-static {p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$200(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)Lcom/vivo/bluetoothpen/OnPenStateListener;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/vivo/bluetoothpen/IBluetoothPenCallback;->registerPenStateListener(Lcom/vivo/bluetoothpen/OnPenStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "registerPenStateListener error"

    invoke-static {v0, p1, p0}, Lcom/vivo/penengine/impl/EngineLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
