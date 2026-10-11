.class public Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
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
.field public final e:Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public final i:I

.field public j:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->e:Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;

    invoke-static {p1}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->access$000(Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->f:Ljava/util/Iterator;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->g:Ljava/util/Map$Entry;

    invoke-static {p1}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->access$100(Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->i:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->j:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->h:I

    if-gtz v0, :cond_1

    iget-object p0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->f:Ljava/util/Iterator;

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

    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->e:Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;

    invoke-static {v0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->access$100(Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->i:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->g:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    iget v0, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    iput v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->h:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->j:Z

    iget v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->h:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->h:I

    iget-object p0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->g:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->e:Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;

    invoke-static {v0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->access$100(Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->i:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->g:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    iget v1, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->e:Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;

    invoke-static {v0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;->access$210(Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$a;->j:Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method
