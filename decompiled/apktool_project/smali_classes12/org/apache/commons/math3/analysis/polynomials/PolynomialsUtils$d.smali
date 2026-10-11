.class public final Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->createLegendrePolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
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
    .locals 3

    add-int/lit8 p0, p1, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v2, v0, v1

    new-instance v1, Lorg/apache/commons/math3/fraction/BigFraction;

    add-int v2, p1, p0

    invoke-direct {v1, v2, p0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v1, p1, p0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    const/4 p0, 0x2

    aput-object v1, v0, p0

    return-object v0
.end method
