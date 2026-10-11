.class Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    iput-object p1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$1;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "VivoStylusGestureManagerImpl"

    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$1;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$002(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;Z)Z

    :try_start_0
    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$1;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-static {p2}, Lcom/vivo/bluetoothpen/IBluetoothPenCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$102(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;Lcom/vivo/bluetoothpen/IBluetoothPenCallback;)Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

    iget-object p2, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$1;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-static {p2}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$100(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

    move-result-object p2

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$1;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-static {p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$200(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)Lcom/vivo/bluetoothpen/OnPenStateListener;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/vivo/bluetoothpen/IBluetoothPenCallback;->registerPenStateListener(Lcom/vivo/bluetoothpen/OnPenStateListener;)V

    const-string p0, "onServiceConnected success"

    invoke-static {p1, p0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "onServiceConnected error"

    invoke-static {p1, p2, p0}, Lcom/vivo/penengine/impl/EngineLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$1;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$102(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;Lcom/vivo/bluetoothpen/IBluetoothPenCallback;)Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

    iget-object p1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$1;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$002(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;Z)Z

    const-string p1, "VivoStylusGestureManagerImpl"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$1;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-static {p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$300(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)V

    return-void
.end method
