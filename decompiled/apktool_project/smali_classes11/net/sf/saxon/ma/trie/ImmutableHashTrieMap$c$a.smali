.class public Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->iterator()Ljava/util/Iterator;
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
.field public e:I

.field public f:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/ma/trie/TrieKVP<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic g:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;)V
    .locals 1

    iput-object p1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c$a;->g:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c$a;->e:I

    invoke-static {p1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->k(Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;)[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-interface {p1}, Lnet/sf/saxon/ma/trie/ImmutableMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c$a;->f:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Lnet/sf/saxon/ma/trie/TrieKVP;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/ma/trie/TrieKVP<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c$a;->f:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/trie/TrieKVP;

    return-object p0
.end method

.method public hasNext()Z
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c$a;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c$a;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c$a;->e:I

    :goto_0
    iget v0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c$a;->e:I

    const/16 v2, 0x20

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c$a;->g:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;

    invoke-static {v0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->k(Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;)[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object v0

    iget v2, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c$a;->e:I

    aget-object v0, v0, v2

    invoke-interface {v0}, Lnet/sf/saxon/ma/trie/ImmutableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c$a;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c$a;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c$a;->e:I

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c$a;->a()Lnet/sf/saxon/ma/trie/TrieKVP;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
