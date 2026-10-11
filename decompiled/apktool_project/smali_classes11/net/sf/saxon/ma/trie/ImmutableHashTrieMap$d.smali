.class public Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$d;
.super Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$d;-><init>()V

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i(ILjava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$a;)V

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/ma/trie/TrieKVP<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

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
