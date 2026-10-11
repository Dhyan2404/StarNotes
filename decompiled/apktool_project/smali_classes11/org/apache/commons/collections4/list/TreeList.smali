.class public Lorg/apache/commons/collections4/list/TreeList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/list/TreeList$c;,
        Lorg/apache/commons/collections4/list/TreeList$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public e:Lorg/apache/commons/collections4/list/TreeList$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation
.end field

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lorg/apache/commons/collections4/list/TreeList$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$b;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/list/TreeList$a;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->e:Lorg/apache/commons/collections4/list/TreeList$b;

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList;->f:I

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/collections4/list/TreeList;)I
    .locals 0

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method public static synthetic b(Lorg/apache/commons/collections4/list/TreeList;)Lorg/apache/commons/collections4/list/TreeList$b;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList;->e:Lorg/apache/commons/collections4/list/TreeList$b;

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/commons/collections4/list/TreeList;)I
    .locals 0

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/collections4/list/TreeList;->d(III)V

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->e:Lorg/apache/commons/collections4/list/TreeList$b;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/collections4/list/TreeList$b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/collections4/list/TreeList$b;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$a;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->e:Lorg/apache/commons/collections4/list/TreeList$b;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$b;->n(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList;->e:Lorg/apache/commons/collections4/list/TreeList$b;

    :goto_0
    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList;->f:I

    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    new-instance v0, Lorg/apache/commons/collections4/list/TreeList$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$b;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/list/TreeList$a;)V

    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList;->e:Lorg/apache/commons/collections4/list/TreeList$b;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/apache/commons/collections4/list/TreeList;->f:I

    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$b;->b(Lorg/apache/commons/collections4/list/TreeList$b;Lorg/apache/commons/collections4/list/TreeList$b;I)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->e:Lorg/apache/commons/collections4/list/TreeList$b;

    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList;->f:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList;->f:I

    const/4 p0, 0x1

    return p0
.end method

.method public clear()V
    .locals 1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->e:Lorg/apache/commons/collections4/list/TreeList$b;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList;->f:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/TreeList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d(III)V
    .locals 1

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/collections4/list/TreeList;->d(III)V

    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList;->e:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/TreeList$b;->f(I)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->k()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList;->e:Lorg/apache/commons/collections4/list/TreeList$b;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->a(Lorg/apache/commons/collections4/list/TreeList$b;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/TreeList$b;->m(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/TreeList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/TreeList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/collections4/list/TreeList;->d(III)V

    .line 3
    new-instance v0, Lorg/apache/commons/collections4/list/TreeList$c;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/TreeList$c;-><init>(Lorg/apache/commons/collections4/list/TreeList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/collections4/list/TreeList;->d(III)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/TreeList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList;->e:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections4/list/TreeList$b;->v(I)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList;->e:Lorg/apache/commons/collections4/list/TreeList$b;

    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList;->f:I

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/collections4/list/TreeList;->d(III)V

    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList;->e:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/TreeList$b;->f(I)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->c(Lorg/apache/commons/collections4/list/TreeList$b;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/list/TreeList$b;->E(Ljava/lang/Object;)V

    return-object p1
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/collections4/list/TreeList;->f:I

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList;->e:Lorg/apache/commons/collections4/list/TreeList$b;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/collections4/list/TreeList$b;->a(Lorg/apache/commons/collections4/list/TreeList$b;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections4/list/TreeList$b;->F([Ljava/lang/Object;I)V

    :cond_0
    return-object v0
.end method
