.class public final Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->createHermitePolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
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
    .locals 2

    const/4 p0, 0x3

    new-array p0, p0, [Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v1, p0, v0

    const/4 v0, 0x1

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->TWO:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v1, p0, v0

    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v1, 0x2

    mul-int/2addr p1, v1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    aput-object v0, p0, v1

    return-object p0
.end method
