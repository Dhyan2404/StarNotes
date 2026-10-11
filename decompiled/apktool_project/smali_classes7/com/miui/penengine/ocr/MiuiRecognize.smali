.class public Lcom/miui/penengine/ocr/MiuiRecognize;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiRecognize"


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

.method public static declared-synchronized destroyTextRecognize()V
    .locals 3

    const-class v0, Lcom/miui/penengine/ocr/MiuiRecognize;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->e()Lcom/miui/penengine/e/f;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/penengine/e/f;->a()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/miui/penengine/ocr/MiuiRecognize;->TAG:Ljava/lang/String;

    const-string v2, "Destroy text recognize failed, sFacade is null!"

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

.method public static declared-synchronized isFeatureEnable(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/miui/penengine/ocr/MiuiRecognize;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object p0, Lcom/miui/penengine/ocr/MiuiRecognize;->TAG:Ljava/lang/String;

    const-string v1, "System environment init error"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v2

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/miui/penengine/a/b;->e()Lcom/miui/penengine/e/f;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lcom/miui/penengine/e/f;->a(Landroid/content/Context;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :cond_1
    :try_start_2
    sget-object p0, Lcom/miui/penengine/ocr/MiuiRecognize;->TAG:Ljava/lang/String;

    const-string v1, "Get feature enable failed, sFacade is null!"

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

.method public static declared-synchronized recognizeText(Lcom/miui/penengine/ocr/MiuiInk;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/miui/penengine/ocr/MiuiRecognize;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/penengine/a/b;->e()Lcom/miui/penengine/e/f;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/miui/penengine/e/f;->a(Lcom/miui/penengine/ocr/MiuiInk;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    sget-object p0, Lcom/miui/penengine/ocr/MiuiRecognize;->TAG:Ljava/lang/String;

    const-string v1, "Recognize text failed, sFacade is null!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
