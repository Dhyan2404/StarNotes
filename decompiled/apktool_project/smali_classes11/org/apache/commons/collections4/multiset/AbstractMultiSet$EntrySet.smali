.class public Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multiset/AbstractMultiSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "Lorg/apache/commons/collections4/MultiSet$Entry<",
        "TE;>;>;"
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

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->e:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/apache/commons/collections4/MultiSet$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/commons/collections4/MultiSet$Entry;

    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->e:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->getCount(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->e:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->createEntrySetIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/commons/collections4/MultiSet$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/commons/collections4/MultiSet$Entry;

    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->e:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->e:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->getCount(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result p1

    if-ne p1, v2, :cond_1

    iget-object p0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->e:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->remove(Ljava/lang/Object;I)I

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->e:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->uniqueElements()I

    move-result p0

    return p0
.end method
