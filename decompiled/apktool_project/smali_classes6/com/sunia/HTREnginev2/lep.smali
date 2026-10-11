.class public final Lcom/sunia/HTREnginev2/lep;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;
    .locals 3
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;-><init>()V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->zba([B)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zbc()I

    move-result p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/lep;->b(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->zbf(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zbd()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zba()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;-><init>(II)V

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zbe()J

    move-result-wide p0

    const-wide/16 v1, 0x3e8

    mul-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->zbc(J)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->zbe(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->zbd()Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x4

    return p0
.end method
