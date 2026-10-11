.class public Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
.super Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x74c97ec363c1017fL


# direct methods
.method public constructor <init>(IIII)V
    .locals 4

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_2x2:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    new-array p1, v1, [Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-direct {p0, v0, v2, p1}, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Integer;[Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getExpectedColumnDimension()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->getExpectedDimension(I)I

    move-result p0

    return p0
.end method

.method public getExpectedRowDimension()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->getExpectedDimension(I)I

    move-result p0

    return p0
.end method

.method public getWrongColumnDimension()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->getWrongDimension(I)I

    move-result p0

    return p0
.end method

.method public getWrongRowDimension()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->getWrongDimension(I)I

    move-result p0

    return p0
.end method
