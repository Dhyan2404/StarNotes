.class public Lorg/apache/commons/math3/linear/SingularValueDecomposition$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/SingularValueDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/linear/RealMatrix;

.field public b:Z


# direct methods
.method public constructor <init>([DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;ZD)V
    .locals 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 5
    aget-wide v2, p1, v1

    cmpl-double v4, v2, p5

    if-lez v4, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    .line 6
    :goto_1
    aget-object v2, p2, v1

    move v3, v0

    .line 7
    :goto_2
    array-length v6, v2

    if-ge v3, v6, :cond_1

    .line 8
    aget-wide v6, v2, v3

    mul-double/2addr v6, v4

    aput-wide v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    invoke-interface {p3, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$b;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 10
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$b;->b:Z

    return-void
.end method

.method public synthetic constructor <init>([DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;ZDLorg/apache/commons/math3/linear/SingularValueDecomposition$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/linear/SingularValueDecomposition$b;-><init>([DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;ZD)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$b;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public isNonSingular()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$b;->b:Z

    return p0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$b;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$b;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method
