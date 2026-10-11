.class public Lorg/apache/commons/math3/fraction/FractionConversionException;
.super Lorg/apache/commons/math3/exception/ConvergenceException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x40b215e598873407L


# direct methods
.method public constructor <init>(DI)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FAILED_FRACTION_CONVERSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(DJJ)V
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION_CONVERSION_OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method
