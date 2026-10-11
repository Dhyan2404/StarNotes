.class public Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public b:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

.field public c:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Circle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->a:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->b:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->c:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->b:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->a(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    return-void
.end method

.method public c(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->c:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->a(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    return-void
.end method

.method public d(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;)Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .locals 3

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    if-ne v0, v2, :cond_1

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIncoming()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->b:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    return-object p0
.end method

.method public getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->a:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    return-object p0
.end method

.method public getOutgoing()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->c:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    return-object p0
.end method
