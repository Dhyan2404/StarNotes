.class public Lorg/apache/commons/math3/filter/DefaultProcessModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/filter/ProcessModel;


# instance fields
.field public a:Lorg/apache/commons/math3/linear/RealMatrix;

.field public b:Lorg/apache/commons/math3/linear/RealMatrix;

.field public c:Lorg/apache/commons/math3/linear/RealMatrix;

.field public d:Lorg/apache/commons/math3/linear/RealVector;

.field public e:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 5
    iput-object p2, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->b:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 6
    iput-object p3, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 7
    iput-object p4, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->d:Lorg/apache/commons/math3/linear/RealVector;

    .line 8
    iput-object p5, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method public constructor <init>([[D[[D[[D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, p2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v3, p3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/filter/DefaultProcessModel;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;)V

    return-void
.end method

.method public constructor <init>([[D[[D[[D[D[[D)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, p2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, p3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, p4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v4, p5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    move-object p1, v0

    move-object p2, v1

    move-object p3, v2

    move-object p4, v3

    move-object p5, v4

    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/math3/filter/DefaultProcessModel;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;)V

    return-void
.end method


# virtual methods
.method public getControlMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->b:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getInitialErrorCovariance()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getInitialStateEstimate()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->d:Lorg/apache/commons/math3/linear/RealVector;

    return-object p0
.end method

.method public getProcessNoise()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getStateTransitionMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method
