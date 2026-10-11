.class public Landroidx/input/motionprediction/kalman/KalmanFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public F:Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public H:Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public P:Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public Q:Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public R:Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public a:Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public c:Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public d:Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public e:Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public f:Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public g:Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public h:Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public i:Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public x:Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-static {p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->identity(I)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->P:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-static {p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->identity(I)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->Q:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-static {p2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->identity(I)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->R:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p1, p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->F:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p2, p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->H:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p1, p2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->d:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p1, p2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->e:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->a:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p1, p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->b:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p1, p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->c:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p2, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->f:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p2, p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->g:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-instance p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {p1, p2, p2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object p1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->h:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    new-instance p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    mul-int/lit8 v0, p2, 0x2

    invoke-direct {p1, p2, v0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    iput-object p1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->i:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    return-void
.end method


# virtual methods
.method public predict()V
    .locals 3

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->F:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->a:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v1, v0, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v1

    iput-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->a:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->F:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->P:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->b:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->F:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->P:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dotTranspose(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->Q:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->plus(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->fill(D)V

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->P:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-static {p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->setIdentity(Landroidx/input/motionprediction/kalman/matrix/Matrix;)V

    return-void
.end method

.method public update(Landroidx/input/motionprediction/kalman/matrix/Matrix;)V
    .locals 3
    .param p1    # Landroidx/input/motionprediction/kalman/matrix/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->H:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->f:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->minus(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->H:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->P:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->g:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->H:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->h:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dotTranspose(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->R:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->plus(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->i:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->inverse(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->P:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->H:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->e:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dotTranspose(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->h:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->d:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->x:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->d:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->a:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v1, p1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->plus(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object p1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->P:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->d:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->H:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->b:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->P:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/KalmanFilter;->c:Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-virtual {v0, v1, p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->minus(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;

    return-void
.end method
