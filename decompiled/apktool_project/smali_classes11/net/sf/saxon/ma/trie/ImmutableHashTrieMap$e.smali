.class public Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;
.super Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
        "TK;TV;>;"
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

.field public final j:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;->i:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;->j:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)TV;"
        }
    .end annotation

    iget-object p1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;->i:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;->j:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i(ILjava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;->i:Ljava/lang/Object;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;

    invoke-direct {p0, p2, p3}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance p1, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;

    new-instance v0, Lnet/sf/saxon/ma/trie/TrieKVP;

    iget-object v1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;->i:Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;->j:Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/ma/trie/TrieKVP;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lnet/sf/saxon/ma/trie/TrieKVP;

    invoke-direct {p0, p2, p3}, Lnet/sf/saxon/ma/trie/TrieKVP;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;-><init>(Lnet/sf/saxon/ma/trie/TrieKVP;Lnet/sf/saxon/ma/trie/TrieKVP;)V

    return-object p1

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v2, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;

    invoke-direct {v2, p2, p3}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v0, p0, v1, v2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->a(IILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/ma/trie/TrieKVP<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/ma/trie/TrieKVP;

    iget-object v1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;->i:Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;->j:Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/ma/trie/TrieKVP;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public j(ILjava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;->i:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->empty()Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableMap;
    .locals 0

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableMap;
    .locals 0

    invoke-super {p0, p1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->remove(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p0

    return-object p0
.end method
