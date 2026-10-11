.class public Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field public b:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;

.field public c:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Line;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;->a:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;->b:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;->c:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;->b:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;

    return-object p0
.end method

.method public c()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;->a:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object p0
.end method

.method public d()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;->c:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;

    return-object p0
.end method

.method public e(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;->b:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->b()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;->a(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    return-void
.end method

.method public f(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;->c:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->b()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;->a(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    return-void
.end method

.method public g(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;)Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 3

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    if-ne v0, v2, :cond_1

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
