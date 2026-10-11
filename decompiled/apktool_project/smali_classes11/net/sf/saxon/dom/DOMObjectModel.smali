.class public Lnet/sf/saxon/dom/DOMObjectModel;
.super Lnet/sf/saxon/om/TreeModel;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ExternalObjectModel;


# static fields
.field public static final a:Lnet/sf/saxon/dom/DOMObjectModel;

.field public static b:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/dom/DOMObjectModel;

    invoke-direct {v0}, Lnet/sf/saxon/dom/DOMObjectModel;-><init>()V

    sput-object v0, Lnet/sf/saxon/dom/DOMObjectModel;->a:Lnet/sf/saxon/dom/DOMObjectModel;

    const/4 v0, 0x0

    sput-object v0, Lnet/sf/saxon/dom/DOMObjectModel;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/om/TreeModel;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/dom/DOMObjectModel;Lorg/w3c/dom/Node;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/dom/DOMObjectModel;->e(Lorg/w3c/dom/Node;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;)V
    .locals 2

    const-string v0, "WARNING: "

    :try_start_0
    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static convertXPathValueToObject(Lnet/sf/saxon/om/Sequence;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/Sequence;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-class v0, Lorg/w3c/dom/Node;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-class v2, Lorg/w3c/dom/NodeList;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    if-eq p1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    const-class v5, Ljava/util/HashSet;

    const-class v6, Ljava/util/ArrayList;

    const-class v7, Ljava/lang/Object;

    if-eq p1, v7, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    if-ne v8, v7, :cond_2

    goto :goto_2

    :cond_2
    move v7, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v3

    :goto_3
    const/4 v8, 0x0

    if-nez v1, :cond_4

    if-nez v7, :cond_4

    return-object v8

    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0x14

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v9

    if-eqz v9, :cond_8

    instance-of v10, v9, Lnet/sf/saxon/tree/wrapper/VirtualNode;

    if-eqz v10, :cond_5

    move-object v10, v9

    check-cast v10, Lnet/sf/saxon/tree/wrapper/VirtualNode;

    invoke-interface {v10}, Lnet/sf/saxon/tree/wrapper/VirtualNode;->getRealNode()Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lorg/w3c/dom/Node;

    if-eqz v11, :cond_5

    check-cast v10, Lorg/w3c/dom/Node;

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_7

    instance-of v10, v9, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v10, :cond_6

    check-cast v9, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {v9}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/dom/NodeOverNodeInfo;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot convert XPath value to Java object: required class is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; supplied value has type "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lnet/sf/saxon/type/Type;->displayTypeName(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    return-object v8

    :cond_8
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    if-nez v1, :cond_9

    return-object v8

    :cond_9
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v3, :cond_a

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot convert XPath value to Java object: requires a single DOM Nodebut supplied value contains "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " nodes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    if-ne p1, v2, :cond_c

    new-instance p0, Lnet/sf/saxon/dom/DOMNodeList;

    invoke-direct {p0, v7}, Lnet/sf/saxon/dom/DOMNodeList;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    if-ne p0, v0, :cond_d

    new-array p0, v4, [Lorg/w3c/dom/Node;

    invoke-interface {v7, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-virtual {p1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_e

    return-object v7

    :cond_e
    invoke-virtual {p1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_f

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_f
    return-object v8
.end method

.method public static getInstance()Lnet/sf/saxon/dom/DOMObjectModel;
    .locals 1

    sget-object v0, Lnet/sf/saxon/dom/DOMObjectModel;->a:Lnet/sf/saxon/dom/DOMObjectModel;

    return-object v0
.end method

.method public static sendDOMSource(Ljavax/xml/transform/dom/DOMSource;Lnet/sf/saxon/event/Receiver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->open()V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->close()V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/w3c/dom/Document;

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "Supplied DOM uses namespaces, but is not created as namespace-aware"

    invoke-static {p1, v1}, Lnet/sf/saxon/dom/DOMObjectModel;->b(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "xmlns"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Supplied DOM declares a default namespace, but is not created as namespace-aware"

    invoke-static {p1, v1}, Lnet/sf/saxon/dom/DOMObjectModel;->b(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;)V

    :cond_2
    :goto_0
    new-instance v1, Lnet/sf/saxon/dom/DOMSender;

    invoke-direct {v1, v0, p1}, Lnet/sf/saxon/dom/DOMSender;-><init>(Lorg/w3c/dom/Node;Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {p0}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/dom/DOMSender;->setSystemId(Ljava/lang/String;)V

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->open()V

    invoke-virtual {v1}, Lnet/sf/saxon/dom/DOMSender;->send()V

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->close()V

    :goto_1
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/String;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/TreeInfo;
    .locals 2

    instance-of p0, p1, Lnet/sf/saxon/dom/DocumentOverNodeInfo;

    if-eqz p0, :cond_0

    check-cast p1, Lnet/sf/saxon/dom/DocumentOverNodeInfo;

    invoke-virtual {p1}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->getUnderlyingNodeInfo()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/TreeInfo;

    return-object p0

    :cond_0
    instance-of p0, p1, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    if-eqz p0, :cond_1

    check-cast p1, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    invoke-virtual {p1}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->getUnderlyingNodeInfo()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p0, p1, Lorg/w3c/dom/Node;

    if-eqz p0, :cond_4

    move-object p0, p1

    check-cast p0, Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    check-cast p1, Lorg/w3c/dom/Document;

    new-instance p0, Lnet/sf/saxon/dom/DocumentWrapper;

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/dom/DocumentWrapper;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Lnet/sf/saxon/Configuration;)V

    return-object p0

    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    check-cast p1, Lorg/w3c/dom/DocumentFragment;

    new-instance p0, Lnet/sf/saxon/dom/DocumentWrapper;

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/dom/DocumentWrapper;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Lnet/sf/saxon/Configuration;)V

    return-object p0

    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/dom/DocumentWrapper;

    invoke-direct {p1, p0, p2, p3}, Lnet/sf/saxon/dom/DocumentWrapper;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Lnet/sf/saxon/Configuration;)V

    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown node class "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public copy(Lorg/w3c/dom/Node;Lnet/sf/saxon/om/TreeModel;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/NodeInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p3}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/om/TreeModel;->makeBuilder(Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Builder;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->open()V

    new-instance p2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {p2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    const/4 p1, 0x0

    invoke-static {p2, p0, p1}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->close()V

    return-object p1
.end method

.method public final d(Lnet/sf/saxon/om/TreeInfo;Ljava/lang/Object;)Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    check-cast p1, Lnet/sf/saxon/dom/DocumentWrapper;

    check-cast p2, Lorg/w3c/dom/Node;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/dom/DocumentWrapper;->wrap(Lorg/w3c/dom/Node;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lorg/w3c/dom/Node;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    invoke-virtual {p1}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->getUnderlyingNodeInfo()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lnet/sf/saxon/dom/DOMObjectModel;->c(Ljava/lang/Object;Ljava/lang/String;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/dom/DOMObjectModel;->d(Lnet/sf/saxon/om/TreeInfo;Ljava/lang/Object;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getActiveSource(Ljavax/xml/transform/Source;)Lnet/sf/saxon/lib/ActiveSource;
    .locals 0

    instance-of p0, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz p0, :cond_0

    new-instance p0, Lnet/sf/saxon/dom/ActiveDOMSource;

    check-cast p1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {p0, p1}, Lnet/sf/saxon/dom/ActiveDOMSource;-><init>(Ljavax/xml/transform/dom/DOMSource;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocumentBuilder(Ljavax/xml/transform/Result;)Lnet/sf/saxon/event/Receiver;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of p0, p1, Ljavax/xml/transform/dom/DOMResult;

    if-eqz p0, :cond_4

    new-instance p0, Lnet/sf/saxon/dom/DOMWriter;

    invoke-direct {p0}, Lnet/sf/saxon/dom/DOMWriter;-><init>()V

    move-object v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {v0}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->getUnderlyingNodeInfo()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/om/MutableNodeInfo;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Supplied DOMResult is a non-mutable Saxon implementation"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljavax/xml/transform/dom/DOMResult;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v1, :cond_3

    :try_start_0
    sget-object v0, Lnet/sf/saxon/dom/DOMObjectModel;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    if-nez v0, :cond_2

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/dom/DOMObjectModel;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    :cond_2
    sget-object v0, Lnet/sf/saxon/dom/DOMObjectModel;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {p1, v0}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/dom/DOMWriter;->setNode(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    invoke-virtual {p0, v1}, Lnet/sf/saxon/dom/DOMWriter;->setNode(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/dom/DOMWriter;->setNextSibling(Lorg/w3c/dom/Node;)V

    :goto_1
    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocumentClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "org.w3c.dom.Document"

    return-object p0
.end method

.method public getIdentifyingURI()Ljava/lang/String;
    .locals 0

    const-string p0, "http://java.sun.com/jaxp/xpath/dom"

    return-object p0
.end method

.method public getJPConverter(Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/JPConverter;
    .locals 0

    const-class p2, Lorg/w3c/dom/Node;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-class p2, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p1, Lnet/sf/saxon/dom/DOMObjectModel$c;

    invoke-direct {p1, p0}, Lnet/sf/saxon/dom/DOMObjectModel$c;-><init>(Lnet/sf/saxon/dom/DOMObjectModel;)V

    return-object p1

    :cond_0
    const-class p2, Lorg/w3c/dom/NodeList;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p1, Lnet/sf/saxon/dom/DOMObjectModel$d;

    invoke-direct {p1, p0}, Lnet/sf/saxon/dom/DOMObjectModel$d;-><init>(Lnet/sf/saxon/dom/DOMObjectModel;)V

    return-object p1

    :cond_1
    const-class p2, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p1, Lnet/sf/saxon/dom/DOMObjectModel$e;

    invoke-direct {p1, p0}, Lnet/sf/saxon/dom/DOMObjectModel$e;-><init>(Lnet/sf/saxon/dom/DOMObjectModel;)V

    return-object p1

    :cond_2
    const-class p2, Lnet/sf/saxon/dom/DocumentWrapper;

    if-ne p2, p1, :cond_3

    new-instance p1, Lnet/sf/saxon/dom/DOMObjectModel$f;

    invoke-direct {p1, p0}, Lnet/sf/saxon/dom/DOMObjectModel$f;-><init>(Lnet/sf/saxon/dom/DOMObjectModel;)V

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "DOM"

    return-object p0
.end method

.method public getNodeListCreator(Ljava/lang/Object;)Lnet/sf/saxon/expr/PJConverter;
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljavax/xml/transform/dom/DOMSource;

    if-nez v0, :cond_1

    instance-of v0, p1, Lnet/sf/saxon/dom/DocumentWrapper;

    if-nez v0, :cond_1

    instance-of v0, p1, Lnet/sf/saxon/tree/wrapper/VirtualNode;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/tree/wrapper/VirtualNode;

    invoke-interface {p1}, Lnet/sf/saxon/tree/wrapper/VirtualNode;->getRealNode()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/w3c/dom/Node;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    new-instance p1, Lnet/sf/saxon/dom/DOMObjectModel$g;

    invoke-direct {p1, p0}, Lnet/sf/saxon/dom/DOMObjectModel$g;-><init>(Lnet/sf/saxon/dom/DOMObjectModel;)V

    return-object p1
.end method

.method public getPJConverter(Ljava/lang/Class;)Lnet/sf/saxon/expr/PJConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/sf/saxon/expr/PJConverter;"
        }
    .end annotation

    const-class v0, Lorg/w3c/dom/Node;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lnet/sf/saxon/dom/DOMObjectModel$a;

    invoke-direct {p1, p0}, Lnet/sf/saxon/dom/DOMObjectModel$a;-><init>(Lnet/sf/saxon/dom/DOMObjectModel;)V

    return-object p1

    :cond_0
    const-class v0, Lorg/w3c/dom/NodeList;

    if-ne v0, p1, :cond_1

    new-instance p1, Lnet/sf/saxon/dom/DOMObjectModel$b;

    invoke-direct {p1, p0}, Lnet/sf/saxon/dom/DOMObjectModel$b;-><init>(Lnet/sf/saxon/dom/DOMObjectModel;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public makeBuilder(Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Builder;
    .locals 0

    new-instance p0, Lnet/sf/saxon/dom/DOMWriter;

    invoke-direct {p0}, Lnet/sf/saxon/dom/DOMWriter;-><init>()V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/dom/DOMWriter;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    return-object p0
.end method

.method public unravel(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/NodeInfo;
    .locals 2

    instance-of p0, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz p0, :cond_1

    move-object p0, p1

    check-cast p0, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p0}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_0
    new-instance v1, Lnet/sf/saxon/dom/DocumentWrapper;

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1, p2}, Lnet/sf/saxon/dom/DocumentWrapper;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v1, p0}, Lnet/sf/saxon/dom/DocumentWrapper;->wrap(Lorg/w3c/dom/Node;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public wrap(Lorg/w3c/dom/Node;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/NodeInfo;
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    move-object p0, p1

    check-cast p0, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    :goto_0
    new-instance v0, Lnet/sf/saxon/dom/DocumentWrapper;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lnet/sf/saxon/dom/DocumentWrapper;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/dom/DocumentWrapper;->wrap(Lorg/w3c/dom/Node;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    return-object p0
.end method
