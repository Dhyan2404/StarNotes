.class public Lorg/apache/commons/math3/exception/NotPositiveException;
.super Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x1f3b9591c40dbea7L


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/math3/exception/MathIllegalNumberException;->INTEGER_ZERO:Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V
    .locals 2

    .line 2
    sget-object v0, Lorg/apache/commons/math3/exception/MathIllegalNumberException;->INTEGER_ZERO:Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    return-void
.end method
