.class public final Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->createChebyshevPolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final a:[Lorg/apache/commons/math3/fraction/BigFraction;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/math3/fraction/BigFraction;->TWO:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$a;->a:[Lorg/apache/commons/math3/fraction/BigFraction;

    return-void
.end method


# virtual methods
.method public a(I)[Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$a;->a:[Lorg/apache/commons/math3/fraction/BigFraction;

    return-object p0
.end method
