.class public Lorg/apache/commons/math3/linear/NonSquareOperatorException;
.super Lorg/apache/commons/math3/exception/DimensionMismatchException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x39860661cc552322L


# direct methods
.method public constructor <init>(II)V
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NON_SQUARE_OPERATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V

    return-void
.end method
