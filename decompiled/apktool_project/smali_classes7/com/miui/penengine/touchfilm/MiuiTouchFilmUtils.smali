.class public Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;
    }
.end annotation


# static fields
.field public static final SHOW_BRUSH_SETTINGS:I = 0x4

.field public static final SHOW_COLOR_WHEEL:I = 0x3

.field public static final STYLUS_SLIDE_DOWN:I = 0x6

.field public static final STYLUS_SLIDE_UP:I = 0x5

.field public static final SWITCH_BETWEEN_BRUSH_AND_ERASER:I = 0x1

.field public static final SWITCH_TO_PREVIOUS_BRUSH:I = 0x2

.field public static final UNKNOWN_SETTINGS_FUNCTION:I = 0x0

.field public static final a:Ljava/lang/String; = "MiuiTouchFilmUtils"


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

.method public static declared-synchronized init(Landroid/content/Context;Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;)Z
    .locals 4

    const-class v0, Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->c()Lcom/miui/penengine/a/b;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2}, Lcom/miui/penengine/a/b;->a(Landroid/content/Context;I)Z

    move-result v2

    invoke-static {}, Lcom/miui/penengine/a/b;->j()Lcom/miui/penengine/e/j;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v3, p0, p1}, Lcom/miui/penengine/e/j;->a(Landroid/content/Context;Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/miui/penengine/a/b;->b(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_0
    :try_start_1
    sget-object p0, Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils;->a:Ljava/lang/String;

    const-string p1, "Init error, sFacade is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
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

.method public static declared-synchronized onDestroy()V
    .locals 4

    const-class v0, Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->c()Lcom/miui/penengine/a/b;

    move-result-object v1

    invoke-static {}, Lcom/miui/penengine/a/b;->j()Lcom/miui/penengine/e/j;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/penengine/e/j;->b()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/penengine/a/b;->b(Z)I

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils;->a:Ljava/lang/String;

    const-string v3, "Destroy error, sFacade is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/penengine/a/b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized onDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const-class v0, Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->j()Lcom/miui/penengine/e/j;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/miui/penengine/e/j;->a(Landroid/view/KeyEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_0
    :try_start_1
    sget-object p0, Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils;->a:Ljava/lang/String;

    const-string v1, "Handle key event error, sFacade is null!"

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
