.class public Lcom/miui/penengine/auth/MiuiAuthHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/penengine/auth/MiuiAuthHelper$AuthResultListener;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "MiuiAuthHelper"


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

.method public static declared-synchronized destroyAuthService()V
    .locals 2

    const-class v0, Lcom/miui/penengine/auth/MiuiAuthHelper;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->i()Lcom/miui/penengine/e/i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/penengine/e/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initAuthService(Landroid/content/Context;Lcom/miui/penengine/auth/MiuiAuthHelper$AuthResultListener;)Z
    .locals 3

    const-class v0, Lcom/miui/penengine/auth/MiuiAuthHelper;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object p0, Lcom/miui/penengine/auth/MiuiAuthHelper;->a:Ljava/lang/String;

    const-string p1, "System environment init error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v2

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/miui/penengine/a/b;->i()Lcom/miui/penengine/e/i;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0, p1}, Lcom/miui/penengine/e/i;->a(Landroid/content/Context;Lcom/miui/penengine/auth/MiuiAuthHelper$AuthResultListener;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :cond_1
    :try_start_2
    sget-object p0, Lcom/miui/penengine/auth/MiuiAuthHelper;->a:Ljava/lang/String;

    const-string p1, "MiuiAuthHelper, initAuthService error, pencilEngineManager is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized runAuthConnect()V
    .locals 2

    const-class v0, Lcom/miui/penengine/auth/MiuiAuthHelper;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->i()Lcom/miui/penengine/e/i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/penengine/e/i;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
