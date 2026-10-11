.class public Lcom/miui/penengine/colorpick/MiuiColorPick;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/penengine/colorpick/MiuiColorPick$ColorListener;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "MiuiColorPick"


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

.method public static declared-synchronized destroy()V
    .locals 3

    const-class v0, Lcom/miui/penengine/colorpick/MiuiColorPick;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->c()Lcom/miui/penengine/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/penengine/a/b;->b()Lcom/miui/penengine/e/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/penengine/e/a;->a()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/miui/penengine/a/b;->a(I)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/miui/penengine/colorpick/MiuiColorPick;->a:Ljava/lang/String;

    const-string v2, "Destroy color picker failed, sFacade is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/miui/penengine/colorpick/MiuiColorPick;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->c()Lcom/miui/penengine/a/b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Lcom/miui/penengine/a/b;->a(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object v1, Lcom/miui/penengine/colorpick/MiuiColorPick;->a:Ljava/lang/String;

    const-string v2, "Init color picker failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registerColorListener(Lcom/miui/penengine/colorpick/MiuiColorPick$ColorListener;)V
    .locals 2

    const-class v0, Lcom/miui/penengine/colorpick/MiuiColorPick;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->c()Lcom/miui/penengine/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/penengine/a/b;->b()Lcom/miui/penengine/e/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/miui/penengine/e/a;->a(Lcom/miui/penengine/colorpick/MiuiColorPick$ColorListener;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/miui/penengine/colorpick/MiuiColorPick;->a:Ljava/lang/String;

    const-string v1, "Register color listener failed, sFacade is null!"

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

.method public static declared-synchronized triggerColorPicking()Z
    .locals 3

    const-class v0, Lcom/miui/penengine/colorpick/MiuiColorPick;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->c()Lcom/miui/penengine/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/penengine/a/b;->k()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/miui/penengine/colorpick/MiuiColorPick;->a:Ljava/lang/String;

    const-string v2, "Trigger color picking failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
