.class public Lcom/sun/org/apache/xpath/internal/objects/XObjectFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    goto :goto_1

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object p0, v0

    goto :goto_1

    .line 5
    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 7
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 8
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    check-cast p0, Ljava/lang/Double;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    .line 9
    :cond_3
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public static create(Ljava/lang/Object;Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 3

    .line 10
    instance-of v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    if-eqz v0, :cond_0

    .line 11
    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    goto/16 :goto_2

    .line 12
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 13
    new-instance p1, Lcom/sun/org/apache/xpath/internal/objects/XString;

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object p0, p1

    goto/16 :goto_2

    .line 14
    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 15
    new-instance p1, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 16
    :cond_2
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 17
    new-instance p1, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    check-cast p0, Ljava/lang/Number;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    .line 18
    :cond_3
    instance-of v0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTM;

    const/16 v1, 0xd

    if-eqz v0, :cond_4

    .line 19
    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/DTM;

    .line 20
    :try_start_0
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocument()I

    move-result v0

    .line 21
    invoke-interface {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    .line 22
    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    .line 23
    new-instance v2, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;

    invoke-direct {v2, p0, v1}, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;I)V

    .line 24
    invoke-interface {v2, v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 25
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 26
    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 27
    :cond_4
    instance-of v0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz v0, :cond_5

    .line 28
    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    .line 29
    :try_start_1
    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;I)V

    .line 30
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->getStartNode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 31
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 32
    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 33
    :cond_5
    instance-of v0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz v0, :cond_6

    .line 34
    new-instance p1, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    goto :goto_0

    .line 35
    :cond_6
    instance-of v0, p0, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_7

    .line 36
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSetForDOM;

    check-cast p0, Lorg/w3c/dom/Node;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    :goto_1
    move-object p0, v0

    goto :goto_2

    .line 37
    :cond_7
    instance-of v0, p0, Lorg/w3c/dom/NodeList;

    if-eqz v0, :cond_8

    .line 38
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSetForDOM;

    check-cast p0, Lorg/w3c/dom/NodeList;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/NodeList;Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    goto :goto_1

    .line 39
    :cond_8
    instance-of v0, p0, Lorg/w3c/dom/traversal/NodeIterator;

    if-eqz v0, :cond_9

    .line 40
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSetForDOM;

    check-cast p0, Lorg/w3c/dom/traversal/NodeIterator;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/traversal/NodeIterator;Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    goto :goto_1

    .line 41
    :cond_9
    new-instance p1, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_0

    :goto_2
    return-object p0
.end method
