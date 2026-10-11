.class public Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedMapIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/OrderedMapIterator<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final e:Lorg/apache/commons/collections4/OrderedMapIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/OrderedMapIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->e:Lorg/apache/commons/collections4/OrderedMapIterator;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "OrderedMapIterator must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->e:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {p0}, Lorg/apache/commons/collections4/MapIterator;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getOrderedMapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->e:Lorg/apache/commons/collections4/OrderedMapIterator;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->e:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {p0}, Lorg/apache/commons/collections4/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->e:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {p0}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public hasPrevious()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->e:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {p0}, Lorg/apache/commons/collections4/OrderedMapIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->e:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {p0}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public previous()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->e:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {p0}, Lorg/apache/commons/collections4/OrderedMapIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->e:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {p0}, Lorg/apache/commons/collections4/MapIterator;->remove()V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->e:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/MapIterator;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
