.class public Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
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
            "TS;>;"
        }
    .end annotation
.end field

.field public final b:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final c:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/NodesSet;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/NodesSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<",
            "TS;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->a:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 4
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->b:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 5
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->c:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    return-void
.end method


# virtual methods
.method public getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->b:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object p0
.end method

.method public getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->a:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object p0
.end method

.method public getSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<",
            "TS;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->c:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    return-object p0
.end method
