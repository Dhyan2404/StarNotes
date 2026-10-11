.class public final Lcom/sunia/HTREnginev2/qcp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/dcp;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zbbx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close(JJJJJ)V
    .locals 0

    return-void
.end method

.method public final initialize([BJJJJJ)J
    .locals 0

    const-wide/16 p0, 0x1

    return-wide p0
.end method

.method public final initializeFrameBufferReleaseCallback(J)J
    .locals 0

    const-wide/16 p0, 0x1

    return-wide p0
.end method

.method public final initializeFrameManager()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public final initializeIsolationCallback()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public final initializeResultsCallback()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public final process(JJJ[BIIII)[B
    .locals 0

    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;->zbc()Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsj;->zbl()[B

    move-result-object p0

    return-object p0
.end method

.method public final processBitmap(JJLandroid/graphics/Bitmap;IIII)[B
    .locals 0

    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;->zbc()Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsj;->zbl()[B

    move-result-object p0

    return-object p0
.end method

.method public final processYuvFrame(JJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)[B
    .locals 0

    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;->zbc()Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsj;->zbl()[B

    move-result-object p0

    return-object p0
.end method

.method public final start(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;
        }
    .end annotation

    return-void
.end method

.method public final stop(J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final waitUntilIdle(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;
        }
    .end annotation

    return-void
.end method

.method public final zba()V
    .locals 0

    return-void
.end method
