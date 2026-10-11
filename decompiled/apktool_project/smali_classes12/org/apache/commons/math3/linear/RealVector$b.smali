.class public final Lorg/apache/commons/math3/linear/RealVector$b;
.super Lorg/apache/commons/math3/linear/RealVector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/RealVector;->unmodifiableRealVector(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/RealVector$b$c;
    }
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public addToEntry(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public append(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->append(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/linear/RealVector;->combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public copy()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public cosine(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->cosine(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public getDimension()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p0

    return p0
.end method

.method public getDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->getDistance(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getEntry(I)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getL1Distance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->getL1Distance(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getL1Norm()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getL1Norm()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLInfDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->getLInfDistance(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getLInfNorm()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getLInfNorm()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorm()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSubVector(II)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->getSubVector(II)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public isInfinite()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->isInfinite()Z

    move-result p0

    return p0
.end method

.method public isNaN()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->isNaN()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/math3/linear/RealVector$Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/math3/linear/RealVector$b$a;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/linear/RealVector$b$a;-><init>(Lorg/apache/commons/math3/linear/RealVector$b;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public mapAdd(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->mapAdd(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public mapAddToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public mapDivide(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->mapDivide(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public mapDivideToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public mapMultiplyToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public mapSubtract(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->mapSubtract(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public mapSubtractToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public outerProduct(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->outerProduct(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public set(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setEntry(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public sparseIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/math3/linear/RealVector$Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->sparseIterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/math3/linear/RealVector$b$b;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/linear/RealVector$b$b;-><init>(Lorg/apache/commons/math3/linear/RealVector$b;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public toArray()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p0

    return-object p0
.end method

.method public unitVector()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->unitVector()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public unitize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method
