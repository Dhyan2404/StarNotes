.class public Lnet/sf/saxon/dom/DOMNodeWrapper;
.super Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;
.implements Lnet/sf/saxon/tree/util/SteppingNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/dom/DOMNodeWrapper$b;,
        Lnet/sf/saxon/dom/DOMNodeWrapper$a;
    }
.end annotation


# instance fields
.field protected docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

.field public e:Lnet/sf/saxon/dom/DOMNodeWrapper;

.field public f:[Lnet/sf/saxon/om/NamespaceBinding;

.field public g:Lnet/sf/saxon/om/NamespaceMap;

.field protected index:I

.field protected node:Lorg/w3c/dom/Node;

.field protected nodeKind:S

.field protected span:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;I)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->span:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->f:[Lnet/sf/saxon/om/NamespaceBinding;

    iput-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->g:Lnet/sf/saxon/om/NamespaceMap;

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    iput-object p3, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->e:Lnet/sf/saxon/dom/DOMNodeWrapper;

    iput p4, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->index:I

    iput-object p2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c(Lorg/w3c/dom/Attr;)Ljava/lang/String;
    .locals 4

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xmlns:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xmlns:xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p0

    :goto_0
    move-object v2, p0

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undeclared namespace prefix in attribute name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in DOM input"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 5

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    const-string v2, "xmlns"

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xmlns:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "xmlns:xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    :cond_2
    move-object v3, p0

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    :cond_4
    if-gez v1, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undeclared namespace prefix in element name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in DOM input"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    return-object v0
.end method

.method public static expandStringValue(Lorg/w3c/dom/NodeList;Lnet/sf/saxon/str/UnicodeBuilder;)V
    .locals 5

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/dom/DOMNodeWrapper;->a(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-static {v2, p1}, Lnet/sf/saxon/dom/DOMNodeWrapper;->expandStringValue(Lorg/w3c/dom/NodeList;Lnet/sf/saxon/str/UnicodeBuilder;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    return-object v0
.end method

.method public static makeWrapper(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;)Lnet/sf/saxon/dom/DOMNodeWrapper;
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1
    invoke-static {p0, p1, v0, v1}, Lnet/sf/saxon/dom/DOMNodeWrapper;->makeWrapper(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;I)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "NodeWrapper#makeWrapper: DocumentWrapper must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "NodeWrapper#makeWrapper: Node must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeWrapper(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;I)Lnet/sf/saxon/dom/DOMNodeWrapper;
    .locals 2

    .line 4
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 5
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported node type in DOM! "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " instance "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :pswitch_1
    invoke-virtual {p1}, Lnet/sf/saxon/om/GenericTreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/dom/DOMNodeWrapper;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lnet/sf/saxon/dom/DOMNodeWrapper;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/sf/saxon/dom/DOMNodeWrapper;-><init>(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;I)V

    const/16 p0, 0x9

    .line 8
    iput-short p0, v0, Lnet/sf/saxon/dom/DOMNodeWrapper;->nodeKind:S

    goto :goto_0

    .line 9
    :pswitch_2
    new-instance v0, Lnet/sf/saxon/dom/DOMNodeWrapper;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/sf/saxon/dom/DOMNodeWrapper;-><init>(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;I)V

    const/16 p0, 0x8

    .line 10
    iput-short p0, v0, Lnet/sf/saxon/dom/DOMNodeWrapper;->nodeKind:S

    goto :goto_0

    .line 11
    :pswitch_3
    new-instance v0, Lnet/sf/saxon/dom/DOMNodeWrapper;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/sf/saxon/dom/DOMNodeWrapper;-><init>(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;I)V

    const/4 p0, 0x7

    .line 12
    iput-short p0, v0, Lnet/sf/saxon/dom/DOMNodeWrapper;->nodeKind:S

    goto :goto_0

    .line 13
    :pswitch_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "DOM contains entity reference nodes, which Saxon does not support. The DOM should be built using the expandEntityReferences() option"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :pswitch_5
    new-instance v0, Lnet/sf/saxon/dom/DOMNodeWrapper;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/sf/saxon/dom/DOMNodeWrapper;-><init>(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;I)V

    .line 15
    iput-short v1, v0, Lnet/sf/saxon/dom/DOMNodeWrapper;->nodeKind:S

    goto :goto_0

    .line 16
    :pswitch_6
    new-instance v0, Lnet/sf/saxon/dom/DOMNodeWrapper;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/sf/saxon/dom/DOMNodeWrapper;-><init>(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;I)V

    .line 17
    iput-short v1, v0, Lnet/sf/saxon/dom/DOMNodeWrapper;->nodeKind:S

    goto :goto_0

    .line 18
    :pswitch_7
    new-instance v0, Lnet/sf/saxon/dom/DOMNodeWrapper;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/sf/saxon/dom/DOMNodeWrapper;-><init>(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;I)V

    const/4 p0, 0x2

    .line 19
    iput-short p0, v0, Lnet/sf/saxon/dom/DOMNodeWrapper;->nodeKind:S

    goto :goto_0

    .line 20
    :pswitch_8
    new-instance v0, Lnet/sf/saxon/dom/DOMNodeWrapper;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/sf/saxon/dom/DOMNodeWrapper;-><init>(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;I)V

    const/4 p0, 0x1

    .line 21
    iput-short p0, v0, Lnet/sf/saxon/dom/DOMNodeWrapper;->nodeKind:S

    .line 22
    :cond_0
    :goto_0
    iput-object p1, v0, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;->treeInfo:Lnet/sf/saxon/om/TreeInfo;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public compareOrder(Lnet/sf/saxon/om/NodeInfo;)I
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/dom/DOMNodeWrapper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-boolean v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->domLevel3:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lnet/sf/saxon/dom/DOMNodeWrapper;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    move-object v2, p1

    check-cast v2, Lnet/sf/saxon/dom/DOMNodeWrapper;

    iget-object v2, v2, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    move-result v1

    and-int/lit8 v2, v1, 0xa

    if-eqz v2, :cond_1

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_1
    and-int/lit8 v1, v1, 0x14

    if-eqz v1, :cond_2

    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Lorg/w3c/dom/DOMException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_3
    :goto_0
    instance-of v0, p1, Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;

    if-eqz v0, :cond_4

    check-cast p1, Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;

    invoke-static {p0, p1}, Lnet/sf/saxon/tree/util/Navigator;->compareOrder(Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;)I

    move-result p0

    return p0

    :cond_4
    invoke-interface {p1, p0}, Lnet/sf/saxon/om/NodeInfo;->compareOrder(Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/dom/DOMNodeWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-boolean v2, v0, Lnet/sf/saxon/dom/DocumentWrapper;->domLevel3:Z

    if-eqz v2, :cond_1

    iget-object v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    check-cast p1, Lnet/sf/saxon/dom/DOMNodeWrapper;

    iget-object p1, p1, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    check-cast p1, Lnet/sf/saxon/dom/DOMNodeWrapper;

    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getNodeKind()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getNodeKind()I

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/dom/DOMNodeWrapper;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getSiblingPosition()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getSiblingPosition()I

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getParent()Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getParent()Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/dom/DOMNodeWrapper;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final f(Lnet/sf/saxon/pattern/NodeTest;)Z
    .locals 0

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g(Lorg/w3c/dom/Node;)Lnet/sf/saxon/dom/DOMNodeWrapper;
    .locals 4

    const/4 v0, 0x1

    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    invoke-static {p1, p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->makeWrapper(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    iput v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->span:I

    return-object p0
.end method

.method public generateId(Ljava/lang/StringBuilder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lnet/sf/saxon/tree/util/Navigator;->appendSequentialKey(Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;
    .locals 8

    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->g:Lnet/sf/saxon/om/NamespaceMap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getParent()Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Attr;

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xmlns"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    const-string v5, ""

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lnet/sf/saxon/om/NamespaceMap;->bind(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_3

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lnet/sf/saxon/om/NamespaceMap;->bind(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iput-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->g:Lnet/sf/saxon/om/NamespaceMap;

    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, p1, p2, v1}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    invoke-virtual {p0, v2, v0}, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeclaredNamespaces([Lnet/sf/saxon/om/NamespaceBinding;)[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 11

    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_c

    iget-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->f:[Lnet/sf/saxon/om/NamespaceBinding;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p1, Lnet/sf/saxon/om/NamespaceBinding;->EMPTY_ARRAY:[Lnet/sf/saxon/om/NamespaceBinding;

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->f:[Lnet/sf/saxon/om/NamespaceBinding;

    monitor-exit v0

    return-object p1

    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_4

    invoke-interface {v1, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Attr;

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    const-string v8, "xmlns:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    sget-object p1, Lnet/sf/saxon/om/NamespaceBinding;->EMPTY_ARRAY:[Lnet/sf/saxon/om/NamespaceBinding;

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->f:[Lnet/sf/saxon/om/NamespaceBinding;

    monitor-exit v0

    return-object p1

    :cond_5
    if-eqz p1, :cond_6

    array-length v5, p1

    if-le v6, v5, :cond_7

    :cond_6
    new-array p1, v6, [Lnet/sf/saxon/om/NamespaceBinding;

    :cond_7
    move v5, v4

    :goto_3
    if-ge v4, v3, :cond_a

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Attr;

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "xmlns"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v8, ""

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v9, v5, 0x1

    new-instance v10, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-direct {v10, v8, v7}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, p1, v5

    :goto_4
    move v5, v9

    goto :goto_5

    :cond_8
    const-string v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v9, v5, 0x1

    new-instance v10, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-direct {v10, v8, v7}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, p1, v5

    goto :goto_4

    :cond_9
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    array-length v1, p1

    if-ge v6, v1, :cond_b

    aput-object v2, p1, v6

    :cond_b
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lnet/sf/saxon/om/NamespaceBinding;

    iput-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->f:[Lnet/sf/saxon/om/NamespaceBinding;

    monitor-exit v0

    return-object p1

    :cond_c
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    iget-short v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->nodeKind:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFirstChild()Lnet/sf/saxon/dom/DOMNodeWrapper;
    .locals 4

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 5
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 6
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    invoke-static {v1, p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->makeWrapper(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lnet/sf/saxon/dom/DOMNodeWrapper;->g(Lorg/w3c/dom/Node;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 9
    :cond_3
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic getFirstChild()Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getFirstChild()Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getNodeKind()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const-string p0, ""

    monitor-exit v0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    invoke-static {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNextSibling()Lnet/sf/saxon/dom/DOMNodeWrapper;
    .locals 4

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->span:I

    if-ge v2, v3, :cond_0

    .line 5
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_4

    .line 6
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 7
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    invoke-static {v1, p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->makeWrapper(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 9
    :cond_3
    :goto_2
    invoke-virtual {p0, v1}, Lnet/sf/saxon/dom/DOMNodeWrapper;->g(Lorg/w3c/dom/Node;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 10
    :cond_4
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic getNextSibling()Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getNextSibling()Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getNodeKind()I
    .locals 0

    iget-short p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->nodeKind:S

    return p0
.end method

.method public getParent()Lnet/sf/saxon/dom/DOMNodeWrapper;
    .locals 3

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->e:Lnet/sf/saxon/dom/DOMNodeWrapper;

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getNodeKind()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 6
    iget-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_0

    .line 7
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    invoke-static {v1, v2}, Lnet/sf/saxon/dom/DOMNodeWrapper;->makeWrapper(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->e:Lnet/sf/saxon/dom/DOMNodeWrapper;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    check-cast v1, Lorg/w3c/dom/Attr;

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    invoke-static {v1, v2}, Lnet/sf/saxon/dom/DOMNodeWrapper;->makeWrapper(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->e:Lnet/sf/saxon/dom/DOMNodeWrapper;

    .line 10
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 11
    :cond_2
    :goto_1
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->e:Lnet/sf/saxon/dom/DOMNodeWrapper;

    return-object p0
.end method

.method public bridge synthetic getParent()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getParent()Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getParent()Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getParent()Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getNodeKind()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    monitor-exit v0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    const-string p0, ""

    monitor-exit v0

    return-object p0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPreviousSibling()Lnet/sf/saxon/dom/DOMNodeWrapper;
    .locals 7

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 4
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 5
    monitor-exit v0

    return-object v2

    :cond_0
    const/4 v2, 0x4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    if-ne v3, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    invoke-static {v1, p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->makeWrapper(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 7
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 8
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-eq v6, v4, :cond_3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-ne v6, v2, :cond_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    move-object v1, v5

    goto :goto_1

    .line 9
    :cond_4
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    invoke-static {v1, p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->makeWrapper(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    .line 10
    iput v3, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->span:I

    .line 11
    monitor-exit v0

    return-object p0

    .line 12
    :cond_5
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic getPreviousSibling()Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getPreviousSibling()Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSiblingPosition()I
    .locals 5

    iget v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v1, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v1

    :try_start_0
    iget-short v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->nodeKind:S

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x7

    if-eq v0, v3, :cond_6

    const/16 v3, 0x8

    if-eq v0, v3, :cond_6

    const/16 v4, 0xd

    if-eq v0, v4, :cond_0

    iput v2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->index:I

    monitor-exit v1

    return v2

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->e:Lnet/sf/saxon/dom/DOMNodeWrapper;

    invoke-virtual {v0, v3}, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {p0, v3}, Lnet/sf/saxon/tree/util/Navigator;->haveSameName(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput v2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->index:I

    monitor-exit v1

    return v2

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->e:Lnet/sf/saxon/dom/DOMNodeWrapper;

    invoke-virtual {v0, v3}, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {p0, v3}, Lnet/sf/saxon/tree/util/Navigator;->haveSameName(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iput v2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->index:I

    monitor-exit v1

    return v2

    :cond_6
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    :goto_4
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_7

    iput v2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->index:I

    monitor-exit v1

    return v2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    return v0
.end method

.method public getSuccessorElement(Lnet/sf/saxon/tree/util/SteppingNode;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p1, Lnet/sf/saxon/dom/DOMNodeWrapper;

    iget-object p1, p1, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    :cond_1
    invoke-static {v2, p1}, Lnet/sf/saxon/dom/DOMNodeWrapper;->e(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-eqz p3, :cond_2

    invoke-static {v2}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    if-eqz p2, :cond_3

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-static {v3}, Lnet/sf/saxon/dom/DOMNodeWrapper;->d(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    if-nez v2, :cond_4

    monitor-exit v0

    return-object v1

    :cond_4
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    invoke-static {v2, p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->makeWrapper(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTreeInfo()Lnet/sf/saxon/dom/DocumentWrapper;
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;->treeInfo:Lnet/sf/saxon/om/TreeInfo;

    check-cast p0, Lnet/sf/saxon/dom/DocumentWrapper;

    return-object p0
.end method

.method public bridge synthetic getTreeInfo()Lnet/sf/saxon/om/TreeInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getTreeInfo()Lnet/sf/saxon/dom/DocumentWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getURI()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    :try_start_0
    iget-short v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->nodeKind:S

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-static {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->d(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-static {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->c(Lorg/w3c/dom/Attr;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    const-string p0, ""

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic getUnderlyingNode()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getUnderlyingNode()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getUnderlyingNode()Lorg/w3c/dom/Node;
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    :try_start_0
    iget-short v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->nodeKind:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_5

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->a(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    iget v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->span:I

    if-ne v1, v2, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->a(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    new-instance v1, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    iget-object v2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->span:I

    if-ge v3, v4, :cond_3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/sf/saxon/dom/DOMNodeWrapper;->a(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_4
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper;->a(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_5
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    new-instance v1, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    invoke-static {p0, v1}, Lnet/sf/saxon/dom/DOMNodeWrapper;->expandStringValue(Lorg/w3c/dom/NodeList;Lnet/sf/saxon/str/UnicodeBuilder;)V

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hasChildNodes()Z
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isId()Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    instance-of v1, p0, Lorg/w3c/dom/Attr;

    if-eqz v1, :cond_0

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->isId()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public iterateAttributes(Lnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;

    invoke-direct {v0, p0, p0}, Lnet/sf/saxon/dom/DOMNodeWrapper$a;-><init>(Lnet/sf/saxon/dom/DOMNodeWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;)V

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    if-eq p1, p0, :cond_0

    new-instance p0, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    invoke-direct {p0, v0, p1}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public iterateChildren(Lnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 8

    invoke-virtual {p0, p1}, Lnet/sf/saxon/dom/DOMNodeWrapper;->f(Lnet/sf/saxon/pattern/NodeTest;)Z

    move-result v5

    new-instance v6, Lnet/sf/saxon/tree/util/Navigator$EmptyTextFilter;

    new-instance v7, Lnet/sf/saxon/dom/DOMNodeWrapper$b;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/dom/DOMNodeWrapper$b;-><init>(Lnet/sf/saxon/dom/DOMNodeWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;ZZZ)V

    invoke-direct {v6, v7}, Lnet/sf/saxon/tree/util/Navigator$EmptyTextFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;)V

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    if-eq p1, p0, :cond_0

    new-instance p0, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    invoke-direct {p0, v6, p1}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    move-object v6, p0

    :cond_0
    return-object v6
.end method

.method public iterateDescendants(Lnet/sf/saxon/pattern/NodeTest;Z)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;

    invoke-direct {v0, p0, p2, p1}, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;-><init>(Lnet/sf/saxon/tree/util/SteppingNode;ZLnet/sf/saxon/pattern/NodeTest;)V

    return-object v0
.end method

.method public iterateSiblings(Lnet/sf/saxon/pattern/NodeTest;Z)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 8

    invoke-virtual {p0, p1}, Lnet/sf/saxon/dom/DOMNodeWrapper;->f(Lnet/sf/saxon/pattern/NodeTest;)Z

    move-result v5

    new-instance v6, Lnet/sf/saxon/tree/util/Navigator$EmptyTextFilter;

    new-instance v7, Lnet/sf/saxon/dom/DOMNodeWrapper$b;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/dom/DOMNodeWrapper$b;-><init>(Lnet/sf/saxon/dom/DOMNodeWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;ZZZ)V

    invoke-direct {v6, v7}, Lnet/sf/saxon/tree/util/Navigator$EmptyTextFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;)V

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    if-eq p1, p0, :cond_0

    new-instance p0, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    invoke-direct {p0, v6, p1}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    move-object v6, p0

    :cond_0
    return-object v6
.end method
