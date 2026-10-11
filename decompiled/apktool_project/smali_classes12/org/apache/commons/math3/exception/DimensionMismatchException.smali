.class public Lorg/apache/commons/math3/exception/DimensionMismatchException;
.super Lorg/apache/commons/math3/exception/MathIllegalNumberException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x74c97ec363c1017fL


# instance fields
.field private final dimension:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 3
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/exception/MathIllegalNumberException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 2
    iput p3, p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;->dimension:I

    return-void
.end method


# virtual methods
.method public getDimension()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;->dimension:I

    return p0
.end method
