.class public Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;
.super Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
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


# static fields
.field public static final synthetic j:Z


# instance fields
.field public final i:Lnet/sf/saxon/ma/trie/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/ma/trie/ImmutableList<",
            "Lnet/sf/saxon/ma/trie/TrieKVP<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/ma/trie/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/ma/trie/ImmutableList<",
            "Lnet/sf/saxon/ma/trie/TrieKVP<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;-><init>()V

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;->i:Lnet/sf/saxon/ma/trie/ImmutableList;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/ma/trie/TrieKVP;Lnet/sf/saxon/ma/trie/TrieKVP;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/ma/trie/TrieKVP<",
            "TK;TV;>;",
            "Lnet/sf/saxon/ma/trie/TrieKVP<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;-><init>()V

    .line 2
    invoke-static {}, Lnet/sf/saxon/ma/trie/ImmutableList;->empty()Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lnet/sf/saxon/ma/trie/ImmutableList;->prepend(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableList;->prepend(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;->i:Lnet/sf/saxon/ma/trie/ImmutableList;

    return-void
.end method

.method public static synthetic k(Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;)Lnet/sf/saxon/ma/trie/ImmutableList;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;->i:Lnet/sf/saxon/ma/trie/ImmutableList;

    return-object p0
.end method


# virtual methods
.method public d(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)TV;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;->i:Lnet/sf/saxon/ma/trie/ImmutableList;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/trie/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/ma/trie/TrieKVP;

    iget-object v0, p1, Lnet/sf/saxon/ma/trie/TrieKVP;->key:Ljava/lang/Object;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p1, Lnet/sf/saxon/ma/trie/TrieKVP;->value:Ljava/lang/Object;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i(ILjava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;->i:Lnet/sf/saxon/ma/trie/ImmutableList;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/trie/ImmutableList;->head()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/trie/TrieKVP;

    iget-object v0, v0, Lnet/sf/saxon/ma/trie/TrieKVP;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;->i:Lnet/sf/saxon/ma/trie/ImmutableList;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/trie/ImmutableList;->head()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/trie/TrieKVP;

    iget-object v0, v0, Lnet/sf/saxon/ma/trie/TrieKVP;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v2, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p3, v3}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$a;)V

    invoke-static {p1, v0, p0, v1, v2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->a(IILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/ma/trie/ImmutableList;->empty()Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;->i:Lnet/sf/saxon/ma/trie/ImmutableList;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/trie/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/ma/trie/TrieKVP;

    iget-object v2, v1, Lnet/sf/saxon/ma/trie/TrieKVP;->key:Ljava/lang/Object;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lnet/sf/saxon/ma/trie/TrieKVP;

    invoke-direct {v0, p2, p3}, Lnet/sf/saxon/ma/trie/TrieKVP;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/ma/trie/ImmutableList;->prepend(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lnet/sf/saxon/ma/trie/ImmutableList;->prepend(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    new-instance p0, Lnet/sf/saxon/ma/trie/TrieKVP;

    invoke-direct {p0, p2, p3}, Lnet/sf/saxon/ma/trie/TrieKVP;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/ma/trie/ImmutableList;->prepend(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object p1

    :cond_3
    new-instance p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;

    invoke-direct {p0, p1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;-><init>(Lnet/sf/saxon/ma/trie/ImmutableList;)V

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/ma/trie/TrieKVP<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f$a;-><init>(Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;)V

    return-object v0
.end method

.method public j(ILjava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/ma/trie/ImmutableList;->empty()Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;->i:Lnet/sf/saxon/ma/trie/ImmutableList;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/trie/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/ma/trie/TrieKVP;

    iget-object v2, v1, Lnet/sf/saxon/ma/trie/TrieKVP;->key:Ljava/lang/Object;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Lnet/sf/saxon/ma/trie/ImmutableList;->prepend(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    if-ne v0, p0, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/ma/trie/ImmutableList;->head()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/trie/TrieKVP;

    new-instance p1, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;

    iget-object p2, p0, Lnet/sf/saxon/ma/trie/TrieKVP;->key:Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/TrieKVP;->value:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$a;)V

    return-object p1

    :cond_2
    new-instance p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;

    invoke-direct {p0, p1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;-><init>(Lnet/sf/saxon/ma/trie/ImmutableList;)V

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
