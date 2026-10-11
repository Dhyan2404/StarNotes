.class public Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;
.super Lorg/apache/commons/collections4/collection/PredicatedCollection;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/MultiSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/PredicatedCollection<",
        "TE;>;",
        "Lorg/apache/commons/collections4/MultiSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337965L


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/MultiSet;Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/PredicatedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Predicate;)V

    return-void
.end method

.method public static predicatedMultiSet(Lorg/apache/commons/collections4/MultiSet;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/multiset/PredicatedMultiSet<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;-><init>(Lorg/apache/commons/collections4/MultiSet;Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/collections4/MultiSet;->add(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic decorated()Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object p0

    return-object p0
.end method

.method public decorated()Lorg/apache/commons/collections4/MultiSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->decorated()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/collections4/MultiSet;

    return-object p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections4/MultiSet;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/MultiSet;->equals(Ljava/lang/Object;)Z

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

.method public getCount(Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/MultiSet;->getCount(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections4/MultiSet;->hashCode()I

    move-result p0

    return p0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/collections4/MultiSet;->remove(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/collections4/MultiSet;->setCount(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections4/MultiSet;->uniqueSet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
