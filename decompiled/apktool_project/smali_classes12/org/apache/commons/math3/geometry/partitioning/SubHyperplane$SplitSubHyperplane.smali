.class public Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitSubHyperplane"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final b:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TU;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->a:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->b:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-void
.end method


# virtual methods
.method public getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TU;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->b:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object p0
.end method

.method public getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TU;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->a:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object p0
.end method

.method public getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->a:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->b:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/commons/math3/geometry/partitioning/Side;->BOTH:Lorg/apache/commons/math3/geometry/partitioning/Side;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->b:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    return-object p0
.end method
