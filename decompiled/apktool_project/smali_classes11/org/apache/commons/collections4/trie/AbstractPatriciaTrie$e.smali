.class public Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;
.super Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
        "TK;TV;>.h;"
    }
.end annotation


# instance fields
.field public final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final h:I

.field public final i:I

.field public j:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public transient l:I

.field public m:I

.field public final synthetic n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$h;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$a;)V

    .line 3
    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->j:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->k:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->l:I

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->m:I

    .line 7
    iput-object p2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->g:Ljava/lang/Object;

    .line 8
    iput p3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->h:I

    .line 9
    iput p4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->i:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;IILorg/apache/commons/collections4/trie/AbstractPatriciaTrie$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;II)V

    return-void
.end method

.method public static synthetic k(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->o()I

    move-result p0

    return p0
.end method

.method public static synthetic l(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic m(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->h:I

    return p0
.end method

.method public static synthetic n(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->i:I

    return p0
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v6, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$f;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$f;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v6
.end method

.method public c()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->k:Ljava/lang/Object;

    return-object p0
.end method

.method public e(Ljava/lang/Object;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    iget-object p2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {p2}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;->getKeyAnalyzer()Lorg/apache/commons/collections4/trie/KeyAnalyzer;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->g:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->h:I

    iget p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->i:I

    invoke-virtual {p2, v0, v1, p0, p1}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isPrefix(Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;->getKeyAnalyzer()Lorg/apache/commons/collections4/trie/KeyAnalyzer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->g:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->h:I

    iget p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->i:I

    invoke-virtual {v0, v1, v2, p0, p1}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isPrefix(Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->o()I

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->j:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->higherEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;->getKeyAnalyzer()Lorg/apache/commons/collections4/trie/KeyAnalyzer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->g:Ljava/lang/Object;

    iget v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->h:I

    iget p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->i:I

    invoke-virtual {v0, v2, v3, p0, v1}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isPrefix(Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public g(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->f(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public h(Ljava/lang/Object;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    iget-object p2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {p2}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;->getKeyAnalyzer()Lorg/apache/commons/collections4/trie/KeyAnalyzer;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->g:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->h:I

    iget p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->i:I

    invoke-virtual {p2, v0, v1, p0, p1}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isPrefix(Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public i()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public j()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->o()I

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->k:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lastEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lowerEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;->getKeyAnalyzer()Lorg/apache/commons/collections4/trie/KeyAnalyzer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->g:Ljava/lang/Object;

    iget v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->h:I

    iget p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->i:I

    invoke-virtual {v0, v2, v3, p0, v1}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isPrefix(Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final o()I
    .locals 6

    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->l:I

    if-eq v0, v1, :cond_9

    :cond_0
    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$h;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->m:I

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iput v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->m:I

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_2

    move-object v4, v3

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->j:Ljava/lang/Object;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    move-object v5, v1

    check-cast v5, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v4, v5}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->previousEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    :goto_2
    iput-object v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->j:Ljava/lang/Object;

    :cond_4
    iget-object v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->j:Ljava/lang/Object;

    iput-object v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->k:Ljava/lang/Object;

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->m:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->m:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    move-object v0, v3

    goto :goto_4

    :cond_6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->k:Ljava/lang/Object;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    check-cast v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    :goto_5
    iput-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->k:Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->l:I

    :cond_9
    iget p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->m:I

    return p0
.end method
