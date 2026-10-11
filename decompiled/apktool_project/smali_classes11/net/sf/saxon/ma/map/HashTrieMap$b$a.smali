.class public Lnet/sf/saxon/ma/map/HashTrieMap$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/ma/map/HashTrieMap$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lnet/sf/saxon/ma/map/KeyValuePair;",
        ">;"
    }
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

.field public final synthetic f:Lnet/sf/saxon/ma/map/HashTrieMap$b;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/ma/map/HashTrieMap$b;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap$b$a;->f:Lnet/sf/saxon/ma/map/HashTrieMap$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lnet/sf/saxon/ma/map/HashTrieMap$b;->e:Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-static {p1}, Lnet/sf/saxon/ma/map/HashTrieMap;->a(Lnet/sf/saxon/ma/map/HashTrieMap;)Lnet/sf/saxon/ma/trie/ImmutableMap;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/ma/trie/ImmutableMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap$b$a;->e:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Lnet/sf/saxon/ma/map/KeyValuePair;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/HashTrieMap$b$a;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/trie/TrieKVP;

    iget-object p0, p0, Lnet/sf/saxon/ma/trie/TrieKVP;->value:Ljava/lang/Object;

    check-cast p0, Lnet/sf/saxon/ma/map/KeyValuePair;

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/HashTrieMap$b$a;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/HashTrieMap$b$a;->a()Lnet/sf/saxon/ma/map/KeyValuePair;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/HashTrieMap$b$a;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
