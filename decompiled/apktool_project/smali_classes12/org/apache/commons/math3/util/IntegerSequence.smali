.class public Lorg/apache/commons/math3/util/IntegerSequence;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;,
        Lorg/apache/commons/math3/util/IntegerSequence$Range;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static range(II)Lorg/apache/commons/math3/util/IntegerSequence$Range;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/IntegerSequence;->range(III)Lorg/apache/commons/math3/util/IntegerSequence$Range;

    move-result-object p0

    return-object p0
.end method

.method public static range(III)Lorg/apache/commons/math3/util/IntegerSequence$Range;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/util/IntegerSequence$Range;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/util/IntegerSequence$Range;-><init>(III)V

    return-object v0
.end method
