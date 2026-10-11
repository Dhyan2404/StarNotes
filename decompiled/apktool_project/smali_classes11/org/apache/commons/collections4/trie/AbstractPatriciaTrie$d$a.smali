.class public final Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;
.super Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
        "TK;TV;>.j<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final j:I

.field public final k:I

.field public l:Z

.field public m:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final synthetic n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Ljava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;TK;II)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;

    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->l:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$j;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;)V

    iput-object p2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->m:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->l:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->followLeft(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$j;->f:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object p3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->i:Ljava/lang/Object;

    iput p4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->j:I

    iput p5, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->k:I

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->l:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget-object p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->m:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v0, p1, p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntryInSubtree(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$j;->b()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->l:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$j;->f:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->c()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->m:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$j;->g:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v3, 0x1

    if-ne v2, v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$j;->remove()V

    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->m:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v2, v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->n:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->l:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->i:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->j:I

    iget v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->k:I

    invoke-virtual {v0, v1, v2, v4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->subtree(Ljava/lang/Object;II)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->m:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    :cond_2
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->k:I

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->m:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-lt v0, v1, :cond_3

    iput-boolean v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;->l:Z

    :cond_3
    return-void
.end method
