.class public Landroidx/input/motionprediction/kalman/PointerKalmanFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final a:Landroidx/input/motionprediction/kalman/KalmanFilter;

.field public final b:Landroidx/input/motionprediction/kalman/KalmanFilter;

.field public final c:Landroidx/input/motionprediction/kalman/KalmanFilter;

.field public final d:Landroidx/input/motionprediction/kalman/matrix/DVector2;

.field public final e:Landroidx/input/motionprediction/kalman/matrix/DVector2;

.field public final f:Landroidx/input/motionprediction/kalman/matrix/DVector2;

.field public final g:Landroidx/input/motionprediction/kalman/matrix/DVector2;

.field public h:D

.field public i:D

.field public j:D

.field public k:D

.field public l:I

.field public final m:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field public final n:Landroidx/input/motionprediction/kalman/matrix/Matrix;

.field public final o:Landroidx/input/motionprediction/kalman/matrix/Matrix;


# direct methods
.method public constructor <init>(DD)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;

    invoke-direct {v0}, Landroidx/input/motionprediction/kalman/matrix/DVector2;-><init>()V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->d:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;

    invoke-direct {v0}, Landroidx/input/motionprediction/kalman/matrix/DVector2;-><init>()V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->e:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;

    invoke-direct {v0}, Landroidx/input/motionprediction/kalman/matrix/DVector2;-><init>()V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->f:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/DVector2;

    invoke-direct {v0}, Landroidx/input/motionprediction/kalman/matrix/DVector2;-><init>()V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->g:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->h:D

    iput-wide v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->i:D

    const/4 v0, 0x0

    iput v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->l:I

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->m:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, v1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->n:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, v1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->o:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iput-wide p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->j:D

    iput-wide p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->k:D

    invoke-virtual {p0}, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->a()Landroidx/input/motionprediction/kalman/KalmanFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->a:Landroidx/input/motionprediction/kalman/KalmanFilter;

    invoke-virtual {p0}, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->a()Landroidx/input/motionprediction/kalman/KalmanFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->b:Landroidx/input/motionprediction/kalman/KalmanFilter;

    invoke-virtual {p0}, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->a()Landroidx/input/motionprediction/kalman/KalmanFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->c:Landroidx/input/motionprediction/kalman/KalmanFilter;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/input/motionprediction/kalman/KalmanFilter;
    .locals 5

    new-instance v0, Landroidx/input/motionprediction/kalman/KalmanFilter;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/input/motionprediction/kalman/KalmanFilter;-><init>(II)V

    new-instance v3, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    const/16 v4, 0x10

    new-array v4, v4, [D

    fill-array-data v4, :array_0

    invoke-direct {v3, v1, v4}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(I[D)V

    iput-object v3, v0, Landroidx/input/motionprediction/kalman/KalmanFilter;->F:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-instance v3, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-array v4, v1, [D

    fill-array-data v4, :array_1

    invoke-direct {v3, v2, v4}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(I[D)V

    iget-object v2, v0, Landroidx/input/motionprediction/kalman/KalmanFilter;->Q:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v3, v3, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dotTranspose(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, v0, Landroidx/input/motionprediction/kalman/KalmanFilter;->Q:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-wide v3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->j:D

    invoke-virtual {v2, v3, v4}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->scale(D)V

    new-instance v2, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-array v3, v1, [D

    fill-array-data v3, :array_2

    invoke-direct {v2, v1, v3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(I[D)V

    iput-object v2, v0, Landroidx/input/motionprediction/kalman/KalmanFilter;->H:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v1, v0, Landroidx/input/motionprediction/kalman/KalmanFilter;->R:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    const/4 v2, 0x0

    iget-wide v3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->k:D

    invoke-virtual {v1, v2, v2, v3, v4}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    return-object v0

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
        0x3fc47ae147ae147bL    # 0.16
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3fc47ae147ae147bL    # 0.16
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getAcceleration()Landroidx/input/motionprediction/kalman/matrix/DVector2;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->f:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    return-object p0
.end method

.method public getJank()Landroidx/input/motionprediction/kalman/matrix/DVector2;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->g:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    return-object p0
.end method

.method public getNumIterations()I
    .locals 0

    iget p0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->l:I

    return p0
.end method

.method public getPosition()Landroidx/input/motionprediction/kalman/matrix/DVector2;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->d:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    return-object p0
.end method

.method public getPressure()D
    .locals 2

    iget-wide v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->h:D

    return-wide v0
.end method

.method public getPressureChange()D
    .locals 2

    iget-wide v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->i:D

    return-wide v0
.end method

.method public getVelocity()Landroidx/input/motionprediction/kalman/matrix/DVector2;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->e:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    return-object p0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->a:Landroidx/input/motionprediction/kalman/KalmanFilter;

    invoke-virtual {v0}, Landroidx/input/motionprediction/kalman/KalmanFilter;->reset()V

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->b:Landroidx/input/motionprediction/kalman/KalmanFilter;

    invoke-virtual {v0}, Landroidx/input/motionprediction/kalman/KalmanFilter;->reset()V

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->c:Landroidx/input/motionprediction/kalman/KalmanFilter;

    invoke-virtual {v0}, Landroidx/input/motionprediction/kalman/KalmanFilter;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->l:I

    return-void
.end method

.method public update(FFF)V
    .locals 4

    iget v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->l:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->a:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object v0, v0, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    float-to-double v2, p1

    invoke-virtual {v0, v1, v1, v2, v3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->b:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p1, p1, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    float-to-double v2, p2

    invoke-virtual {p1, v1, v1, v2, v3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->c:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p1, p1, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    float-to-double p2, p3

    invoke-virtual {p1, v1, v1, p2, p3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->m:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    float-to-double v2, p1

    invoke-virtual {v0, v1, v1, v2, v3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->a:Landroidx/input/motionprediction/kalman/KalmanFilter;

    invoke-virtual {p1}, Landroidx/input/motionprediction/kalman/KalmanFilter;->predict()V

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->a:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->m:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p1, v0}, Landroidx/input/motionprediction/kalman/KalmanFilter;->update(Landroidx/input/motionprediction/kalman/matrix/Matrix;)V

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->n:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    float-to-double v2, p2

    invoke-virtual {p1, v1, v1, v2, v3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->b:Landroidx/input/motionprediction/kalman/KalmanFilter;

    invoke-virtual {p1}, Landroidx/input/motionprediction/kalman/KalmanFilter;->predict()V

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->b:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p2, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->n:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p1, p2}, Landroidx/input/motionprediction/kalman/KalmanFilter;->update(Landroidx/input/motionprediction/kalman/matrix/Matrix;)V

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->o:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    float-to-double p2, p3

    invoke-virtual {p1, v1, v1, p2, p3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->c:Landroidx/input/motionprediction/kalman/KalmanFilter;

    invoke-virtual {p1}, Landroidx/input/motionprediction/kalman/KalmanFilter;->predict()V

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->c:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p2, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->o:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p1, p2}, Landroidx/input/motionprediction/kalman/KalmanFilter;->update(Landroidx/input/motionprediction/kalman/matrix/Matrix;)V

    :goto_0
    iget p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->l:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->l:I

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->d:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->a:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p3, p3, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p3, v1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->d:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->b:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p3, p3, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p3, v1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->e:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->a:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p3, p3, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p3, p2, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->e:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->b:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p3, p3, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p3, p2, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->f:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->a:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p3, p3, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    const/4 v0, 0x2

    invoke-virtual {p3, v0, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->f:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->b:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p3, p3, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p3, v0, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->g:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->a:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p3, p3, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    const/4 v0, 0x3

    invoke-virtual {p3, v0, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->g:Landroidx/input/motionprediction/kalman/matrix/DVector2;

    iget-object p3, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->b:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p3, p3, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p3, v0, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->c:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p1, p1, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p1, v1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->h:D

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->c:Landroidx/input/motionprediction/kalman/KalmanFilter;

    iget-object p1, p1, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {p1, p2, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide p1

    iput-wide p1, p0, Landroidx/input/motionprediction/kalman/PointerKalmanFilter;->i:D

    return-void
.end method
