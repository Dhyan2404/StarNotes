.class public Lnet/sf/saxon/tree/tiny/TinyTextualElement;
.super Lnet/sf/saxon/tree/tiny/TinyElementImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;
    }
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/tiny/TinyTree;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/tree/tiny/TinyElementImpl;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTextualElement;->e:Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;

    return-void
.end method


# virtual methods
.method public copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lnet/sf/saxon/om/CopyOptions;->includes(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyElementImpl;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v0

    :goto_0
    move-object v3, v0

    and-int/lit8 v0, p2, 0x4

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    if-eqz v0, :cond_3

    :try_start_0
    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {p0, v3, v0}, Lnet/sf/saxon/tree/tiny/TinyElementImpl;->checkNotNamespaceSensitiveElement(Lnet/sf/saxon/type/SchemaType;I)V
    :try_end_0
    .catch Lnet/sf/saxon/event/CopyNamespaceSensitiveException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->isXSLT()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "XTTE0950"

    goto :goto_2

    :cond_2
    const-string p1, "XQTY0086"

    :goto_2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_3
    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->getCopyInformee()Ljava/util/function/Function;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/s9api/Location;

    if-eqz v1, :cond_4

    move-object p3, v0

    check-cast p3, Lnet/sf/saxon/s9api/Location;

    :cond_4
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p2

    :goto_4
    move-object v5, p2

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lnet/sf/saxon/om/NamespaceMap;->of(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p2

    goto :goto_4

    :cond_6
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p2

    goto :goto_4

    :goto_5
    invoke-static {p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, p1

    move-object v6, p3

    invoke-interface/range {v1 .. v7}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-interface {p1, p0, p3, v8}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->endElement()V

    return-void
.end method

.method public getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/tree/tiny/TinyElementImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeclaredNamespaces([Lnet/sf/saxon/om/NamespaceBinding;)[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 0

    sget-object p0, Lnet/sf/saxon/om/NamespaceBinding;->EMPTY_ARRAY:[Lnet/sf/saxon/om/NamespaceBinding;

    return-object p0
.end method

.method public getTextNode()Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTextualElement;->e:Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;-><init>(Lnet/sf/saxon/tree/tiny/TinyTextualElement;)V

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTextualElement;->e:Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTextualElement;->e:Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-static {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTextImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public hasChildNodes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isAncestorOrSelf(Lnet/sf/saxon/tree/tiny/TinyNodeImpl;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 1
    invoke-super {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Lnet/sf/saxon/tree/iter/ArrayIterator$OfNodes;

    new-array v0, v0, [Lnet/sf/saxon/om/NodeInfo;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement;->getTextNode()Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-direct {p1, v0}, Lnet/sf/saxon/tree/iter/ArrayIterator$OfNodes;-><init>([Lnet/sf/saxon/om/NodeInfo;)V

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement;->getTextNode()Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->makeIterator(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 5
    invoke-super {p0, p1, p2}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {p2, p0}, Lnet/sf/saxon/pattern/NodePredicate;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement;->getTextNode()Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;

    move-result-object v0

    invoke-interface {p2, v0}, Lnet/sf/saxon/pattern/NodePredicate;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement;->getTextNode()Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    new-instance p0, Lnet/sf/saxon/tree/iter/NodeListIterator;

    invoke-direct {p0, p1}, Lnet/sf/saxon/tree/iter/NodeListIterator;-><init>(Ljava/util/List;)V

    return-object p0

    .line 12
    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement;->getTextNode()Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;

    move-result-object p0

    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 13
    :cond_4
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0
.end method
