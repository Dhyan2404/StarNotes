.class public Lorg/apache/commons/collections4/iterators/FilterIterator;
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
.field public e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field public f:Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->h:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->h:Z

    .line 5
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->e:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->h:Z

    .line 8
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->e:Ljava/util/Iterator;

    .line 9
    iput-object p2, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->f:Lorg/apache/commons/collections4/Predicate;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->f:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v1, v0}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->g:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->h:Z

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->e:Ljava/util/Iterator;

    return-object p0
.end method

.method public getPredicate()Lorg/apache/commons/collections4/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->f:Lorg/apache/commons/collections4/Predicate;

    return-object p0
.end method

.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/FilterIterator;->a()Z

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

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/FilterIterator;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->h:Z

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public remove()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->h:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "remove() cannot be called"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIterator(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->e:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->h:Z

    return-void
.end method

.method public setPredicate(Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->f:Lorg/apache/commons/collections4/Predicate;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/collections4/iterators/FilterIterator;->h:Z

    return-void
.end method
