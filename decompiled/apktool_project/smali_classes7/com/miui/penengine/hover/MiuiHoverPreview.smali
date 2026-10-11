.class public Lcom/miui/penengine/hover/MiuiHoverPreview;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/miui/penengine/e/d; = null

.field public static final b:Ljava/lang/String; = "MiuiHoverPreview"


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

    const-class v0, Lcom/miui/penengine/hover/MiuiHoverPreview;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/penengine/hover/MiuiHoverPreview;->a:Lcom/miui/penengine/e/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/penengine/e/d;->a()V

    const/4 v1, 0x0

    sput-object v1, Lcom/miui/penengine/hover/MiuiHoverPreview;->a:Lcom/miui/penengine/e/d;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/miui/penengine/hover/MiuiHoverPreview;->b:Ljava/lang/String;

    const-string v2, "Destroy failed, sBrushPreview is null!"

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

.method public static declared-synchronized getPreviewBrush()Lcom/miui/penengine/e/d;
    .locals 2

    const-class v0, Lcom/miui/penengine/hover/MiuiHoverPreview;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/penengine/hover/MiuiHoverPreview;->a:Lcom/miui/penengine/e/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const-class v0, Lcom/miui/penengine/hover/MiuiHoverPreview;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/penengine/hover/MiuiHoverPreview;->a:Lcom/miui/penengine/e/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/penengine/e/d;

    invoke-direct {v1, p0, p1}, Lcom/miui/penengine/e/d;-><init>(Landroid/content/Context;Landroid/view/View;)V

    sput-object v1, Lcom/miui/penengine/hover/MiuiHoverPreview;->a:Lcom/miui/penengine/e/d;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/miui/penengine/hover/MiuiHoverPreview;->b:Ljava/lang/String;

    const-string p1, "Repeated initialization"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
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

.method public static declared-synchronized setBrush(Landroid/graphics/Bitmap;)V
    .locals 2

    const-class v0, Lcom/miui/penengine/hover/MiuiHoverPreview;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/penengine/hover/MiuiHoverPreview;->a:Lcom/miui/penengine/e/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/miui/penengine/e/d;->setHoverBrush(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/miui/penengine/hover/MiuiHoverPreview;->b:Ljava/lang/String;

    const-string v1, "Set brush failed, sBrushPreview is null!"

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

.method public static declared-synchronized sizeBrush(F)V
    .locals 2

    const-class v0, Lcom/miui/penengine/hover/MiuiHoverPreview;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/penengine/hover/MiuiHoverPreview;->a:Lcom/miui/penengine/e/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/miui/penengine/e/d;->b(F)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/miui/penengine/hover/MiuiHoverPreview;->b:Ljava/lang/String;

    const-string v1, "Size brush failed, sBrushPreview is null!"

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
