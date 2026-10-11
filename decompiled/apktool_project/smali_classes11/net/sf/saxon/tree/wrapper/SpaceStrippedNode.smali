.class public Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;
.super Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/wrapper/WrappingFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    .line 4
    iput-object p2, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->parent:Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;

    return-void
.end method

.method public static isPreservedNode(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 3

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    if-eqz p2, :cond_8

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->isSimpleType()Z

    move-result v0

    if-nez v0, :cond_8

    check-cast p0, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {p0}, Lnet/sf/saxon/type/ComplexType;->isSimpleContent()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->containsPreserveSpace()Z

    move-result p0

    if-eqz p0, :cond_4

    move-object p0, p2

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    if-ne v0, v2, :cond_4

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    const-string v1, "space"

    invoke-interface {p0, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "preserve"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->containsAssertions()Z

    move-result p0

    if-eqz p0, :cond_6

    move-object p0, p2

    :goto_2
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/type/ComplexType;

    if-eqz v1, :cond_5

    check-cast v0, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v0}, Lnet/sf/saxon/type/ComplexType;->hasAssertions()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    goto :goto_2

    :cond_6
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->getStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object p0

    invoke-static {p2}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/om/SpaceStrippingRule;->isSpacePreserving(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)I

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :catch_0
    :cond_8
    :goto_3
    return v2
.end method

.method public static makeWrapper(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;)Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;
    .locals 1

    .line 1
    new-instance v0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    invoke-direct {v0, p0, p2}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;)V

    .line 2
    iput-object p1, v0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    :cond_1
    return-object p0
.end method

.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    invoke-interface {v0, p0}, Lnet/sf/saxon/type/SchemaType;->atomize(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0
.end method

.method public compareOrder(Lnet/sf/saxon/om/NodeInfo;)I
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    check-cast p1, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    iget-object p1, p1, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->compareOrder(Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->compareOrder(Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    return p0
.end method

.method public copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/event/Stripper;

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    check-cast v1, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;

    invoke-virtual {v1}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->getStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/sf/saxon/event/Stripper;-><init>(Lnet/sf/saxon/om/SpaceStrippingRule;Lnet/sf/saxon/event/Receiver;)V

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, v0, p2, p3}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    check-cast p1, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    iget-object p1, p1, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getParent()Lnet/sf/saxon/om/NodeInfo;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->parent:Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    check-cast v1, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;->makeWrapper(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;)Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->parent:Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->parent:Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lnet/sf/saxon/pattern/NodeKindTest;->makeNodeKindTest(I)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->hashCode()I

    move-result p0

    return p0
.end method

.method public iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    .line 5
    new-instance v0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1, p1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    check-cast p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;)V

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    new-instance v1, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;

    iget-object v2, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v2, p1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    check-cast p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;

    invoke-direct {v1, p1, p0, v0}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;)V

    return-object v1

    .line 9
    :cond_2
    new-instance v0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1, p1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    check-cast v1, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;

    invoke-direct {v0, p1, v1, p0}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;)V

    return-object v0

    .line 10
    :cond_3
    new-instance v0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1, p1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    invoke-direct {v0, p1, p0, p0}, Lnet/sf/saxon/tree/wrapper/WrappingIterator;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/tree/wrapper/WrappingFunction;Lnet/sf/saxon/tree/wrapper/VirtualNode;)V

    return-object v0
.end method

.method public iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 2

    .line 1
    instance-of v0, p2, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lnet/sf/saxon/pattern/NodeTest;

    .line 2
    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/UType;->TEXT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->intersection(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    if-eq v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1, p1, p2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p2

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    check-cast v1, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;->a(I)Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    move-result-object p0

    invoke-direct {v0, p2, v1, p0}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;)V

    return-object v0

    .line 4
    :cond_2
    :goto_0
    new-instance v0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1, p1, p2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;->a(I)Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    move-result-object p1

    invoke-direct {v0, p2, p0, p1}, Lnet/sf/saxon/tree/wrapper/WrappingIterator;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/tree/wrapper/WrappingFunction;Lnet/sf/saxon/tree/wrapper/VirtualNode;)V

    return-object v0
.end method

.method public makeWrapper(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/VirtualNode;)Lnet/sf/saxon/tree/wrapper/VirtualNode;
    .locals 1

    .line 3
    new-instance v0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    check-cast p2, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;)V

    .line 4
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    iput-object p0, v0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    return-object v0
.end method
