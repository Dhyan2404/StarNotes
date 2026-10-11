.class public Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x74c97ec363c1017fL


# instance fields
.field private final expected:[Ljava/lang/Integer;

.field private final wrong:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Integer;[Ljava/lang/Integer;)V
    .locals 1

    .line 2
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p2}, [Ljava/lang/Integer;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    iput-object p1, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->wrong:[Ljava/lang/Integer;

    .line 4
    invoke-virtual {p3}, [Ljava/lang/Integer;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    iput-object p1, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->expected:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Integer;[Ljava/lang/Integer;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Integer;[Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getExpectedDimension(I)I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->expected:[Ljava/lang/Integer;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getExpectedDimensions()[Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->expected:[Ljava/lang/Integer;

    invoke-virtual {p0}, [Ljava/lang/Integer;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method public getWrongDimension(I)I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->wrong:[Ljava/lang/Integer;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getWrongDimensions()[Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->wrong:[Ljava/lang/Integer;

    invoke-virtual {p0}, [Ljava/lang/Integer;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    return-object p0
.end method
