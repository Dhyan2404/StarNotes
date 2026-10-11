.class public Lnet/sf/saxon/dom/DOMSender;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/event/Receiver;

.field public final b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/NamespaceMap;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lorg/w3c/dom/Node;

.field protected root:Lorg/w3c/dom/Node;

.field protected systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;Lnet/sf/saxon/event/Receiver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/dom/DOMSender;->b:Ljava/util/Stack;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMSender;->root:Lorg/w3c/dom/Node;

    new-instance p1, Lnet/sf/saxon/event/NamespaceReducer;

    invoke-direct {p1, p2}, Lnet/sf/saxon/event/NamespaceReducer;-><init>(Lnet/sf/saxon/event/Receiver;)V

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMSender;->a:Lnet/sf/saxon/event/Receiver;

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "receiver"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "startNode"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lorg/w3c/dom/Element;)Lnet/sf/saxon/om/NamespaceDeltaMap;
    .locals 8

    const-string p0, ""

    invoke-static {}, Lnet/sf/saxon/om/NamespaceDeltaMap;->emptyMap()Lnet/sf/saxon/om/NamespaceDeltaMap;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    move-object v1, p0

    :cond_0
    if-nez v2, :cond_1

    move-object v2, p0

    :cond_1
    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/om/NamespaceDeltaMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceDeltaMap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    invoke-interface {p1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Attr;

    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "xmlns"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lnet/sf/saxon/om/NamespaceDeltaMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceDeltaMap;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    const-string v5, "xmlns:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lnet/sf/saxon/om/NamespaceDeltaMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceDeltaMap;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_5

    :try_start_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lnet/sf/saxon/om/NamespaceDeltaMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceDeltaMap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public final b(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeName;
    .locals 2

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    if-eqz p2, :cond_0

    const-string p2, ""

    invoke-virtual {p0, p2}, Lnet/sf/saxon/dom/DOMSender;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-direct {v0, p2, p0, p1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Lnet/sf/saxon/om/NoNamespaceName;

    invoke-direct {p0, p1}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/dom/DOMSender;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v1, Lnet/sf/saxon/om/FingerprintedQName;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p2, p0, p1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Prefix "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not bound to any namespace"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMSender;->b:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public final d(Lorg/w3c/dom/Element;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object v0, p0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/dom/DOMSender;->b(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    new-instance v1, Lnet/sf/saxon/expr/parser/Loc;

    iget-object v2, v0, Lnet/sf/saxon/dom/DOMSender;->systemId:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3, v3}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljava/lang/String;II)V

    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v11, :cond_3

    invoke-interface {v3, v13}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Attr;

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->isId()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x800

    move v10, v6

    goto :goto_1

    :cond_0
    move v10, v12

    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_1

    const-string v7, "xmlns"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_2

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v6, v12}, Lnet/sf/saxon/dom/DOMSender;->b(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeName;

    move-result-object v6

    new-instance v14, Lnet/sf/saxon/om/AttributeInfo;

    sget-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v8

    move-object v5, v14

    move-object v9, v1

    invoke-direct/range {v5 .. v10}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v2, v14}, Lnet/sf/saxon/om/AttributeMap;->put(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v2

    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    move-object v6, v2

    iget-object v3, v0, Lnet/sf/saxon/dom/DOMSender;->a:Lnet/sf/saxon/event/Receiver;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v5

    iget-object v2, v0, Lnet/sf/saxon/dom/DOMSender;->b:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lnet/sf/saxon/om/NamespaceMap;

    const/4 v9, 0x0

    move-object v8, v1

    invoke-interface/range {v3 .. v9}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    invoke-virtual/range {p0 .. p1}, Lnet/sf/saxon/dom/DOMSender;->g(Lorg/w3c/dom/Node;)V

    iget-object v0, v0, Lnet/sf/saxon/dom/DOMSender;->a:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    return-void
.end method

.method public final e(Lorg/w3c/dom/Element;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    move-object v2, p1

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v4}, Lnet/sf/saxon/dom/DOMSender;->a(Lorg/w3c/dom/Element;)Lnet/sf/saxon/om/NamespaceDeltaMap;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/sf/saxon/om/NamespaceMap;->applyDifferences(Lnet/sf/saxon/om/NamespaceDeltaMap;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMSender;->b:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/dom/DOMSender;->d(Lorg/w3c/dom/Element;Z)V

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMSender;->b:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public final f()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/dom/DOMSender;->root:Lorg/w3c/dom/Node;

    instance-of v1, v0, Lorg/w3c/dom/Document;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Entity;

    invoke-interface {v2}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->isAbsolute()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lnet/sf/saxon/dom/DOMSender;->root:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getBaseURI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v4, v5}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lnet/sf/saxon/dom/DOMSender;->a:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v5, v3, v4, v2}, Lnet/sf/saxon/event/Receiver;->setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final g(Lorg/w3c/dom/Node;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    iput-object v4, p0, Lnet/sf/saxon/dom/DOMSender;->c:Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2

    const/4 v6, 0x7

    if-eq v5, v6, :cond_1

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    check-cast v4, Lorg/w3c/dom/Comment;

    invoke-interface {v4}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v5, p0, Lnet/sf/saxon/dom/DOMSender;->a:Lnet/sf/saxon/event/Receiver;

    invoke-static {v4}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-interface {v5, v4, v0, v2}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lnet/sf/saxon/dom/DOMSender;->a:Lnet/sf/saxon/event/Receiver;

    check-cast v4, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v4}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-interface {v5, v6, v4, v0, v2}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4}, Lnet/sf/saxon/dom/DOMSender;->g(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_3
    check-cast v4, Lorg/w3c/dom/CharacterData;

    invoke-interface {v4}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v5, p0, Lnet/sf/saxon/dom/DOMSender;->a:Lnet/sf/saxon/event/Receiver;

    invoke-static {v4}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-interface {v5, v4, v0, v2}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_1

    :cond_4
    check-cast v4, Lorg/w3c/dom/Element;

    iget-object v5, p0, Lnet/sf/saxon/dom/DOMSender;->b:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p0, v4}, Lnet/sf/saxon/dom/DOMSender;->a(Lorg/w3c/dom/Element;)Lnet/sf/saxon/om/NamespaceDeltaMap;

    move-result-object v7

    invoke-virtual {v5, v7}, Lnet/sf/saxon/om/NamespaceMap;->applyDifferences(Lnet/sf/saxon/om/NamespaceDeltaMap;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v5

    iget-object v7, p0, Lnet/sf/saxon/dom/DOMSender;->b:Ljava/util/Stack;

    invoke-virtual {v7, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lnet/sf/saxon/om/NamespaceMap;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lnet/sf/saxon/dom/DOMSender;->d(Lorg/w3c/dom/Element;Z)V

    iget-object v4, p0, Lnet/sf/saxon/dom/DOMSender;->b:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public getCurrentNode()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMSender;->c:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public send()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/dom/DOMSender;->a:Lnet/sf/saxon/event/Receiver;

    iget-object v1, p0, Lnet/sf/saxon/dom/DOMSender;->systemId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljavax/xml/transform/Result;->setSystemId(Ljava/lang/String;)V

    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    iget-object v1, p0, Lnet/sf/saxon/dom/DOMSender;->root:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/16 v0, 0x9

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOMSender: unsupported kind of start node ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMSender;->root:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/dom/DOMSender;->a:Lnet/sf/saxon/event/Receiver;

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMSender;->root:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Comment;

    invoke-interface {p0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-interface {v1, p0, v0, v3}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/dom/DOMSender;->a:Lnet/sf/saxon/event/Receiver;

    iget-object v2, p0, Lnet/sf/saxon/dom/DOMSender;->root:Lorg/w3c/dom/Node;

    check-cast v2, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v2}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMSender;->root:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {p0}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-interface {v1, v2, p0, v0, v3}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lnet/sf/saxon/dom/DOMSender;->a:Lnet/sf/saxon/event/Receiver;

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMSender;->root:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/CharacterData;

    invoke-interface {p0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-interface {v1, p0, v0, v3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMSender;->a:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, v3}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMSender;->f()V

    iget-object v0, p0, Lnet/sf/saxon/dom/DOMSender;->root:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/dom/DOMSender;->g(Lorg/w3c/dom/Node;)V

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMSender;->a:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMSender;->root:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/dom/DOMSender;->e(Lorg/w3c/dom/Element;)V

    :goto_1
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMSender;->systemId:Ljava/lang/String;

    return-void
.end method
