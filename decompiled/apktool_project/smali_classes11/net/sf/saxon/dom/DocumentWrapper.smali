.class public Lnet/sf/saxon/dom/DocumentWrapper;
.super Lnet/sf/saxon/om/GenericTreeInfo;
.source "SourceFile"


# instance fields
.field public final docNode:Lorg/w3c/dom/Node;

.field protected domLevel3:Z

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;Ljava/lang/String;Lnet/sf/saxon/Configuration;)V
    .locals 2

    invoke-direct {p0, p3}, Lnet/sf/saxon/om/GenericTreeInfo;-><init>(Lnet/sf/saxon/Configuration;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/dom/DocumentWrapper;->j:Ljava/util/Map;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Node must be a DOM Document or DocumentFragment"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Lnet/sf/saxon/Configuration;->getExternalObjectModel(Ljava/lang/Class;)Lnet/sf/saxon/lib/ExternalObjectModel;

    move-result-object p3

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    iput-boolean p3, p0, Lnet/sf/saxon/dom/DocumentWrapper;->domLevel3:Z

    iput-object p1, p0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/dom/DocumentWrapper;->wrap(Lorg/w3c/dom/Node;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/GenericTreeInfo;->setRootNode(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/om/GenericTreeInfo;->setSystemId(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Node class "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not recognized in this Saxon configuration"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDOMLevel()I
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/dom/DocumentWrapper;->domLevel3:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public getUnparsedEntity(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/dom/DOMNodeWrapper;

    iget-object v1, v1, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    instance-of v2, v1, Lorg/w3c/dom/Document;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    check-cast v1, Lorg/w3c/dom/Document;

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v3

    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-object v3

    :cond_1
    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Entity;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {v1, p0}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p0

    :catch_0
    :cond_3
    const/4 p0, 0x2

    :try_start_2
    new-array p0, p0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-interface {p1}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, p0, v1

    monitor-exit v0

    return-object p0

    :cond_4
    :goto_0
    monitor-exit v0

    return-object v3

    :cond_5
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getUnparsedEntityNames()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/dom/DOMNodeWrapper;

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    instance-of v1, p0, Lorg/w3c/dom/Document;

    if-eqz v1, :cond_4

    check-cast p0, Lorg/w3c/dom/Document;

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Entity;

    invoke-interface {v3}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_4
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public selectID(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeInfo;
    .locals 4

    iget-object p2, p0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/dom/DOMNodeWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    instance-of v1, v0, Lorg/w3c/dom/Document;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/dom/DocumentWrapper;->wrap(Lorg/w3c/dom/Node;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    monitor-exit p2

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/dom/DocumentWrapper;->j:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    monitor-exit p2

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/dom/DocumentWrapper;->j:Ljava/util/Map;

    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    const-string v3, "id"

    invoke-interface {v1, v2, v3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lnet/sf/saxon/dom/DocumentWrapper;->j:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lnet/sf/saxon/dom/DocumentWrapper;->j:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    monitor-exit p2

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDOMLevel(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DOM Level must be 2 or 3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lnet/sf/saxon/dom/DocumentWrapper;->domLevel3:Z

    return-void
.end method

.method public wrap(Lorg/w3c/dom/Node;)Lnet/sf/saxon/dom/DOMNodeWrapper;
    .locals 0

    invoke-static {p1, p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->makeWrapper(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    return-object p0
.end method
