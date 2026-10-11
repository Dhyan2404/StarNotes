.class public Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/traversal/DocumentTraversal;
.implements Lorg/w3c/dom/events/DocumentEvent;
.implements Lorg/w3c/dom/ranges/DocumentRange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;,
        Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x728175aac81fa76L


# instance fields
.field protected eventListeners:Ljava/util/Hashtable;

.field protected iterators:Ljava/util/Vector;

.field protected mutationEvents:Z

.field protected ranges:Ljava/util/Vector;

.field savedEnclosingAttr:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/DocumentType;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;-><init>(Lorg/w3c/dom/DocumentType;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/DocumentType;Z)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;-><init>(Lorg/w3c/dom/DocumentType;Z)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;-><init>(Z)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 1

    if-eqz p2, :cond_3

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->removeEventListener(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->getEventListeners(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->setEventListeners(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/util/Vector;)V

    :cond_1
    new-instance p1, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/dom/LCount;->lookup(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/dom/LCount;

    move-result-object p0

    if-eqz p4, :cond_2

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->captures:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->captures:I

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->bubbles:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->bubbles:I

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    :cond_3
    :goto_0
    return-void
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->cloneNode(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Z)V

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    iput-boolean p0, v0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    return-object v0
.end method

.method public copyEventListeners(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->getEventListeners(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->setEventListeners(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/util/Vector;)V

    return-void
.end method

.method public createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string p0, "Events"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Event"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "MutationEvents"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "MutationEvent"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "NOT_SUPPORTED_ERR"

    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0x9

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;-><init>()V

    return-object p0

    :cond_3
    :goto_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;-><init>()V

    return-object p0
.end method

.method public createNodeIterator(Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)Lorg/w3c/dom/traversal/NodeIterator;
    .locals 7

    if-eqz p1, :cond_1

    .line 2
    new-instance v6, Lcom/sun/org/apache/xerces/internal/dom/NodeIteratorImpl;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/dom/NodeIteratorImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)V

    .line 3
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->iterators:Ljava/util/Vector;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->iterators:Ljava/util/Vector;

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->iterators:Ljava/util/Vector;

    invoke-virtual {p0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v6

    :cond_1
    const-string p0, "NOT_SUPPORTED_ERR"

    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    .line 6
    invoke-static {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x9

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public createNodeIterator(Lorg/w3c/dom/Node;SLorg/w3c/dom/traversal/NodeFilter;)Lorg/w3c/dom/traversal/NodeIterator;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->createNodeIterator(Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object p0

    return-object p0
.end method

.method public createRange()Lorg/w3c/dom/ranges/Range;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->ranges:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->ranges:Ljava/util/Vector;

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->ranges:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public createTreeWalker(Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)Lorg/w3c/dom/traversal/TreeWalker;
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;-><init>(Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)V

    return-object p0

    :cond_0
    const-string p0, "NOT_SUPPORTED_ERR"

    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    .line 3
    invoke-static {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x9

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public createTreeWalker(Lorg/w3c/dom/Node;SLorg/w3c/dom/traversal/NodeFilter;)Lorg/w3c/dom/traversal/TreeWalker;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->createTreeWalker(Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)Lorg/w3c/dom/traversal/TreeWalker;

    move-result-object p0

    return-object p0
.end method

.method public deletedText(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;II)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->ranges:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->ranges:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->receiveDeletedText(Lorg/w3c/dom/Node;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchAggregateEvents(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Ljava/lang/String;S)V
    .locals 11

    if-eqz p2, :cond_0

    const-string v0, "DOMAttrModified"

    .line 3
    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/dom/LCount;->lookup(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/dom/LCount;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    .line 5
    iget v0, v0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    .line 6
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;-><init>()V

    const-string v3, "DOMAttrModified"

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 7
    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v9

    move-object v2, v0

    move-object v6, p2

    move-object v7, p3

    move v10, p4

    invoke-virtual/range {v2 .. v10}, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 8
    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string p3, "DOMSubtreeModified"

    .line 9
    invoke-static {p3}, Lcom/sun/org/apache/xerces/internal/dom/LCount;->lookup(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/dom/LCount;

    move-result-object p3

    .line 10
    iget p3, p3, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    if-lez p3, :cond_3

    .line 11
    new-instance p3, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;

    invoke-direct {p3}, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;-><init>()V

    const-string v3, "DOMSubtreeModified"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p3

    .line 12
    invoke-interface/range {v2 .. v10}, Lorg/w3c/dom/events/MutationEvent;->initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    if-eqz p2, :cond_2

    .line 13
    invoke-virtual {p0, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchEvent(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p0, v1, p3}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchEvent(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchEvent(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public dispatchAggregateEvents(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p2, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;->node:Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;->oldvalue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchAggregateEvents(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Ljava/lang/String;S)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchAggregateEvents(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Ljava/lang/String;S)V

    :goto_0
    return-void
.end method

.method public dispatchEvent(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    check-cast p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;

    iget-boolean v1, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->initialized:Z

    if-eqz v1, :cond_d

    iget-object v1, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->type:Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/dom/LCount;->lookup(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/dom/LCount;

    move-result-object v1

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    if-nez v2, :cond_1

    iget-boolean p0, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->preventDefault:Z

    return p0

    :cond_1
    iput-object p1, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->target:Lorg/w3c/dom/events/EventTarget;

    iput-boolean v0, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->stopPropagation:Z

    iput-boolean v0, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->preventDefault:Z

    new-instance v2, Ljava/util/Vector;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v3}, Ljava/util/Vector;-><init>(II)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget v3, v1, Lcom/sun/org/apache/xerces/internal/dom/LCount;->captures:I

    if-lez v3, :cond_6

    const/4 v3, 0x1

    iput-short v3, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->eventPhase:S

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_1
    if-ltz v4, :cond_6

    iget-boolean v3, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->stopPropagation:Z

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    iput-object v3, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->currentTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->getEventListeners(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    move v7, v0

    :goto_2
    if-ge v7, v6, :cond_5

    invoke-virtual {v5, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;

    iget-boolean v9, v8, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;->useCapture:Z

    if-eqz v9, :cond_4

    iget-object v9, v8, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;->type:Ljava/lang/String;

    iget-object v10, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v3, v8}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :try_start_0
    iget-object v8, v8, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;->listener:Lorg/w3c/dom/events/EventListener;

    invoke-interface {v8, p2}, Lorg/w3c/dom/events/EventListener;->handleEvent(Lorg/w3c/dom/events/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_6
    :goto_3
    iget v1, v1, Lcom/sun/org/apache/xerces/internal/dom/LCount;->bubbles:I

    if-lez v1, :cond_c

    const/4 v1, 0x2

    iput-short v1, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->eventPhase:S

    iput-object p1, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->currentTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->getEventListeners(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object p1

    iget-boolean v1, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->stopPropagation:Z

    if-nez v1, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    move v4, v0

    :goto_4
    if-ge v4, v3, :cond_8

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;

    iget-boolean v6, v5, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;->useCapture:Z

    if-nez v6, :cond_7

    iget-object v6, v5, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;->type:Ljava/lang/String;

    iget-object v7, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p1, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :try_start_1
    iget-object v5, v5, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;->listener:Lorg/w3c/dom/events/EventListener;

    invoke-interface {v5, p2}, Lorg/w3c/dom/events/EventListener;->handleEvent(Lorg/w3c/dom/events/Event;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    iget-boolean p1, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->bubbles:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x3

    iput-short p1, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->eventPhase:S

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result p1

    move v1, v0

    :goto_5
    if-ge v1, p1, :cond_c

    iget-boolean v3, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->stopPropagation:Z

    if-eqz v3, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    iput-object v3, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->currentTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->getEventListeners(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    move v6, v0

    :goto_6
    if-ge v6, v5, :cond_b

    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;

    iget-boolean v8, v7, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;->useCapture:Z

    if-nez v8, :cond_a

    iget-object v8, v7, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;->type:Ljava/lang/String;

    iget-object v9, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v3, v7}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :try_start_2
    iget-object v7, v7, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;->listener:Lorg/w3c/dom/events/EventListener;

    invoke-interface {v7, p2}, Lorg/w3c/dom/events/EventListener;->handleEvent(Lorg/w3c/dom/events/Event;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    :goto_7
    iget-boolean p0, p2, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->preventDefault:Z

    return p0

    :cond_d
    const-string p0, "UNSPECIFIED_EVENT_TYPE_ERR"

    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    invoke-static {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/events/EventException;

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/events/EventException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public dispatchEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchingEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchingEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V

    return-void
.end method

.method public dispatchingEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchingEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchingEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchingEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V

    return-void
.end method

.method public getEventListeners(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->eventListeners:Ljava/util/Hashtable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Vector;

    return-object p0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 0

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object p0

    return-object p0
.end method

.method getMutationEvents()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    return p0
.end method

.method public insertedNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Z)V
    .locals 12

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v0, :cond_5

    const-string v0, "DOMNodeInserted"

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/dom/LCount;->lookup(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/dom/LCount;

    move-result-object v0

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    if-lez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;-><init>()V

    const-string v2, "DOMNodeInserted"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v5, p1

    invoke-virtual/range {v1 .. v9}, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p0, p2, v0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchEvent(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z

    :cond_0
    const-string v0, "DOMNodeInsertedIntoDocument"

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/dom/LCount;->lookup(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/dom/LCount;

    move-result-object v0

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->savedEnclosingAttr:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;->node:Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_4

    move-object v1, v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->parentNode()Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    move-result-object v1

    :goto_2
    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;-><init>()V

    const-string v3, "DOMNodeInsertedIntoDocument"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v10}, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p0, p2, v0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V

    :cond_4
    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->savedEnclosingAttr:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchAggregateEvents(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;)V

    :cond_5
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->ranges:Ljava/util/Vector;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_3
    if-eq p3, p1, :cond_6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->ranges:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->insertedNodeFromDOM(Lorg/w3c/dom/Node;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public insertedText(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;II)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->ranges:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->ranges:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->receiveInsertedText(Lorg/w3c/dom/Node;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public insertingNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->saveEnclosingAttr(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    :cond_0
    return-void
.end method

.method public modifiedAttrValue(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchAggregateEvents(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Ljava/lang/String;S)V

    :cond_0
    return-void
.end method

.method public modifiedCharacterData(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    const-string p4, "DOMCharacterDataModified"

    invoke-static {p4}, Lcom/sun/org/apache/xerces/internal/dom/LCount;->lookup(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/dom/LCount;

    move-result-object p4

    iget p4, p4, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    if-lez p4, :cond_0

    new-instance p4, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;

    invoke-direct {p4}, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;-><init>()V

    const-string v1, "DOMCharacterDataModified"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p4

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v8}, Lorg/w3c/dom/events/MutationEvent;->initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p0, p1, p4}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchEvent(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z

    :cond_0
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->savedEnclosingAttr:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchAggregateEvents(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;)V

    :cond_1
    return-void
.end method

.method public modifyingCharacterData(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->saveEnclosingAttr(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    :cond_0
    return-void
.end method

.method public removeEventListener(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 4

    if-eqz p2, :cond_5

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->getEventListeners(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;

    iget-boolean v3, v2, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;->useCapture:Z

    if-ne v3, p4, :cond_4

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;->listener:Lorg/w3c/dom/events/EventListener;

    if-ne v3, p3, :cond_4

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;->type:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p3

    if-nez p3, :cond_2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->setEventListeners(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/util/Vector;)V

    :cond_2
    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/dom/LCount;->lookup(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/dom/LCount;

    move-result-object p0

    if-eqz p4, :cond_3

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->captures:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->captures:I

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->bubbles:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->bubbles:I

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method removeNodeIterator(Lorg/w3c/dom/traversal/NodeIterator;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->iterators:Ljava/util/Vector;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method removeRange(Lorg/w3c/dom/ranges/Range;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->ranges:Ljava/util/Vector;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public removedAttrNode(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;)V
    .locals 10

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v0, :cond_1

    const-string v0, "DOMAttrModified"

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/dom/LCount;->lookup(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/dom/LCount;

    move-result-object v0

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    if-lez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;-><init>()V

    const-string v2, "DOMAttrModified"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x3

    move-object v1, v0

    move-object v5, p1

    move-object v8, p3

    invoke-virtual/range {v1 .. v9}, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p0, p2, v0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchEvent(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z

    :cond_0
    const/4 p1, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, p3, p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchAggregateEvents(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Ljava/lang/String;S)V

    :cond_1
    return-void
.end method

.method public removedNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->savedEnclosingAttr:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchAggregateEvents(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;)V

    :cond_0
    return-void
.end method

.method public removingNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Z)V
    .locals 10

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->iterators:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->iterators:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/dom/NodeIteratorImpl;

    invoke-virtual {v3, p2}, Lcom/sun/org/apache/xerces/internal/dom/NodeIteratorImpl;->removeNode(Lorg/w3c/dom/Node;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->ranges:Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_1
    if-eq v1, v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->ranges:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;

    invoke-virtual {v2, p2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->removeNode(Lorg/w3c/dom/Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v0, :cond_6

    if-nez p3, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->saveEnclosingAttr(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    :cond_2
    const-string p3, "DOMNodeRemoved"

    invoke-static {p3}, Lcom/sun/org/apache/xerces/internal/dom/LCount;->lookup(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/dom/LCount;

    move-result-object p3

    iget p3, p3, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    if-lez p3, :cond_3

    new-instance p3, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;

    invoke-direct {p3}, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;-><init>()V

    const-string v1, "DOMNodeRemoved"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p3

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p0, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchEvent(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z

    :cond_3
    const-string p1, "DOMNodeRemovedFromDocument"

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/dom/LCount;->lookup(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/dom/LCount;

    move-result-object p1

    iget p1, p1, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->savedEnclosingAttr:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;->node:Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    goto :goto_2

    :cond_4
    move-object p1, p0

    :goto_2
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->parentNode()Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    move-result-object p3

    :goto_3
    move-object v9, p3

    move-object p3, p1

    move-object p1, v9

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->parentNode()Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    move-result-object p3

    goto :goto_3

    :cond_5
    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result p1

    const/16 p3, 0x9

    if-ne p1, p3, :cond_6

    new-instance p1, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;-><init>()V

    const-string v1, "DOMNodeRemovedFromDocument"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/sun/org/apache/xerces/internal/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V

    :cond_6
    return-void
.end method

.method renamedAttrNode(Lorg/w3c/dom/Attr;Lorg/w3c/dom/Attr;)V
    .locals 0

    return-void
.end method

.method renamedElement(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V
    .locals 0

    return-void
.end method

.method public replacedCharacterData(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->modifiedCharacterData(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public replacedNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->savedEnclosingAttr:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchAggregateEvents(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;)V

    :cond_0
    return-void
.end method

.method public replacedText(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->ranges:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->ranges:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->receiveReplacedText(Lorg/w3c/dom/Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public replacingData(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->saveEnclosingAttr(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    :cond_0
    return-void
.end method

.method public replacingNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->saveEnclosingAttr(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    :cond_0
    return-void
.end method

.method public saveEnclosingAttr(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->savedEnclosingAttr:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;

    const-string v0, "DOMAttrModified"

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/dom/LCount;->lookup(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/dom/LCount;

    move-result-object v0

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    if-lez v0, :cond_3

    :goto_0
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;)V

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;->node:Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;->oldvalue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->savedEnclosingAttr:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;

    return-void

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->parentNode()Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->parentNode()Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    move-result-object p1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setAttrNode(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchAggregateEvents(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Ljava/lang/String;S)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->dispatchAggregateEvents(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Ljava/lang/String;S)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEventListeners(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/util/Vector;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->eventListeners:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->eventListeners:Ljava/util/Hashtable;

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->eventListeners:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->eventListeners:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->eventListeners:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    :cond_2
    :goto_0
    return-void
.end method

.method setMutationEvents(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    return-void
.end method

.method splitData(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->ranges:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->ranges:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->receiveSplitData(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
