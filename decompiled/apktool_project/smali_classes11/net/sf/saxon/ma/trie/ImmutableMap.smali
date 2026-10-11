.class public interface abstract Lnet/sf/saxon/ma/trie/ImmutableMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lnet/sf/saxon/ma/trie/TrieKVP<",
        "TK;TV;>;>;"
    }
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/ma/trie/TrieKVP<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lnet/sf/saxon/ma/trie/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lnet/sf/saxon/ma/trie/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method
