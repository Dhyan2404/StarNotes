.class public Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[D>;"
    }
.end annotation


# instance fields
.field public final e:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation
.end field

.field public g:[D

.field public final synthetic h:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->h:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->d(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->e:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->f:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->e(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [D

    fill-array-data p1, :array_0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->g:[D

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->g:[D

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->b()V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x401921fb54442d18L    # 6.283185307179586
    .end array-data
.end method


# virtual methods
.method public a()[D
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->g:[D

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->b()V

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final b()V
    .locals 10

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->f:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->h:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v1, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->g(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->h:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v1, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->h(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->f:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->g:[D

    return-void

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->h:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v3, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->i(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->h:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v3, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->h(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    new-array v1, v5, [D

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->h:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v5, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->j(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v5

    aput-wide v5, v1, v4

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->h:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v0, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->j(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v4

    aput-wide v4, v1, v3

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->g:[D

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->f:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->e:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    :goto_2
    if-eqz v2, :cond_4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->h:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v6, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->i(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->h:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v6, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->k(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    new-array v5, v5, [D

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->h:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v6, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->j(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v6

    aput-wide v6, v5, v4

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->h:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v0, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->j(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v6

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v6, v8

    aput-wide v6, v5, v3

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->g:[D

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->f:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    :goto_3
    return-void

    :cond_5
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->g:[D

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;->a()[D

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
