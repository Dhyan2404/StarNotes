.class public Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;
.super Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$b<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final synthetic k:Z


# instance fields
.field public final i:I

.field public final j:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$b;-><init>(Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$a;)V

    .line 3
    iput p1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;->i:I

    .line 4
    iput-object p2, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;->j:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    return-void
.end method

.method public synthetic constructor <init>(ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;-><init>(ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;)V

    return-void
.end method


# virtual methods
.method public d(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)TV;"
        }
    .end annotation

    invoke-static {p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->c(ILjava/lang/Object;)I

    move-result v0

    iget v1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;->i:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;->j:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->d(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
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

    invoke-static {p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->c(ILjava/lang/Object;)I

    move-result v0

    iget v1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;->i:I

    if-ne v0, v1, :cond_0

    new-instance v1, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;->j:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->i(ILjava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;-><init>(ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;)V

    return-object v1

    :cond_0
    new-instance p1, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;

    iget v1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;->i:I

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;->j:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    new-instance v2, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p3, v3}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$a;)V

    invoke-direct {p1, v1, p0, v0, v2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;-><init>(ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;)V

    return-object p1
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

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;->j:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    invoke-interface {p0}, Lnet/sf/saxon/ma/trie/ImmutableMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public j(ILjava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->c(ILjava/lang/Object;)I

    move-result v0

    iget v1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;->i:I

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;->j:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->j(ILjava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->g()Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;-><init>(ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;)V

    return-object p1

    :cond_1
    return-object p0
.end method
