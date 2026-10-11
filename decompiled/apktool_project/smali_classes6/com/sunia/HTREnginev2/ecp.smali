.class public final Lcom/sunia/HTREnginev2/ecp;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnz;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Lcom/google/mlkit/vision/text/pipeline/zbi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnz;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ecp;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ecp;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ecp;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/ecp;->e:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sunia/HTREnginev2/ecp;->c:Z

    return-void
.end method


# virtual methods
.method public final zbb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ecp;->f:Lcom/google/mlkit/vision/text/pipeline/zbi;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/vision/text/pipeline/zbi;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/mlkit/vision/text/pipeline/zbi;->zbb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;Z)Lcom/google/mlkit/vision/text/pipeline/zbn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/pipeline/zbn;->zbc()Lcom/google/mlkit/vision/text/pipeline/zbo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/pipeline/zbo;->zbd()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/pipeline/zbn;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/pipeline/zbo;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zba()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteException;

    throw p0

    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Process is started without initiation."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zbc()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ecp;->f:Lcom/google/mlkit/vision/text/pipeline/zbi;

    if-nez v0, :cond_3

    const-string v0, "mlkit_google_ocr_pipeline"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ecp;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/ecp;->e:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    iget-object v1, p0, Lcom/sunia/HTREnginev2/ecp;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/ecp;->d:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sunia/HTREnginev2/ecp;->c:Z

    invoke-static {v1, v2, v0}, Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions;->builder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;->setEnableLowLatencyInBackground(Z)Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ecp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;->build()Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/mlkit/vision/text/pipeline/zbi;->zba(Landroid/content/Context;Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions;)Lcom/google/mlkit/vision/text/pipeline/zbi;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/ecp;->f:Lcom/google/mlkit/vision/text/pipeline/zbi;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/text/pipeline/zbi;->zbc()Lcom/google/mlkit/vision/text/pipeline/zbo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/pipeline/zbo;->zbd()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/pipeline/zbo;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zba()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteException;

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public final zbd()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ecp;->f:Lcom/google/mlkit/vision/text/pipeline/zbi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/mlkit/vision/text/pipeline/zbi;->zbd()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/ecp;->f:Lcom/google/mlkit/vision/text/pipeline/zbi;

    :cond_0
    return-void
.end method

.method public final zbe(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;)[Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "#recognizeBitmap should not be triggered from text thick client."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
