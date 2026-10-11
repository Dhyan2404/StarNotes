.class public Lorg/apache/commons/collections4/map/MultiValueMap$b;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/MultiValueMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/collections4/map/MultiValueMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/MultiValueMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$b;->e:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/collections4/map/MultiValueMap;Lorg/apache/commons/collections4/map/MultiValueMap$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap$b;-><init>(Lorg/apache/commons/collections4/map/MultiValueMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$b;->e:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/iterators/IteratorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections4/iterators/IteratorChain;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$b;->e:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/collections4/map/MultiValueMap$c;

    iget-object v4, p0, Lorg/apache/commons/collections4/map/MultiValueMap$b;->e:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/collections4/map/MultiValueMap$c;-><init>(Lorg/apache/commons/collections4/map/MultiValueMap;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$b;->e:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->totalSize()I

    move-result p0

    return p0
.end method
