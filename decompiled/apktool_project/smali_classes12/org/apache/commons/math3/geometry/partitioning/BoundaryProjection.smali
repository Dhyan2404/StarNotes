.class public Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;
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
.field public final a:Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final b:Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final c:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;D)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->a:Lorg/apache/commons/math3/geometry/Point;

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->b:Lorg/apache/commons/math3/geometry/Point;

    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->c:D

    return-void
.end method


# virtual methods
.method public getOffset()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->c:D

    return-wide v0
.end method

.method public getOriginal()Lorg/apache/commons/math3/geometry/Point;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->a:Lorg/apache/commons/math3/geometry/Point;

    return-object p0
.end method

.method public getProjected()Lorg/apache/commons/math3/geometry/Point;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->b:Lorg/apache/commons/math3/geometry/Point;

    return-object p0
.end method
