.class public Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;
.super Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
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
.field public final i:[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;I",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$b;-><init>(Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$a;)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->j:I

    const/16 v0, 0x20

    new-array v1, v0, [Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    .line 3
    iput-object v1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->i:[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    if-ne v1, p1, :cond_0

    .line 4
    iget-object v2, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->i:[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    aput-object p2, v2, v1

    goto :goto_1

    :cond_0
    if-ne v1, p3, :cond_1

    .line 5
    iget-object v2, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->i:[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    aput-object p4, v2, v1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->i:[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    invoke-static {}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->b()Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object v3

    aput-object v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(I[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$b;-><init>(Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$a;)V

    .line 8
    iput p1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->j:I

    .line 9
    iput-object p2, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->i:[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    return-void
.end method

.method public static synthetic k(Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;)[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->i:[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

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

    invoke-static {p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->c(ILjava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->i:[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    aget-object p0, p0, v0

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->d(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public i(ILjava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->c(ILjava/lang/Object;)I

    move-result v0

    const/16 v1, 0x20

    new-array v2, v1, [Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    iget-object v3, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->i:[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v2, v0

    invoke-static {}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->b()Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object v3

    iget p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->j:I

    if-ne v1, v3, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    aget-object v1, v2, v0

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {v1, p1, p2, p3}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->i(ILjava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p1

    aput-object p1, v2, v0

    new-instance p1, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;

    invoke-direct {p1, p0, v2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;-><init>(I[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;)V

    return-object p1
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

    new-instance v0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c$a;-><init>(Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;)V

    return-object v0
.end method

.method public j(ILjava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->c(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->i:[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    aget-object v1, v1, v0

    invoke-static {}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->b()Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return-object p0

    :cond_0
    const/16 v1, 0x20

    new-array v2, v1, [Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    iget-object v3, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->i:[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v3, v2, v0

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {v3, p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->j(ILjava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->b()Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    iget p1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->j:I

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_1
    iget p1, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->j:I

    :goto_0
    if-ne p1, v0, :cond_5

    :goto_1
    if-ge v4, v1, :cond_3

    aget-object p1, v2, v4

    invoke-static {}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->b()Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p2

    if-eq p1, p2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    :goto_2
    iget-object p0, p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;->i:[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;

    const/4 p2, 0x0

    invoke-direct {p1, v4, p0, p2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;-><init>(ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$a;)V

    return-object p1

    :cond_4
    return-object p0

    :cond_5
    new-instance p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;

    invoke-direct {p0, p1, v2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;-><init>(I[Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;)V

    return-object p0
.end method
