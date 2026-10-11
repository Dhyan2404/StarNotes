.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zbbz;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtz;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    const/4 p0, 0x0

    throw p0
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/bdp;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->a()Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method


# virtual methods
.method public final zba(Lcom/google/android/libraries/vision/visionkit/pipeline/zbdl;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbz;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtz;->zbn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtz;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtz;->zbi()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbdo;

    invoke-static {v0, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->c(Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;Lcom/google/android/libraries/vision/visionkit/pipeline/zbdo;)V

    return-object p0
.end method

.method public final zbb(Lcom/google/android/libraries/vision/visionkit/pipeline/zbfb;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbz;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtz;->zbn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtz;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtz;->zbi()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbfc;

    invoke-static {v0, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->b(Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;Lcom/google/android/libraries/vision/visionkit/pipeline/zbfc;)V

    return-object p0
.end method
