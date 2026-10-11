.class public Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13329b0L


# instance fields
.field private final x:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final y:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final z:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget-object v0, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 26
    iget-object v0, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 27
    iget-object p3, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p3, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    .line 38
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object v0, v7

    move-wide v1, p1

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 39
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object v0, v7

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 40
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object v0, v7

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    move-object v0, p0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    .line 51
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual/range {p9 .. p9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    move-object v1, v11

    move-wide v2, p1

    move-wide/from16 v5, p4

    move-wide/from16 v8, p7

    invoke-interface/range {v1 .. v10}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 52
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual/range {p9 .. p9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    move-object v1, v11

    invoke-interface/range {v1 .. v10}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 53
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual/range {p9 .. p9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    move-object v1, v11

    invoke-interface/range {v1 .. v10}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    move-object v0, p0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v14

    .line 64
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual/range {p9 .. p9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-virtual/range {p12 .. p12}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v13

    move-object v1, v14

    move-wide/from16 v2, p1

    move-wide/from16 v5, p4

    move-wide/from16 v8, p7

    move-wide/from16 v11, p10

    invoke-interface/range {v1 .. v13}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 65
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual/range {p9 .. p9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-virtual/range {p12 .. p12}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v13

    move-object v1, v14

    invoke-interface/range {v1 .. v13}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 66
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual/range {p9 .. p9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-virtual/range {p12 .. p12}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v13

    move-object v1, v14

    invoke-interface/range {v1 .. v13}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-interface {p2}, Lorg/apache/commons/math3/RealFieldElement;->cos()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 13
    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->cos()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 14
    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->sin()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 15
    invoke-interface {p2}, Lorg/apache/commons/math3/RealFieldElement;->sin()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 3
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-object v0, p2, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 18
    iget-object v0, p2, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 19
    iget-object p2, p2, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, p2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {p1, p1, v0, p3, v1}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 30
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {p1, p1, v0, p3, v1}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 31
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p2

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p4

    invoke-interface {p1, p1, p2, p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object v0, p1

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 43
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-virtual {p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    move-object v2, p1

    move-object v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 44
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-virtual {p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    move-object v0, p0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual/range {p8 .. p8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    move-object v1, p1

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 56
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-virtual/range {p8 .. p8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    move-object v3, p1

    move-object v5, p3

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 57
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-virtual/range {p8 .. p8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface/range {v2 .. v10}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 22
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 23
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    move-object v0, p1

    move-object v3, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 34
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    move-object v1, p1

    move-object v4, p1

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 35
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    move-object v1, p1

    move-object v4, p1

    move-object v7, p3

    move-object/from16 v10, p5

    invoke-interface/range {v1 .. v10}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 47
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    move-object v2, p1

    move-object v5, p1

    move-object v8, p3

    move-object/from16 v11, p5

    invoke-interface/range {v2 .. v11}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 48
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    invoke-interface/range {v2 .. v11}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    invoke-virtual/range {p8 .. p8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v11

    move-object/from16 v1, p1

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    move-object/from16 v10, p5

    move-object/from16 v13, p7

    invoke-interface/range {v1 .. v13}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 60
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    invoke-virtual/range {p8 .. p8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v12

    move-object/from16 v2, p1

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move-object/from16 v11, p5

    move-object/from16 v14, p7

    invoke-interface/range {v2 .. v14}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 61
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    invoke-virtual/range {p8 .. p8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v12

    invoke-interface/range {v2 .. v14}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v0, 0x1

    .line 8
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v0, 0x2

    .line 9
    aget-object p1, p1, v0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    return-void

    .line 10
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public static angle(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 2
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_3

    .line 3
    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 4
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    const-wide v7, 0x3fefff2e48e8a71eL    # 0.9999

    mul-double/2addr v5, v7

    .line 5
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    neg-double v9, v5

    cmpg-double v2, v7, v9

    if-ltz v2, :cond_1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    cmpl-double v2, v7, v5

    if-lez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1, v0}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0

    .line 7
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object p0

    .line 8
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    invoke-interface {p0, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0

    .line 11
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static angle(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 13
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_3

    .line 14
    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 15
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    const-wide v7, 0x3fefff2e48e8a71eL    # 0.9999

    mul-double/2addr v5, v7

    .line 16
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    neg-double v9, v5

    cmpg-double v2, v7, v9

    if-ltz v2, :cond_1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    cmpl-double v2, v7, v5

    if-lez v2, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v1, v0}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0

    .line 18
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object p0

    .line 19
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_2

    .line 20
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0

    .line 21
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    invoke-interface {p0, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0

    .line 22
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 23
    invoke-static {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object p0

    return-object p0
.end method

.method public static crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object p0

    return-object p0
.end method

.method public static crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    neg-double v5, v5

    iget-object v7, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    neg-double v6, v6

    iget-object v8, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v2 .. v8}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    neg-double v7, v7

    iget-object v9, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v3 .. v9}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distance(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 11
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 11
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 15
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 11
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 5
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v0, v7

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V

    return-object v7
.end method

.method public add(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    mul-double/2addr v2, p1

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    mul-double/2addr v3, p1

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    mul-double/2addr p1, v3

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    invoke-interface {p0, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4, v5, p0, p1}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    neg-double v5, v5

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v2 .. v8}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    neg-double v7, v7

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v3 .. v9}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public distance(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 2
    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 3
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    invoke-interface {v0, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0, p0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 6
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 7
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    .line 8
    invoke-interface {v0, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0, p0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 2
    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 3
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 6
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 7
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    .line 8
    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 2
    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 3
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpg-double p1, v2, v4

    if-gtz p1, :cond_1

    .line 5
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpg-double p1, v2, v4

    if-gtz p1, :cond_0

    return-object p0

    :cond_0
    return-object v1

    .line 6
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_2

    return-object p0

    :cond_2
    return-object v0
.end method

.method public distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 8
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 9
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    .line 10
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpg-double p1, v2, v4

    if-gtz p1, :cond_1

    .line 11
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpg-double p1, v2, v4

    if-gtz p1, :cond_0

    return-object p0

    :cond_0
    return-object v1

    .line 12
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_2

    return-object p0

    :cond_2
    return-object v0
.end method

.method public distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 2
    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 3
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    invoke-interface {v0, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0, p0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 6
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 7
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    .line 8
    invoke-interface {v0, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0, p0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    move-object v0, v1

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v0 .. v9}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->isNaN()Z

    move-result p0

    return p0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public getAlpha()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public getDelta()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public getNorm()Lorg/apache/commons/math3/RealFieldElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0, p0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public getNorm1()Lorg/apache/commons/math3/RealFieldElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public getNormInf()Lorg/apache/commons/math3/RealFieldElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_2

    return-object p0

    :cond_2
    return-object v0
.end method

.method public getNormSq()Lorg/apache/commons/math3/RealFieldElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0, p0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public getX()Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public getY()Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public getZ()Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x199

    return p0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6b

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x53

    add-int/2addr v0, v1

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    mul-int/lit16 v0, v0, 0x137

    return v0
.end method

.method public isInfinite()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNaN()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public negate()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->scalarMultiply(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v0

    if-gtz v2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v1, v2, v3, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v1

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v1, v2, v3, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v1, v2, p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v1

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public scalarMultiply(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public subtract(DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 5
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    neg-double v4, p1

    move-object v0, v7

    move-object v3, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V

    return-object v7
.end method

.method public subtract(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    mul-double/2addr v2, p1

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    mul-double/2addr v3, p1

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    mul-double/2addr p1, v3

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    invoke-interface {p0, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public toArray()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    aput-object p0, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->toVector3D()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/VectorFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/text/NumberFormat;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;-><init>(Ljava/text/NumberFormat;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->toVector3D()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/VectorFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toVector3D()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 8

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v7
.end method
