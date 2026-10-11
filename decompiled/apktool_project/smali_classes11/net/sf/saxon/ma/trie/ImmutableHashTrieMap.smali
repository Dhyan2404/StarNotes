.class public abstract Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/ma/trie/ImmutableMap;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;,
        Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;,
        Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$b;,
        Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$f;,
        Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$e;,
        Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/sf/saxon/ma/trie/ImmutableMap<",
        "TK;TV;>;",
        "Ljava/lang/Iterable<",
        "Lnet/sf/saxon/ma/trie/TrieKVP<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

.field public static final f:I = 0x5

.field public static final g:I = 0x20

.field public static final h:I = 0x1f


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$d;-><init>(Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$a;)V

    sput-object v0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(IILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->h(IILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .locals 1

    sget-object v0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    return-object v0
.end method

.method public static synthetic c(ILjava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->e(ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static e(ILjava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(ITK;)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    shr-int p0, p1, p0

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static empty()Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    return-object v0
.end method

.method public static h(IILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;I",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;)",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    shr-int v0, p1, p0

    and-int/lit8 v0, v0, 0x1f

    shr-int v1, p3, p0

    and-int/lit8 v1, v1, 0x1f

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x5

    shr-int v0, p1, p0

    and-int/lit8 v0, v0, 0x1f

    shr-int v1, p3, p0

    and-int/lit8 v1, v1, 0x1f

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;

    invoke-direct {p0, v0, p2, v1, p4}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$c;-><init>(ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    new-instance p3, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p4, 0x0

    invoke-direct {p3, p2, p0, p4}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$g;-><init>(ILnet/sf/saxon/ma/trie/ImmutableHashTrieMap;Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap$a;)V

    move-object p0, p3

    goto :goto_1

    :cond_1
    return-object p0
.end method


# virtual methods
.method public abstract d(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)TV;"
        }
    .end annotation
.end method

.method public abstract g()Z
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->d(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract i(ILjava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract j(ILjava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->i(ILjava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableMap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->j(ILjava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableMap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->remove(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p0

    return-object p0
.end method
