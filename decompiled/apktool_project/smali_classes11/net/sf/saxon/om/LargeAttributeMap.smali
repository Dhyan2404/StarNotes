.class public Lnet/sf/saxon/om/LargeAttributeMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/AttributeMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/om/LargeAttributeMap$b;
    }
.end annotation


# static fields
.field public static final synthetic i:Z


# instance fields
.field public e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "Lnet/sf/saxon/om/NodeName;",
            "Lnet/sf/saxon/om/LargeAttributeMap$b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lnet/sf/saxon/om/NodeName;

.field public g:Lnet/sf/saxon/om/NodeName;

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/om/LargeAttributeMap;->f:Lnet/sf/saxon/om/NodeName;

    .line 3
    iput-object v0, p0, Lnet/sf/saxon/om/LargeAttributeMap;->g:Lnet/sf/saxon/om/NodeName;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/AttributeInfo;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnet/sf/saxon/om/LargeAttributeMap;->f:Lnet/sf/saxon/om/NodeName;

    .line 6
    iput-object v0, p0, Lnet/sf/saxon/om/LargeAttributeMap;->g:Lnet/sf/saxon/om/NodeName;

    .line 7
    invoke-virtual {p0}, Lnet/sf/saxon/om/LargeAttributeMap;->c()Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/om/LargeAttributeMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lnet/sf/saxon/om/LargeAttributeMap;->h:I

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    .line 10
    iget-object v3, p0, Lnet/sf/saxon/om/LargeAttributeMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 11
    new-instance v3, Lnet/sf/saxon/om/LargeAttributeMap$b;

    invoke-direct {v3, v0}, Lnet/sf/saxon/om/LargeAttributeMap$b;-><init>(Lnet/sf/saxon/om/LargeAttributeMap$a;)V

    .line 12
    iput-object v2, v3, Lnet/sf/saxon/om/LargeAttributeMap$b;->a:Lnet/sf/saxon/om/AttributeInfo;

    if-nez v1, :cond_0

    .line 13
    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/om/LargeAttributeMap;->f:Lnet/sf/saxon/om/NodeName;

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    iput-object v4, v1, Lnet/sf/saxon/om/LargeAttributeMap$b;->c:Lnet/sf/saxon/om/NodeName;

    .line 15
    iget-object v1, v1, Lnet/sf/saxon/om/LargeAttributeMap$b;->a:Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    iput-object v1, v3, Lnet/sf/saxon/om/LargeAttributeMap$b;->b:Lnet/sf/saxon/om/NodeName;

    .line 16
    :goto_1
    iget-object v1, p0, Lnet/sf/saxon/om/LargeAttributeMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/om/LargeAttributeMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-object v1, v3

    goto :goto_0

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attribute map contains duplicates"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_2
    iget-object p1, v1, Lnet/sf/saxon/om/LargeAttributeMap$b;->a:Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/om/LargeAttributeMap;->g:Lnet/sf/saxon/om/NodeName;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NodeName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "Lnet/sf/saxon/om/NodeName;",
            "Lnet/sf/saxon/om/LargeAttributeMap$b;",
            ">;I",
            "Lnet/sf/saxon/om/NodeName;",
            "Lnet/sf/saxon/om/NodeName;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lnet/sf/saxon/om/LargeAttributeMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    .line 21
    iput p2, p0, Lnet/sf/saxon/om/LargeAttributeMap;->h:I

    .line 22
    iput-object p3, p0, Lnet/sf/saxon/om/LargeAttributeMap;->f:Lnet/sf/saxon/om/NodeName;

    .line 23
    iput-object p4, p0, Lnet/sf/saxon/om/LargeAttributeMap;->g:Lnet/sf/saxon/om/NodeName;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/om/LargeAttributeMap;)Lnet/sf/saxon/om/NodeName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/LargeAttributeMap;->f:Lnet/sf/saxon/om/NodeName;

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/om/LargeAttributeMap;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/LargeAttributeMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized asList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lnet/sf/saxon/om/AttributeInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lnet/sf/saxon/om/LargeAttributeMap;->h:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/om/LargeAttributeMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap<",
            "Lnet/sf/saxon/om/NodeName;",
            "Lnet/sf/saxon/om/LargeAttributeMap$b;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->empty()Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 2

    .line 3
    new-instance v0, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v1, ""

    invoke-direct {v0, v1, p1, p2}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/LargeAttributeMap;->get(Lnet/sf/saxon/om/NodeName;)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p0

    return-object p0
