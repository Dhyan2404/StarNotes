.class public Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;,
        Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->a:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->a:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    return-object p1
.end method


# virtual methods
.method public delete(Ljava/lang/Comparable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->getNotSmaller(Ljava/lang/Comparable;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-static {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->a(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Ljava/lang/Comparable;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->delete()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->a(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getNext()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object p0

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getLargest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->a:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->d()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getNotLarger(Ljava/lang/Comparable;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->a:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_3

    invoke-static {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->a(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Ljava/lang/Comparable;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->c(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->c(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->b(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p0

    :cond_2
    invoke-static {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->b(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v1

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getNotSmaller(Ljava/lang/Comparable;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->a:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_3

    invoke-static {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->a(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Ljava/lang/Comparable;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    invoke-static {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->b(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->b(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->c(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p0

    :cond_2
    invoke-static {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->c(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v1

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->a:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->e()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public insert(Ljava/lang/Comparable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->a:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;-><init>(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Ljava/lang/Comparable;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->a:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->f(Ljava/lang/Comparable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->a:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->a:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->m()I

    move-result p0

    :goto_0
    return p0
.end method
