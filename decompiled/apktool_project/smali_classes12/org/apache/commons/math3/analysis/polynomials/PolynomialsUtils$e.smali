.class public final Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->createJacobiPolynomial(III)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$e;->a:I

    iput p2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)[Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 9

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$e;->a:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$e;->b:I

    add-int/2addr v1, v2

    add-int v2, v1, p1

    add-int/lit8 v3, v2, -0x1

    add-int/lit8 v4, v2, -0x2

    mul-int/lit8 v5, p1, 0x2

    mul-int/2addr v5, v1

    mul-int/2addr v5, v4

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/commons/math3/fraction/BigFraction;

    new-instance v6, Lorg/apache/commons/math3/fraction/BigFraction;

    iget v7, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$e;->a:I

    mul-int/2addr v7, v7

    iget v8, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$e;->b:I

    mul-int/2addr v8, v8

    sub-int/2addr v7, v8

    mul-int/2addr v7, v3

    invoke-direct {v6, v7, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    const/4 v7, 0x0

    aput-object v6, v1, v7

    new-instance v6, Lorg/apache/commons/math3/fraction/BigFraction;

    mul-int/2addr v3, v2

    mul-int/2addr v3, v4

    invoke-direct {v6, v3, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    aput-object v6, v1, v0

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    iget v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$e;->a:I

    add-int/2addr v4, p1

    sub-int/2addr v4, v0

    const/4 v6, 0x2

    mul-int/2addr v4, v6

    iget p0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$e;->b:I

    add-int/2addr p1, p0

    sub-int/2addr p1, v0

    mul-int/2addr v4, p1

    mul-int/2addr v4, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    aput-object v3, v1, v6

    return-object v1
.end method
