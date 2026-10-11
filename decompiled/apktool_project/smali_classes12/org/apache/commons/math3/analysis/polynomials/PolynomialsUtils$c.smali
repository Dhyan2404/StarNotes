.class public final Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->createLaguerrePolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)[Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 4

    add-int/lit8 p0, p1, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/commons/math3/fraction/BigFraction;

    new-instance v1, Lorg/apache/commons/math3/fraction/BigFraction;

    mul-int/lit8 v2, p1, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {v1, v2, p0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v1, p1, p0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    const/4 p0, 0x2

    aput-object v1, v0, p0

    return-object v0
.end method
