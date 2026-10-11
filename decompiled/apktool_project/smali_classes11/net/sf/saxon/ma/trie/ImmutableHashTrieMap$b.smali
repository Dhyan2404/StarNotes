.class public abstract Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$b;
.super Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
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
    invoke-direct {p0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$b;-><init>()V

    return-void
.end method


# virtual methods
.method public g()Z
    .locals 0

    const/4 p0, 0x1

    return p0
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
