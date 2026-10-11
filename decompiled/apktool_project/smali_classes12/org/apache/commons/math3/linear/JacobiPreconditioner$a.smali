.class public Lorg/apache/commons/math3/linear/JacobiPreconditioner$a;
.super Lorg/apache/commons/math3/linear/RealLinearOperator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/JacobiPreconditioner;->sqrt()Lorg/apache/commons/math3/linear/RealLinearOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/linear/RealVector;

.field public final synthetic f:Lorg/apache/commons/math3/linear/JacobiPreconditioner;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/JacobiPreconditioner;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner$a;->f:Lorg/apache/commons/math3/linear/JacobiPreconditioner;

    iput-object p2, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner$a;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnDimension()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner$a;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p0

    return p0
.end method

.method public getRowDimension()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner$a;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p0

    return p0
.end method

.method public operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner$a;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/commons/math3/util/MathArrays;->ebeDivide([D[D)[D

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v0
.end method
