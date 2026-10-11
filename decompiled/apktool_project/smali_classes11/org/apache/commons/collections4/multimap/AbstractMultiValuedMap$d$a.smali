.class public final Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Transformer<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;",
        "Lorg/apache/commons/collections4/MultiSet$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$d;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$d$a;->e:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$d;Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$d$a;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;)Lorg/apache/commons/collections4/MultiSet$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$d$a$a;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$d$a$a;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$d$a;Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$d$a;->a(Ljava/util/Map$Entry;)Lorg/apache/commons/collections4/MultiSet$Entry;

    move-result-object p0

    return-object p0
.end method
