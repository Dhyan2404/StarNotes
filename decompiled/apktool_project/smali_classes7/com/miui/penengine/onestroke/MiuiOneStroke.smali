.class public Lcom/miui/penengine/onestroke/MiuiOneStroke;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiOneStroke"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized destroyShapeRecognize()I
    .locals 3

    const-class v0, Lcom/miui/penengine/onestroke/MiuiOneStroke;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->d()Lcom/miui/penengine/e/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/penengine/e/e;->a()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/miui/penengine/onestroke/MiuiOneStroke;->TAG:Ljava/lang/String;

    const-string v2, "MiuiOneStroke, destroyShapeRecognize error, sFacade is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPath()Landroid/graphics/Path;
    .locals 2

    const-class v0, Lcom/miui/penengine/onestroke/MiuiOneStroke;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->d()Lcom/miui/penengine/e/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/penengine/e/e;->b()Landroid/graphics/Path;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isFeatureEnable(Landroid/content/Context;)Z
    .locals 4

    const-class v0, Lcom/miui/penengine/onestroke/MiuiOneStroke;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object p0, Lcom/miui/penengine/onestroke/MiuiOneStroke;->TAG:Ljava/lang/String;

    const-string v1, "System environment init error"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v2

    :cond_0
    :try_start_1
    sget-object v1, Lcom/miui/penengine/a/b;->p:Lcom/miui/penengine/e/e;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/penengine/e/e;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, p0}, Lcom/miui/penengine/e/e;->a(Landroid/content/Context;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0

    return v3

    :cond_2
    :try_start_2
    sget-object p0, Lcom/miui/penengine/onestroke/MiuiOneStroke;->TAG:Ljava/lang/String;

    const-string v1, "MiuiOneStroke, isFeatureEnable error, sFacade is null!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    const-class v0, Lcom/miui/penengine/onestroke/MiuiOneStroke;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->d()Lcom/miui/penengine/e/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/miui/penengine/e/e;->a(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setStopTime(I)V
    .locals 2

    const-class v0, Lcom/miui/penengine/onestroke/MiuiOneStroke;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->d()Lcom/miui/penengine/e/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/miui/penengine/e/e;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
