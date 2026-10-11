.class public final Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;)I
    .locals 2

    invoke-static {p1}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;->a(Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;)D

    move-result-wide p0

    invoke-static {p2}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;->a(Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;)D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;

    check-cast p2, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a$a;->a(Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;)I

    move-result p0

    return p0
.end method
