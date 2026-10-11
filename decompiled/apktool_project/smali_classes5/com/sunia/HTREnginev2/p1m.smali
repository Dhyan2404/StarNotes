.class public final Lcom/sunia/HTREnginev2/p1m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;
.implements Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;


# instance fields
.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Lcom/google/android/exoplayer2/video/spherical/b;

.field public final h:Lcom/sunia/HTREnginev2/pvg;

.field public final i:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection;",
            ">;"
        }
    .end annotation
.end field

.field public final k:[F

.field public final l:[F

.field public m:I

.field public n:Landroid/graphics/SurfaceTexture;

.field public volatile o:I

.field public p:I

.field public q:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/p1m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/p1m;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/spherical/b;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/p1m;->g:Lcom/google/android/exoplayer2/video/spherical/b;

    new-instance v0, Lcom/sunia/HTREnginev2/pvg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/pvg;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/p1m;->h:Lcom/sunia/HTREnginev2/pvg;

    new-instance v0, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/p1m;->i:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    new-instance v0, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/p1m;->j:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/sunia/HTREnginev2/p1m;->k:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sunia/HTREnginev2/p1m;->l:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/p1m;->o:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/p1m;->p:I

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/p1m;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/p1m;->d(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private synthetic d(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p1m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public b([FZ)V
    .locals 8

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p1m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p1m;->n:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p1m;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p1m;->k:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/p1m;->n:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sunia/HTREnginev2/p1m;->i:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->poll(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sunia/HTREnginev2/p1m;->h:Lcom/sunia/HTREnginev2/pvg;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/p1m;->k:[F

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/sunia/HTREnginev2/pvg;->c([FJ)Z

    :cond_1
    iget-object v2, p0, Lcom/sunia/HTREnginev2/p1m;->j:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/Projection;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sunia/HTREnginev2/p1m;->g:Lcom/google/android/exoplayer2/video/spherical/b;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/spherical/b;->d(Lcom/google/android/exoplayer2/video/spherical/Projection;)V

    :cond_2
    iget-object v2, p0, Lcom/sunia/HTREnginev2/p1m;->l:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sunia/HTREnginev2/p1m;->k:[F

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/p1m;->g:Lcom/google/android/exoplayer2/video/spherical/b;

    iget v0, p0, Lcom/sunia/HTREnginev2/p1m;->m:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p1m;->l:[F

    invoke-virtual {p1, v0, p0, p2}, Lcom/google/android/exoplayer2/video/spherical/b;->a(I[FZ)V

    return-void
.end method

.method public c()Landroid/graphics/SurfaceTexture;
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p1m;->g:Lcom/google/android/exoplayer2/video/spherical/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/b;->b()V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->createExternalTexture()I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/p1m;->m:I

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/sunia/HTREnginev2/p1m;->m:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/p1m;->n:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/sunia/HTREnginev2/o1m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/o1m;-><init>(Lcom/sunia/HTREnginev2/p1m;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p1m;->n:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/HTREnginev2/p1m;->o:I

    return-void
.end method

.method public final f([BIJ)V
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p1m;->q:[B

    iget v1, p0, Lcom/sunia/HTREnginev2/p1m;->p:I

    iput-object p1, p0, Lcom/sunia/HTREnginev2/p1m;->q:[B

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget p2, p0, Lcom/sunia/HTREnginev2/p1m;->o:I

    :cond_0
    iput p2, p0, Lcom/sunia/HTREnginev2/p1m;->p:I

    if-ne v1, p2, :cond_1

    iget-object p1, p0, Lcom/sunia/HTREnginev2/p1m;->q:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sunia/HTREnginev2/p1m;->q:[B

    if-eqz p1, :cond_2

    iget p2, p0, Lcom/sunia/HTREnginev2/p1m;->p:I

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/spherical/a;->a([BI)Lcom/google/android/exoplayer2/video/spherical/Projection;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/google/android/exoplayer2/video/spherical/b;->c(Lcom/google/android/exoplayer2/video/spherical/Projection;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/sunia/HTREnginev2/p1m;->p:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/video/spherical/Projection;->b(I)Lcom/google/android/exoplayer2/video/spherical/Projection;

    move-result-object p1

    :goto_1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/p1m;->j:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {p0, p3, p4, p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    return-void
.end method

.method public g()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p1m;->g:Lcom/google/android/exoplayer2/video/spherical/b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/spherical/b;->e()V

    return-void
.end method

.method public onCameraMotion(J[F)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p1m;->h:Lcom/sunia/HTREnginev2/pvg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/pvg;->e(J[F)V

    return-void
.end method

.method public onCameraMotionReset()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p1m;->i:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clear()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p1m;->h:Lcom/sunia/HTREnginev2/pvg;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/pvg;->d()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p1m;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .locals 0
    .param p6    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p6, p0, Lcom/sunia/HTREnginev2/p1m;->i:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p6, p3, p4, p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    iget-object p1, p5, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    iget p2, p5, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sunia/HTREnginev2/p1m;->f([BIJ)V

    return-void
.end method
