.class public Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->a([D[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:[D

.field public final synthetic f:[D

.field public final synthetic g:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;[D[D)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$a;->g:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;

    iput-object p2, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$a;->e:[D

    iput-object p3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$a;->f:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/math3/optimization/PointVectorValuePair;Lorg/apache/commons/math3/optimization/PointVectorValuePair;)I
    .locals 2

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$a;->b(Lorg/apache/commons/math3/optimization/PointVectorValuePair;)D

    move-result-wide v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$a;->b(Lorg/apache/commons/math3/optimization/PointVectorValuePair;)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public final b(Lorg/apache/commons/math3/optimization/PointVectorValuePair;)D
    .locals 7

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getValueRef()[D

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-wide v3, p1, v2

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$a;->e:[D

    aget-wide v5, v5, v2

    sub-double/2addr v3, v5

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$a;->f:[D

    aget-wide v5, v5, v2

    mul-double/2addr v5, v3

    mul-double/2addr v5, v3

    add-double/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    check-cast p2, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$a;->a(Lorg/apache/commons/math3/optimization/PointVectorValuePair;Lorg/apache/commons/math3/optimization/PointVectorValuePair;)I

    move-result p0

    return p0
.end method