.end method

.method public get(Lnet/sf/saxon/om/NodeName;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/sf/saxon/om/LargeAttributeMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/LargeAttributeMap$b;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/om/LargeAttributeMap$b;->a:Lnet/sf/saxon/om/AttributeInfo;

    :goto_0
    return-object p0
.end method

.method public getByFingerprint(ILnet/sf/saxon/om/NamePool;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 1

    new-instance v0, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/om/NamePool;->getStructuredQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/LargeAttributeMap;->get(Lnet/sf/saxon/om/NodeName;)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/om/AttributeInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/om/LargeAttributeMap$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/LargeAttributeMap$a;-><init>(Lnet/sf/saxon/om/LargeAttributeMap;)V

    return-object v0
.end method

.method public put(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeMap;
    .locals 6

    iget-object v0, p0, Lnet/sf/saxon/om/LargeAttributeMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/LargeAttributeMap$b;

    new-instance v1, Lnet/sf/saxon/om/LargeAttributeMap$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnet/sf/saxon/om/LargeAttributeMap$b;-><init>(Lnet/sf/saxon/om/LargeAttributeMap$a;)V

    iget-object v3, p0, Lnet/sf/saxon/om/LargeAttributeMap;->g:Lnet/sf/saxon/om/NodeName;

    iput-object p1, v1, Lnet/sf/saxon/om/LargeAttributeMap$b;->a:Lnet/sf/saxon/om/AttributeInfo;

    if-nez v0, :cond_0

    iput-object v3, v1, Lnet/sf/saxon/om/LargeAttributeMap$b;->b:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/om/LargeAttributeMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    iget-object v5, p0, Lnet/sf/saxon/om/LargeAttributeMap;->g:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {v4, v5}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/LargeAttributeMap$b;

    new-instance v5, Lnet/sf/saxon/om/LargeAttributeMap$b;

    invoke-direct {v5, v2}, Lnet/sf/saxon/om/LargeAttributeMap$b;-><init>(Lnet/sf/saxon/om/LargeAttributeMap$a;)V

    iget-object v2, v4, Lnet/sf/saxon/om/LargeAttributeMap$b;->a:Lnet/sf/saxon/om/AttributeInfo;

    iput-object v2, v5, Lnet/sf/saxon/om/LargeAttributeMap$b;->a:Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    iput-object v2, v5, Lnet/sf/saxon/om/LargeAttributeMap$b;->c:Lnet/sf/saxon/om/NodeName;

    iget-object v2, v4, Lnet/sf/saxon/om/LargeAttributeMap$b;->b:Lnet/sf/saxon/om/NodeName;

    iput-object v2, v5, Lnet/sf/saxon/om/LargeAttributeMap$b;->b:Lnet/sf/saxon/om/NodeName;

    iget-object v2, p0, Lnet/sf/saxon/om/LargeAttributeMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    iget-object v4, p0, Lnet/sf/saxon/om/LargeAttributeMap;->g:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {v2, v4, v5}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/om/LargeAttributeMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lnet/sf/saxon/om/LargeAttributeMap$b;->b:Lnet/sf/saxon/om/NodeName;

    iput-object v2, v1, Lnet/sf/saxon/om/LargeAttributeMap$b;->b:Lnet/sf/saxon/om/NodeName;

    iget-object v2, v0, Lnet/sf/saxon/om/LargeAttributeMap$b;->c:Lnet/sf/saxon/om/NodeName;

    iput-object v2, v1, Lnet/sf/saxon/om/LargeAttributeMap$b;->c:Lnet/sf/saxon/om/NodeName;

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/om/LargeAttributeMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object p1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/om/LargeAttributeMap;->h:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lnet/sf/saxon/om/LargeAttributeMap;->h:I

    :goto_1
    new-instance v1, Lnet/sf/saxon/om/LargeAttributeMap;

    iget-object p0, p0, Lnet/sf/saxon/om/LargeAttributeMap;->f:Lnet/sf/saxon/om/NodeName;

    invoke-direct {v1, p1, v0, p0, v3}, Lnet/sf/saxon/om/LargeAttributeMap;-><init>(Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NodeName;)V

    return-object v1
.end method

.method public remove(Lnet/sf/saxon/om/NodeName;)Lnet/sf/saxon/om/AttributeMap;
    .locals 7

    iget-object v0, p0, Lnet/sf/saxon/om/LargeAttributeMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/om/LargeAttributeMap;->f:Lnet/sf/saxon/om/NodeName;

    iget-object v1, p0, Lnet/sf/saxon/om/LargeAttributeMap;->g:Lnet/sf/saxon/om/NodeName;

    iget-object v2, p0, Lnet/sf/saxon/om/LargeAttributeMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    invoke-virtual {v2, p1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->remove(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/om/LargeAttributeMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    invoke-virtual {v3, p1}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/om/LargeAttributeMap$b;

    iget-object v3, p1, Lnet/sf/saxon/om/LargeAttributeMap$b;->b:Lnet/sf/saxon/om/NodeName;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v5, p0, Lnet/sf/saxon/om/LargeAttributeMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    invoke-virtual {v5, v3}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/LargeAttributeMap$b;

    new-instance v5, Lnet/sf/saxon/om/LargeAttributeMap$b;

    invoke-direct {v5, v4}, Lnet/sf/saxon/om/LargeAttributeMap$b;-><init>(Lnet/sf/saxon/om/LargeAttributeMap$a;)V

    iget-object v6, v3, Lnet/sf/saxon/om/LargeAttributeMap$b;->a:Lnet/sf/saxon/om/AttributeInfo;

    iput-object v6, v5, Lnet/sf/saxon/om/LargeAttributeMap$b;->a:Lnet/sf/saxon/om/AttributeInfo;

    iget-object v3, v3, Lnet/sf/saxon/om/LargeAttributeMap$b;->b:Lnet/sf/saxon/om/NodeName;

    iput-object v3, v5, Lnet/sf/saxon/om/LargeAttributeMap$b;->b:Lnet/sf/saxon/om/NodeName;

    iget-object v3, p1, Lnet/sf/saxon/om/LargeAttributeMap$b;->c:Lnet/sf/saxon/om/NodeName;

    iput-object v3, v5, Lnet/sf/saxon/om/LargeAttributeMap$b;->c:Lnet/sf/saxon/om/NodeName;

    iget-object v3, p1, Lnet/sf/saxon/om/LargeAttributeMap$b;->b:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {v2, v3, v5}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lnet/sf/saxon/om/LargeAttributeMap$b;->c:Lnet/sf/saxon/om/NodeName;

    :goto_0
    iget-object v3, p1, Lnet/sf/saxon/om/LargeAttributeMap$b;->c:Lnet/sf/saxon/om/NodeName;

    if-eqz v3, :cond_2

    iget-object v5, p0, Lnet/sf/saxon/om/LargeAttributeMap;->e:Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    invoke-virtual {v5, v3}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/LargeAttributeMap$b;

    new-instance v5, Lnet/sf/saxon/om/LargeAttributeMap$b;

    invoke-direct {v5, v4}, Lnet/sf/saxon/om/LargeAttributeMap$b;-><init>(Lnet/sf/saxon/om/LargeAttributeMap$a;)V

    iget-object v4, v3, Lnet/sf/saxon/om/LargeAttributeMap$b;->a:Lnet/sf/saxon/om/AttributeInfo;

    iput-object v4, v5, Lnet/sf/saxon/om/LargeAttributeMap$b;->a:Lnet/sf/saxon/om/AttributeInfo;

    iget-object v3, v3, Lnet/sf/saxon/om/LargeAttributeMap$b;->c:Lnet/sf/saxon/om/NodeName;

    iput-object v3, v5, Lnet/sf/saxon/om/LargeAttributeMap$b;->c:Lnet/sf/saxon/om/NodeName;

    iget-object v3, p1, Lnet/sf/saxon/om/LargeAttributeMap$b;->b:Lnet/sf/saxon/om/NodeName;

    iput-object v3, v5, Lnet/sf/saxon/om/LargeAttributeMap$b;->b:Lnet/sf/saxon/om/NodeName;

    iget-object p1, p1, Lnet/sf/saxon/om/LargeAttributeMap$b;->c:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {v2, p1, v5}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lnet/sf/saxon/om/LargeAttributeMap$b;->b:Lnet/sf/saxon/om/NodeName;

    :goto_1
    new-instance p1, Lnet/sf/saxon/om/LargeAttributeMap;

    iget p0, p0, Lnet/sf/saxon/om/LargeAttributeMap;->h:I

    add-int/lit8 p0, p0, -0x1

    invoke-direct {p1, v2, p0, v0, v1}, Lnet/sf/saxon/om/LargeAttributeMap;-><init>(Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NodeName;)V

    return-object p1
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/om/LargeAttributeMap;->h:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/om/LargeAttributeMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
