.class public Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$c$a;->nextIterator(I)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Transformer<",
        "TV;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$c$a;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$c$a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$c$a$a;->f:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$c$a;

    iput-object p2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$c$a$a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$e;

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$c$a$a;->f:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$c$a;

    iget-object v1, v1, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$c$a;->k:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$c;

    iget-object v1, v1, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$c;->e:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    iget-object p0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$c$a$a;->e:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$e;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$c$a$a;->a(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
