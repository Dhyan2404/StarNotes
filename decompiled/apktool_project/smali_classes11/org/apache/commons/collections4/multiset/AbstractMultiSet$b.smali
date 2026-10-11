.class public Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multiset/AbstractMultiSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

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
.field public final e:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field public g:Lorg/apache/commons/collections4/MultiSet$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/multiset/AbstractMultiSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->e:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->f:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->g:Lorg/apache/commons/collections4/MultiSet$Entry;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->i:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->h:I

    if-gtz v0, :cond_1

    iget-object p0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->f:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/MultiSet$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->g:Lorg/apache/commons/collections4/MultiSet$Entry;

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->h:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->i:Z

    iget v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->h:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->h:I

    iget-object p0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->g:Lorg/apache/commons/collections4/MultiSet$Entry;

    invoke-interface {p0}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->g:Lorg/apache/commons/collections4/MultiSet$Entry;

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->e:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    iget-object v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->g:Lorg/apache/commons/collections4/MultiSet$Entry;

    invoke-interface {v1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$b;->i:Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
