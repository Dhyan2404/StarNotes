.class public Lcom/miui/penengine/estimate/MiuiStrokeEstimate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiStrokeEstimate"


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

.method public static declared-synchronized getEstimateEvent(Ljava/util/List;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/penengine/estimate/MiuiMotionEventInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/penengine/estimate/MiuiMotionEventInfo;",
            ">;)I"
        }
    .end annotation

    const-class v0, Lcom/miui/penengine/estimate/MiuiStrokeEstimate;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->f()Lcom/miui/penengine/e/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1}, Lcom/miui/penengine/e/c;->a(Ljava/util/List;Ljava/util/List;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_0
    :try_start_1
    sget-object p0, Lcom/miui/penengine/estimate/MiuiStrokeEstimate;->TAG:Ljava/lang/String;

    const-string p1, "MiuiStrokeEstimate, getEstimateEvent error, sFacade is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isFeatureEnable(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/miui/penengine/estimate/MiuiStrokeEstimate;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->f()Lcom/miui/penengine/e/c;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/miui/penengine/e/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p0}, Lcom/miui/penengine/e/c;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return v2

    :cond_1
    :try_start_1
    sget-object p0, Lcom/miui/penengine/estimate/MiuiStrokeEstimate;->TAG:Ljava/lang/String;

    const-string v1, "MiuiStrokeEstimate, isFeatureEnable error, sFacade is null!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setRefreshRate(F)V
    .locals 2

    const-class v0, Lcom/miui/penengine/estimate/MiuiStrokeEstimate;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->f()Lcom/miui/penengine/e/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/miui/penengine/e/c;->a(F)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/miui/penengine/estimate/MiuiStrokeEstimate;->TAG:Ljava/lang/String;

    const-string v1, "MiuiStrokeEstimate, setRefreshRate error, sFacade is null!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
