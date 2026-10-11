.class public Lorg/apache/commons/collections4/collection/IndexedCollection;
.super Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator<",
        "TC;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4c80b9ffe2716b76L


# instance fields
.field private final index:Lorg/apache/commons/collections4/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/MultiMap<",
            "TK;TC;>;"
        }
    .end annotation
.end field

.field private final keyTransformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "TC;TK;>;"
        }
    .end annotation
.end field

.field private final uniqueIndex:Z


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/MultiMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TC;TK;>;",
            "Lorg/apache/commons/collections4/MultiMap<",
            "TK;TC;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    iput-object p3, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    iput-boolean p4, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->uniqueIndex:Z

    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/IndexedCollection;->reindex()V

    return-void
.end method

.method private addToIndex(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->uniqueIndex:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duplicate key in uniquely indexed collection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    invoke-interface {p0, v0, p1}, Lorg/apache/commons/collections4/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static nonUniqueIndexedCollection(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/collection/IndexedCollection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TC;TK;>;)",
            "Lorg/apache/commons/collections4/collection/IndexedCollection<",
            "TK;TC;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/collection/IndexedCollection;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lorg/apache/commons/collections4/map/MultiValueMap;->multiValueMap(Ljava/util/Map;)Lorg/apache/commons/collections4/map/MultiValueMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/apache/commons/collections4/collection/IndexedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/MultiMap;Z)V

    return-object v0
.end method

.method private removeFromIndex(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    iget-object p0, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/collections4/MultiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static uniqueIndexedCollection(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/collection/IndexedCollection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TC;TK;>;)",
            "Lorg/apache/commons/collections4/collection/IndexedCollection<",
            "TK;TC;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/collection/IndexedCollection;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lorg/apache/commons/collections4/map/MultiValueMap;->multiValueMap(Ljava/util/Map;)Lorg/apache/commons/collections4/map/MultiValueMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/apache/commons/collections4/collection/IndexedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/MultiMap;Z)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/IndexedCollection;->addToIndex(Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TC;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/collection/IndexedCollection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public clear()V
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->clear()V

    iget-object p0, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    iget-object p0, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/collection/IndexedCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TC;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public reindex()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->decorated()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/collections4/collection/IndexedCollection;->addToIndex(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/IndexedCollection;->removeFromIndex(Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/collection/IndexedCollection;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TC;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/IndexedCollection;->reindex()V

    :cond_3
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/IndexedCollection;->reindex()V

    :cond_0
    return p1
.end method

.method public values(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TC;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method
