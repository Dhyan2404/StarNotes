.class public final Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$OnGestureCallback;
    }
.end annotation


# static fields
.field private static final FILM_STATE_DOUBLE_CLICK:I = 0x3

.field private static final STYLUS_HAPTIC_FEEDBACK_GESTURE_SWITCH:Ljava/lang/String; = "vivo_stylus_haptic_feedback_gesture_switch"

.field private static final STYLUS_HAPTIC_FEEDBACK_GESTURE_SWITCH_OFF:I = 0x0

.field private static final STYLUS_HAPTIC_FEEDBACK_GESTURE_SWITCH_ON:I = 0x1

.field private static final STYLUS_PRIMARY_BUTTON_CLICK:I = 0x21

.field private static final STYLUS_SECONDLY_BUTTON_CLICK:I = 0x22

.field private static final STYLUS_WRITING_VIBRATE_INTENSITY_NORMAL:I = 0x80

.field private static final STYLUS_WRITING_VIBRATE_INTENSITY_STRONG:I = 0xa0

.field private static final STYLUS_WRITING_VIBRATE_INTENSITY_WEAK:I = 0x60

.field private static final STYLUS_WRITING_VIBRATE_STRENGTH_LEVEL:Ljava/lang/String; = "vivo_stylus_haptic_feedback_write_select_level"

.field private static final STYLUS_WRITING_VIBRATE_STRENGTH_LEVEL_NORMAL:I = 0x2

.field private static final STYLUS_WRITING_VIBRATE_STRENGTH_LEVEL_OFF:I = 0x0

.field private static final STYLUS_WRITING_VIBRATE_STRENGTH_LEVEL_STRONG:I = 0x3

.field private static final STYLUS_WRITING_VIBRATE_STRENGTH_LEVEL_WEAK:I = 0x1

.field private static final STYLUS_WRITING_VIBRATE_SWITCH:Ljava/lang/String; = "vivo_stylus_haptic_feedback_write_switch"

.field private static final STYLUS_WRITING_VIBRATE_SWITCH_OFF:I = 0x0

.field private static final STYLUS_WRITING_VIBRATE_SWITCH_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VivoStylusGestureManagerImpl"

.field private static volatile instance:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;


# instance fields
.field private final mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final mContext:Landroid/content/Context;

.field private final mGestureCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$OnGestureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHasBond:Z

.field private mIBluetoothPenCallback:Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

.field private final mMainHandler:Landroid/os/Handler;

.field private mNeedRebind:Z

.field private final mPenStateListener:Lcom/vivo/bluetoothpen/OnPenStateListener;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mGestureCallbackList:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$1;-><init>(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)V

    iput-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;-><init>(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)V

    iput-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mPenStateListener:Lcom/vivo/bluetoothpen/OnPenStateListener;

    new-instance v0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$3;

    invoke-direct {v0, p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$3;-><init>(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)V

    iput-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mNeedRebind:Z

    return-void
.end method

.method public static synthetic access$002(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mHasBond:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)Lcom/vivo/bluetoothpen/IBluetoothPenCallback;
    .locals 0

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mIBluetoothPenCallback:Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;Lcom/vivo/bluetoothpen/IBluetoothPenCallback;)Lcom/vivo/bluetoothpen/IBluetoothPenCallback;
    .locals 0

    iput-object p1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mIBluetoothPenCallback:Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)Lcom/vivo/bluetoothpen/OnPenStateListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mPenStateListener:Lcom/vivo/bluetoothpen/OnPenStateListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->bindServiceIfNeed()V

    return-void
.end method

