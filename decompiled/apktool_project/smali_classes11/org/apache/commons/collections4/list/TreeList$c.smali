.class public Lorg/apache/commons/collections4/list/TreeList$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections4/OrderedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/TreeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/OrderedIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final e:Lorg/apache/commons/collections4/list/TreeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/TreeList<",
            "TE;>;"
        }
    .end annotation
.end field

.field public f:Lorg/apache/commons/collections4/list/TreeList$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Lorg/apache/commons/collections4/list/TreeList$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/TreeList$b<",
            "TE;>;"
        }
    .end annotation
.end field

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/list/TreeList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList<",
            "TE;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->e:Lorg/apache/commons/collections4/list/TreeList;

    invoke-static {p1}, Lorg/apache/commons/collections4/list/TreeList;->a(Lorg/apache/commons/collections4/list/TreeList;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->j:I

    invoke-static {p1}, Lorg/apache/commons/collections4/list/TreeList;->b(Lorg/apache/commons/collections4/list/TreeList;)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/collections4/list/TreeList;->b(Lorg/apache/commons/collections4/list/TreeList;)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/list/TreeList$b;->f(I)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->f:Lorg/apache/commons/collections4/list/TreeList$b;

    iput p2, p0, Lorg/apache/commons/collections4/list/TreeList$c;->g:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->i:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->e:Lorg/apache/commons/collections4/list/TreeList;

    invoke-static {v0}, Lorg/apache/commons/collections4/list/TreeList;->c(Lorg/apache/commons/collections4/list/TreeList;)I

    move-result v0

    iget p0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->j:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$c;->a()V

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->e:Lorg/apache/commons/collections4/list/TreeList;

    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->g:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections4/list/TreeList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->h:Lorg/apache/commons/collections4/list/TreeList$b;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->i:I

    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->g:I

    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->j:I

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->g:I

    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->e:Lorg/apache/commons/collections4/list/TreeList;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPrevious()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->g:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$c;->a()V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->f:Lorg/apache/commons/collections4/list/TreeList$b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->e:Lorg/apache/commons/collections4/list/TreeList;

    invoke-static {v0}, Lorg/apache/commons/collections4/list/TreeList;->b(Lorg/apache/commons/collections4/list/TreeList;)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->g:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/list/TreeList$b;->f(I)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->f:Lorg/apache/commons/collections4/list/TreeList$b;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->f:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$b;->k()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->f:Lorg/apache/commons/collections4/list/TreeList$b;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->h:Lorg/apache/commons/collections4/list/TreeList$b;

    iget v2, p0, Lorg/apache/commons/collections4/list/TreeList$c;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/collections4/list/TreeList$c;->g:I

    iput v2, p0, Lorg/apache/commons/collections4/list/TreeList$c;->i:I

    invoke-virtual {v1}, Lorg/apache/commons/collections4/list/TreeList$b;->s()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->f:Lorg/apache/commons/collections4/list/TreeList$b;

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No element at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->g:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->g:I

    return p0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$c;->a()V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$c;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->f:Lorg/apache/commons/collections4/list/TreeList$b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->e:Lorg/apache/commons/collections4/list/TreeList;

    invoke-static {v0}, Lorg/apache/commons/collections4/list/TreeList;->b(Lorg/apache/commons/collections4/list/TreeList;)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/list/TreeList$b;->f(I)Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->f:Lorg/apache/commons/collections4/list/TreeList$b;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$b;->t()Lorg/apache/commons/collections4/list/TreeList$b;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->f:Lorg/apache/commons/collections4/list/TreeList$b;

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->f:Lorg/apache/commons/collections4/list/TreeList$b;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$b;->k()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->f:Lorg/apache/commons/collections4/list/TreeList$b;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->h:Lorg/apache/commons/collections4/list/TreeList$b;

    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->g:I

    iput v1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->i:I

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Already at start of list."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public previousIndex()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$c;->nextIndex()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public remove()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$c;->a()V

    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$c;->e:Lorg/apache/commons/collections4/list/TreeList;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections4/list/TreeList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->g:I

    iget v2, p0, Lorg/apache/commons/collections4/list/TreeList$c;->i:I

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->g:I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->f:Lorg/apache/commons/collections4/list/TreeList$b;

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->h:Lorg/apache/commons/collections4/list/TreeList$b;

    iput v1, p0, Lorg/apache/commons/collections4/list/TreeList$c;->i:I

    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->j:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList$c;->a()V

    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList$c;->h:Lorg/apache/commons/collections4/list/TreeList$b;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/TreeList$b;->E(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
