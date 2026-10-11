.class public Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;->b([D[D)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:[D

.field public final synthetic g:[D

.field public final synthetic h:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;I[D[D)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a$a;->h:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;

    iput p2, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a$a;->e:I

    iput-object p3, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a$a;->f:[D

    iput-object p4, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a$a;->g:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 6

    iget v0, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a$a;->e:I

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a$a;->e:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a$a;->f:[D

    aget-wide v2, v2, v1

    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a$a;->g:[D

    aget-wide v4, v4, v1

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a$a;->h:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;->m:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide p0

    return-wide p0
.end method