.method public static synthetic access$400(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mGestureCallbackList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->processClick(Z)V

    return-void
.end method

.method public static synthetic access$700(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->processDoubleClick()V

    return-void
.end method

.method private bindServiceIfNeed()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindServiceIfNeed: mNeedRebind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mNeedRebind:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHasBond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mHasBond:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VivoStylusGestureManagerImpl"

    invoke-static {v1, v0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mNeedRebind:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mHasBond:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "bindServiceIfNeed"

    invoke-static {v1, v0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.vivo.penwrite"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.vivo.bluetoothpen.service.BluetoothPenService"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "bindServiceIfNeed error"

    invoke-static {v1, v0, p0}, Lcom/vivo/penengine/impl/EngineLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;
    .locals 2

    sget-object v0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->instance:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    if-nez v0, :cond_1

    const-class v0, Lcom/vivo/penengine/impl/VivoAlgorithmManagerImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->instance:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-direct {v1, p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->instance:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->instance:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    return-object p0
.end method

.method private processClick(Z)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mIBluetoothPenCallback:Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mGestureCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$OnGestureCallback;

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-interface {v0, v1}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$OnGestureCallback;->onGesture(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VivoStylusGestureManagerImpl"

    invoke-static {v1, v0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processDoubleClick()V
    .locals 4

    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mIBluetoothPenCallback:Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mGestureCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$OnGestureCallback;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$OnGestureCallback;->onGesture(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processDoubleClick: need vibrate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VivoStylusGestureManagerImpl"

    invoke-static {v2, v0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->vibrate()V

    return-void
.end method

.method private unbindServiceIfNeed()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mGestureCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "unbindServiceIfNeed"

    const-string v1, "VivoStylusGestureManagerImpl"

    invoke-static {v1, v0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mIBluetoothPenCallback:Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mPenStateListener:Lcom/vivo/bluetoothpen/OnPenStateListener;

    invoke-interface {v0, v2}, Lcom/vivo/bluetoothpen/IBluetoothPenCallback;->unregisterPenStateListener(Lcom/vivo/bluetoothpen/OnPenStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "unregisterPenStateListener error"

    invoke-static {v1, v2, v0}, Lcom/vivo/penengine/impl/EngineLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mHasBond:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mIBluetoothPenCallback:Lcom/vivo/bluetoothpen/IBluetoothPenCallback;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "unbindServiceIfNeed error"

    invoke-static {v1, v2, v0}, Lcom/vivo/penengine/impl/EngineLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mHasBond:Z

    iput-boolean v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mNeedRebind:Z

    :cond_2
    return-void
.end method

.method private vibrate()V
    .locals 4

    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mIBluetoothPenCallback:Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

    const-string v1, "VivoStylusGestureManagerImpl"

    if-nez v0, :cond_0

    const-string p0, "vibrate: callback is null"

    invoke-static {v1, p0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "vivo_stylus_haptic_feedback_gesture_switch"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "vibrate: vibrate disable"

    invoke-static {v1, p0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mIBluetoothPenCallback:Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

    const/16 v0, 0x32

    const/4 v2, 0x4

    invoke-interface {p0, v3, v0, v2}, Lcom/vivo/bluetoothpen/IBluetoothPenCallback;->vibrate(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "vibrate error"

    invoke-static {v1, v0, p0}, Lcom/vivo/penengine/impl/EngineLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public registerGestureCallback(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$OnGestureCallback;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mGestureCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mGestureCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerGestureCallback: list size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mGestureCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VivoStylusGestureManagerImpl"

    invoke-static {v0, p1}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mGestureCallbackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mNeedRebind:Z

    :cond_0
    invoke-direct {p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->bindServiceIfNeed()V

    :cond_1
    return-void
.end method

.method public registerLifecycle(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public unregisterGestureCallback(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$OnGestureCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterGestureCallback: list size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mGestureCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VivoStylusGestureManagerImpl"

    invoke-static {v1, v0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mGestureCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->unbindServiceIfNeed()V

    return-void
.end method

.method public unregisterLifecycle(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public writingVibrate(ZI)V
    .locals 7

    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mIBluetoothPenCallback:Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

    const-string v1, "VivoStylusGestureManagerImpl"

    if-nez v0, :cond_0

    const-string p0, "writingVibrate: callback is null"

    invoke-static {v1, p0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string p0, "writingVibrate: mContext is null"

    invoke-static {v1, p0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "vivo_stylus_haptic_feedback_write_switch"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writingVibrate: switch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/penengine/impl/EngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "vivo_stylus_haptic_feedback_write_select_level"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writingVibrate: writingVibrateStrengthLevel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/vivo/penengine/impl/EngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v5, "writingVibrate: writing vibrate disable"

    invoke-static {v1, v5}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v2, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0xa0

    goto :goto_1

    :cond_4
    const/16 v3, 0x80

    goto :goto_1

    :cond_5
    const/16 v3, 0x60

    :cond_6
    :goto_1
    or-int p1, v3, p2

    :try_start_0
    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->mIBluetoothPenCallback:Lcom/vivo/bluetoothpen/IBluetoothPenCallback;

    invoke-interface {p0, p1}, Lcom/vivo/bluetoothpen/IBluetoothPenCallback;->setWritingVibrationIntensity(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writingVibrate intensity: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/vivo/penengine/impl/EngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "writingVibrate error"

    invoke-static {v1, p1, p0}, Lcom/vivo/penengine/impl/EngineLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
