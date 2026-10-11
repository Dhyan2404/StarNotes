.class public Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
.super Lorg/apache/commons/math3/exception/MathIllegalNumberException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x54ab1889d01291a2L


# instance fields
.field private final boundIsAllowed:Z

.field private final min:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL_BOUND_EXCLUDED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    :goto_0
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V
    .locals 1

    .line 2
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/exception/MathIllegalNumberException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 3
    iput-object p3, p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;->min:Ljava/lang/Number;

    .line 4
    iput-boolean p4, p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;->boundIsAllowed:Z

    return-void
.end method


# virtual methods
.method public getBoundIsAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;->boundIsAllowed:Z

    return p0
.end method

.method public getMin()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;->min:Ljava/lang/Number;

    return-object p0
.end method
