.class public Lorg/apache/commons/collections4/iterators/PeekingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->f:Z

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->g:Z

    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->e:Ljava/util/Iterator;

    return-void
.end method

.method public static peekingIterator(Ljava/util/Iterator;)Lorg/apache/commons/collections4/iterators/PeekingIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/iterators/PeekingIterator<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/PeekingIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/PeekingIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->f:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->h:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->g:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->g:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/PeekingIterator;->a()V

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->f:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->h:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->g:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->h:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->h:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->g:Z

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/PeekingIterator;->a()V

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->f:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->h:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public remove()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->g:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "peek() or element() called before remove()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
