.class public final Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final e:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public f:I

.field public final synthetic g:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;->g:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;->f:I

    iput-object p2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;->e:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;->f:I

    if-nez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;->f:I

    iget-object p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;->e:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;->f:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;->a()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 2

    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;->f:I

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;->g:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->l:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    iget-object p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;->e:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
