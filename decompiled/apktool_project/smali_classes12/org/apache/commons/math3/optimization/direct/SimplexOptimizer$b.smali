.class public Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/optimization/PointValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;Z)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$b;->f:Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;

    iput-boolean p2, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$b;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/math3/optimization/PointValuePair;Lorg/apache/commons/math3/optimization/PointValuePair;)I
    .locals 2

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iget-boolean p0, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$b;->e:Z

    if-eqz p0, :cond_0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/math3/optimization/PointValuePair;

    check-cast p2, Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$b;->a(Lorg/apache/commons/math3/optimization/PointValuePair;Lorg/apache/commons/math3/optimization/PointValuePair;)I

    move-result p0

    return p0
.end method
