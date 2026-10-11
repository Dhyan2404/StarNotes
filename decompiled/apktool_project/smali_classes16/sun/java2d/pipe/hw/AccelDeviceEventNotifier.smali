.class public Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEVICE_DISPOSED:I = 0x1

.field public static final DEVICE_RESET:I

.field private static theInstance:Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;


# instance fields
.field private final listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsun/java2d/pipe/hw/AccelDeviceEventListener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;->listeners:Ljava/util/Map;

    return-void
.end method

.method private final add(Lsun/java2d/pipe/hw/AccelDeviceEventListener;I)V
    .locals 0

    iget-object p0, p0, Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;->listeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final addListener(Lsun/java2d/pipe/hw/AccelDeviceEventListener;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;->getInstance(Z)Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;->add(Lsun/java2d/pipe/hw/AccelDeviceEventListener;I)V

    return-void
.end method

.method public static final eventOccured(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;->getInstance(Z)Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v0, p1, p0}, Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;->notifyListeners(II)V

    :cond_0
    return-void
.end method

.method private static declared-synchronized getInstance(Z)Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;
    .locals 2

    const-class v0, Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;->theInstance:Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    new-instance p0, Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;

    invoke-direct {p0}, Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;-><init>()V

    sput-object p0, Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;->theInstance:Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;

    :cond_0
    sget-object p0, Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;->theInstance:Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final notifyListeners(II)V
    .locals 3

    iget-object v0, p0, Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;->listeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;->listeners:Ljava/util/Map;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/java2d/pipe/hw/AccelDeviceEventListener;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p2, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-interface {v0}, Lsun/java2d/pipe/hw/AccelDeviceEventListener;->onDeviceReset()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    invoke-interface {v0}, Lsun/java2d/pipe/hw/AccelDeviceEventListener;->onDeviceDispose()V

    goto :goto_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private final remove(Lsun/java2d/pipe/hw/AccelDeviceEventListener;)V
    .locals 0

    iget-object p0, p0, Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;->listeners:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final removeListener(Lsun/java2d/pipe/hw/AccelDeviceEventListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;->getInstance(Z)Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;

    move-result-object v0

    invoke-direct {v0, p0}, Lsun/java2d/pipe/hw/AccelDeviceEventNotifier;->remove(Lsun/java2d/pipe/hw/AccelDeviceEventListener;)V

    return-void
.end method
