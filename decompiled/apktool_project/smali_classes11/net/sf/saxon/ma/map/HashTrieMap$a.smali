.class public Lnet/sf/saxon/ma/map/HashTrieMap$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AtomicIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/ma/map/HashTrieMap;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/ma/trie/TrieKVP<",
            "Lnet/sf/saxon/expr/sort/AtomicMatchKey;",
            "Lnet/sf/saxon/ma/map/KeyValuePair;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lnet/sf/saxon/ma/map/HashTrieMap;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/ma/map/HashTrieMap;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap$a;->f:Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lnet/sf/saxon/ma/map/HashTrieMap;->a(Lnet/sf/saxon/ma/map/HashTrieMap;)Lnet/sf/saxon/ma/trie/ImmutableMap;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/ma/trie/ImmutableMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap$a;->e:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/HashTrieMap$a;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/AtomicValue;
    .locals 1

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap$a;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lnet/sf/saxon/ma/map/HashTrieMap$a;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/trie/TrieKVP;

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/TrieKVP;->value:Ljava/lang/Object;

    check-cast p0, Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object p0, p0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
