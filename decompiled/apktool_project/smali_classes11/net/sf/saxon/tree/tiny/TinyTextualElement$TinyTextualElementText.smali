.class public Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NodeInfo;
.implements Ljavax/xml/transform/SourceLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/tree/tiny/TinyTextualElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TinyTextualElementText"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/tree/tiny/TinyTextualElement;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/tiny/TinyTextualElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->e:Lnet/sf/saxon/tree/tiny/TinyTextualElement;

    return-void
.end method


# virtual methods
.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public compareOrder(Lnet/sf/saxon/om/NodeInfo;)I
    .locals 1

    invoke-interface {p1, p0}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->compareOrder(Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    return p0
.end method

.method public copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p1, p0, p3, p2}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    check-cast p1, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public generateId(Ljava/lang/StringBuilder;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->e:Lnet/sf/saxon/tree/tiny/TinyTextualElement;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->generateId(Ljava/lang/StringBuilder;)V

    const-string p0, "T"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->e:Lnet/sf/saxon/tree/tiny/TinyTextualElement;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyElementImpl;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public getDeclaredNamespaces([Lnet/sf/saxon/om/NamespaceBinding;)[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getFingerprint()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final getNodeKind()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getParent()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->e:Lnet/sf/saxon/tree/tiny/TinyTextualElement;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->e:Lnet/sf/saxon/tree/tiny/TinyTextualElement;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->e:Lnet/sf/saxon/tree/tiny/TinyTextualElement;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTreeInfo()Lnet/sf/saxon/om/TreeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->e:Lnet/sf/saxon/tree/tiny/TinyTextualElement;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getURI()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->e:Lnet/sf/saxon/tree/tiny/TinyTextualElement;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public hasChildNodes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasFingerprint()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->hashCode()I

    move-result p0

    const v0, 0x1010101

    xor-int/2addr p0, v0

    return p0
.end method

.method public iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 2

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown axis number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :pswitch_0
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    return-object p1

    .line 3
    :pswitch_1
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    return-object p1

    .line 4
    :pswitch_2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->makeIterator(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_3
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;

    invoke-direct {p1, p0}, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    return-object p1

    .line 6
    :pswitch_4
    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->makeIterator(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_5
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_6
    new-instance p1, Lnet/sf/saxon/tree/iter/PrependAxisIterator;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/tree/iter/PrependAxisIterator;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/iter/AxisIterator;)V

    return-object p1

    .line 9
    :pswitch_7
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->e:Lnet/sf/saxon/tree/tiny/TinyTextualElement;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 3

    .line 10
    invoke-static {p2}, Lnet/sf/saxon/tree/util/Navigator;->nodeTestFromPredicate(Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p2

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown axis number "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :pswitch_0
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    new-instance v1, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    invoke-direct {p1, v1, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object p1

    .line 13
    :pswitch_1
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    new-instance v0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    invoke-direct {p1, v0, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object p1

    .line 14
    :pswitch_2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 15
    :pswitch_3
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    new-instance v0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-direct {p1, v0, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object p1

    .line 16
    :pswitch_4
    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 17
    :pswitch_5
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 18
    :pswitch_6
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    new-instance v1, Lnet/sf/saxon/tree/iter/PrependAxisIterator;

    .line 19
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    invoke-interface {v2, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/tree/iter/PrependAxisIterator;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/iter/AxisIterator;)V

    invoke-direct {p1, v1, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object p1

    .line 20
    :pswitch_7
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0, v0, p2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
