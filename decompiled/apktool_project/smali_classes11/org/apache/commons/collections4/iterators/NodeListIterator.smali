.class public Lorg/apache/commons/collections4/iterators/NodeListIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lorg/w3c/dom/NodeList;

.field public f:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->f:I

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->e:Lorg/w3c/dom/NodeList;

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Node must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->f:I

    if-eqz p1, :cond_0

    .line 7
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->e:Lorg/w3c/dom/NodeList;

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "NodeList must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->e:Lorg/w3c/dom/NodeList;

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->f:I

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/NodeListIterator;->next()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public next()Lorg/w3c/dom/Node;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->e:Lorg/w3c/dom/NodeList;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->f:I

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->e:Lorg/w3c/dom/NodeList;

    iget v1, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/iterators/NodeListIterator;->f:I

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "underlying nodeList has no more elements"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "remove() method not supported for a NodeListIterator."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
