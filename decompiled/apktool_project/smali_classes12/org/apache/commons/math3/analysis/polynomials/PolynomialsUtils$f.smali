.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$f;->a:I

    iput p2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$f;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$f;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$f;

    iget v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$f;->a:I

    iget v2, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$f;->a:I

    if-ne v1, v2, :cond_1

    iget p0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$f;->b:I

    iget p1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$f;->b:I

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$f;->a:I

    shl-int/lit8 v0, v0, 0x10

    iget p0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$f;->b:I

    xor-int/2addr p0, v0

    return p0
.end method
