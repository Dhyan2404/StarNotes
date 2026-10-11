.class public Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lnet/sf/saxon/ma/trie/TrieKVP<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/ma/trie/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/ma/trie/ImmutableList<",
            "Lnet/sf/saxon/ma/trie/TrieKVP<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f$a;->f:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;->k(Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;)Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f$a;->e:Lnet/sf/saxon/ma/trie/ImmutableList;

    return-void
.end method


# virtual methods
.method public a()Lnet/sf/saxon/ma/trie/TrieKVP;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/ma/trie/TrieKVP<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f$a;->e:Lnet/sf/saxon/ma/trie/ImmutableList;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/trie/ImmutableList;->head()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/trie/TrieKVP;

    iget-object v1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f$a;->e:Lnet/sf/saxon/ma/trie/ImmutableList;

    invoke-virtual {v1}, Lnet/sf/saxon/ma/trie/ImmutableList;->tail()Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f$a;->e:Lnet/sf/saxon/ma/trie/ImmutableList;

    return-object v0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f$a;->e:Lnet/sf/saxon/ma/trie/ImmutableList;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/trie/ImmutableList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f$a;->a()Lnet/sf/saxon/ma/trie/TrieKVP;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
