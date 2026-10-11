.class public final Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;
.super Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
        "TK;TV;>.g;"
    }
.end annotation


# instance fields
.field public final i:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
            "TK;TV;>.e;"
        }
    .end annotation
.end field

.field public j:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public k:I

.field public final synthetic l:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
            "TK;TV;>.e;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->l:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$g;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$h;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->k:I

    iput-object p2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->i:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->l:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    iget v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->k:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->i:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    invoke-static {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->l(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->i:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    invoke-static {v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->m(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->i:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    invoke-static {v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->subtree(Ljava/lang/Object;II)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->j:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->l:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->k:I

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->j:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->i:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    invoke-static {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)I

    move-result v0

    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->j:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v1, v3, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-le v0, v1, :cond_2

    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;

    invoke-direct {v0, p0, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->i:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    invoke-static {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->l(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)Ljava/lang/Object;

    move-result-object v4

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->i:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    invoke-static {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->m(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)I

    move-result v5

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->i:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    invoke-static {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Ljava/lang/Object;II)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->i:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    invoke-static {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->k(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)I

    move-result p0

    return p0
.end method
