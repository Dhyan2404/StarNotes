.class public Lorg/apache/commons/math3/filter/DefaultMeasurementModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/filter/MeasurementModel;


# instance fields
.field public a:Lorg/apache/commons/math3/linear/RealMatrix;

.field public b:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/filter/DefaultMeasurementModel;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 4
    iput-object p2, p0, Lorg/apache/commons/math3/filter/DefaultMeasurementModel;->b:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method public constructor <init>([[D[[D)V
    .locals 1
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

    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/filter/DefaultMeasurementModel;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)V

    return-void
.end method


# virtual methods
.method public getMeasurementMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/filter/DefaultMeasurementModel;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getMeasurementNoise()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/filter/DefaultMeasurementModel;->b:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method
