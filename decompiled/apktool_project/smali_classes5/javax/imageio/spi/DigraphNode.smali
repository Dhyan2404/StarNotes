.class Ljavax/imageio/spi/DigraphNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x49aabb997551f5b9L


# instance fields
.field protected data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field protected inDegree:I

.field private inNodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/imageio/spi/DigraphNode<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field protected outNodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/imageio/spi/DigraphNode<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/imageio/spi/DigraphNode;->outNodes:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Ljavax/imageio/spi/DigraphNode;->inDegree:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/imageio/spi/DigraphNode;->inNodes:Ljava/util/Set;

    iput-object p1, p0, Ljavax/imageio/spi/DigraphNode;->data:Ljava/lang/Object;

    return-void
.end method

.method private decrementInDegree()V
    .locals 1

    iget v0, p0, Ljavax/imageio/spi/DigraphNode;->inDegree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavax/imageio/spi/DigraphNode;->inDegree:I

    return-void
.end method

.method private incrementInDegree()V
    .locals 1

    iget v0, p0, Ljavax/imageio/spi/DigraphNode;->inDegree:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/imageio/spi/DigraphNode;->inDegree:I

    return-void
.end method


# virtual methods
.method public addEdge(Ljavax/imageio/spi/DigraphNode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/spi/DigraphNode<",
            "TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ljavax/imageio/spi/DigraphNode;->outNodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Ljavax/imageio/spi/DigraphNode;->outNodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Ljavax/imageio/spi/DigraphNode;->inNodes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p1}, Ljavax/imageio/spi/DigraphNode;->incrementInDegree()V

    const/4 p0, 0x1

    return p0
.end method

.method public dispose()V
    .locals 4

    iget-object v0, p0, Ljavax/imageio/spi/DigraphNode;->inNodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    check-cast v3, Ljavax/imageio/spi/DigraphNode;

    invoke-virtual {v3, p0}, Ljavax/imageio/spi/DigraphNode;->removeEdge(Ljavax/imageio/spi/DigraphNode;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljavax/imageio/spi/DigraphNode;->outNodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    check-cast v2, Ljavax/imageio/spi/DigraphNode;

    invoke-virtual {p0, v2}, Ljavax/imageio/spi/DigraphNode;->removeEdge(Ljavax/imageio/spi/DigraphNode;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Ljavax/imageio/spi/DigraphNode;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public getInDegree()I
    .locals 0

    iget p0, p0, Ljavax/imageio/spi/DigraphNode;->inDegree:I

    return p0
.end method

.method public getOutNodes()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/spi/DigraphNode<",
            "TE;>;>;"
        }
    .end annotation

    iget-object p0, p0, Ljavax/imageio/spi/DigraphNode;->outNodes:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public hasEdge(Ljavax/imageio/spi/DigraphNode;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/spi/DigraphNode<",
            "TE;>;)Z"
        }
    .end annotation

    iget-object p0, p0, Ljavax/imageio/spi/DigraphNode;->outNodes:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeEdge(Ljavax/imageio/spi/DigraphNode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/spi/DigraphNode<",
            "TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ljavax/imageio/spi/DigraphNode;->outNodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Ljavax/imageio/spi/DigraphNode;->outNodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Ljavax/imageio/spi/DigraphNode;->inNodes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p1}, Ljavax/imageio/spi/DigraphNode;->decrementInDegree()V

    const/4 p0, 0x1

    return p0
.end method
