.class public Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/vision/visionkit/pipeline/zbbx;
.implements Lcom/google/android/libraries/vision/visionkit/pipeline/zbcc;
.implements Lcom/google/android/libraries/vision/visionkit/pipeline/zbcb;


# instance fields
.field public final a:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;

.field public final b:Lcom/sunia/HTREnginev2/dcp;

.field public c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field protected final zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v6, p0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    move-result-object v0

    :cond_0
    move-object v7, v0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbh()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sunia/HTREnginev2/qcp;

    invoke-direct {v0, v6}, Lcom/sunia/HTREnginev2/qcp;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zbbx;)V

    iput-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbg()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;

    invoke-direct {v0, v6, v6, v6, v7}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zbbx;Lcom/google/android/libraries/vision/visionkit/pipeline/zbcc;Lcom/google/android/libraries/vision/visionkit/pipeline/zbcb;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;)V

    iput-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    goto :goto_0

    :cond_2
    new-instance v8, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;

    const-string v1, "mlkit_google_ocr_pipeline"

    move-object v0, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;-><init>(Ljava/lang/String;Lcom/google/android/libraries/vision/visionkit/pipeline/zbbx;Lcom/google/android/libraries/vision/visionkit/pipeline/zbcc;Lcom/google/android/libraries/vision/visionkit/pipeline/zbcb;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;)V

    iput-object v8, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbi()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zba()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;-><init>(I)V

    iput-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->a:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;-><init>(I)V

    iput-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->a:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;

    :goto_1
    iput-object v7, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    iget-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/dcp;->initializeFrameManager()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->d:J

    iget-object v2, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    invoke-interface {v2, v0, v1}, Lcom/sunia/HTREnginev2/dcp;->initializeFrameBufferReleaseCallback(J)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->e:J

    iget-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/dcp;->initializeResultsCallback()J

    move-result-wide v11

    iput-wide v11, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->f:J

    iget-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/dcp;->initializeIsolationCallback()J

    move-result-wide v13

    iput-wide v13, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->g:J

    iget-object v7, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsj;->zbl()[B

    move-result-object v8

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    invoke-interface/range {v7 .. v18}, Lcom/sunia/HTREnginev2/dcp;->initialize([BJJJJJ)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->c:J

    return-void
.end method


# virtual methods
.method public final zba(J)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->a:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;->zba(J)V

    return-void
.end method

.method public final zbb(Ljava/lang/String;)I
    .locals 0

    const-string p0, "VKP"

    const-string p1, "openFileDescriptor called but is not available for this pipeline. Ignoring call."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final zbc(I)V
    .locals 0

    const-string p0, "VKP"

    const-string p1, "closeFileDescriptor called but is not available for this pipeline. Ignoring call."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final zbd(Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcq;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcq;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Pipeline received results: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcq;->zbb(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zbe(Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;
    .locals 13

    iget-wide v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->a:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zba()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;->zbb(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    iget-wide v2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->c:J

    iget-wide v4, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->d:J

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zba()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbc()[B

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;->zbb()I

    move-result v9

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;->zba()I

    move-result v10

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbd()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbe()I

    move-result p1

    add-int/lit8 v12, p1, -0x1

    invoke-interface/range {v1 .. v12}, Lcom/sunia/HTREnginev2/dcp;->process(JJJ[BIIII)[B

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    invoke-static {p1, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;->zbd([BLcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbe(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not parse results"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Pipeline has been closed or was not initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final declared-synchronized zbf()V
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    invoke-interface {v0, v2, v3}, Lcom/sunia/HTREnginev2/dcp;->stop(J)Z

    iget-object v6, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    iget-wide v7, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->c:J

    iget-wide v9, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->d:J

    iget-wide v11, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->e:J

    iget-wide v13, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->f:J

    iget-wide v2, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->g:J

    move-wide v15, v2

    invoke-interface/range {v6 .. v16}, Lcom/sunia/HTREnginev2/dcp;->close(JJJJJ)V

    iput-wide v4, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->c:J

    iget-object v0, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/dcp;->zba()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zbg()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    invoke-interface {v2, v0, v1}, Lcom/sunia/HTREnginev2/dcp;->start(J)V

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    iget-wide v1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->c:J

    invoke-interface {v0, v1, v2}, Lcom/sunia/HTREnginev2/dcp;->waitUntilIdle(J)V
    :try_end_0
    .catch Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    iget-wide v2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->c:J

    invoke-interface {v1, v2, v3}, Lcom/sunia/HTREnginev2/dcp;->stop(J)Z

    throw v0

    :cond_0
    new-instance p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;->zbj:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "Pipeline has been closed or was not initialized"

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final zbh()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    invoke-interface {p0, v0, v1}, Lcom/sunia/HTREnginev2/dcp;->stop(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Pipeline did not stop successfully."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Pipeline has been closed or was not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zbi(JLandroid/graphics/Bitmap;I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;
    .locals 13

    move-object v0, p0

    iget-wide v1, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    iget-object v3, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    iget-wide v4, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->c:J

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    add-int/lit8 v12, p4, -0x1

    move-wide v6, p1

    move-object/from16 v8, p3

    invoke-interface/range {v3 .. v12}, Lcom/sunia/HTREnginev2/dcp;->processBitmap(JJLandroid/graphics/Bitmap;IIII)[B

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    invoke-static {v1, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;->zbd([BLcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbe(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not parse results"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unsupported bitmap config "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Pipeline has been closed or was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zbj(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;
    .locals 16

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->b:Lcom/sunia/HTREnginev2/dcp;

    iget-wide v3, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->c:J

    add-int/lit8 v15, p11, -0x1

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-interface/range {v2 .. v15}, Lcom/sunia/HTREnginev2/dcp;->processYuvFrame(JJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)[B

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    invoke-static {v1, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;->zbd([BLcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbe(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not parse results"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Byte buffers are not direct."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Pipeline has been closed or was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
