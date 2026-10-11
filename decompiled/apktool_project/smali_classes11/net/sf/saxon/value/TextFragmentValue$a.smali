.class public Lnet/sf/saxon/value/TextFragmentValue$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NodeInfo;
.implements Ljavax/xml/transform/SourceLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/value/TextFragmentValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/value/TextFragmentValue;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/value/TextFragmentValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/value/TextFragmentValue$a;->e:Lnet/sf/saxon/value/TextFragmentValue;

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue$a;->e:Lnet/sf/saxon/value/TextFragmentValue;

    invoke-static {p0}, Lnet/sf/saxon/value/TextFragmentValue;->b(Lnet/sf/saxon/value/TextFragmentValue;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public compareOrder(Lnet/sf/saxon/om/NodeInfo;)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue$a;->e:Lnet/sf/saxon/value/TextFragmentValue;

    invoke-static {p0}, Lnet/sf/saxon/value/TextFragmentValue;->b(Lnet/sf/saxon/value/TextFragmentValue;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p1, p0, p3, p2}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public generateId(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue$a;->e:Lnet/sf/saxon/value/TextFragmentValue;

    invoke-static {p0}, Lnet/sf/saxon/value/TextFragmentValue;->a(Lnet/sf/saxon/value/TextFragmentValue;)Lnet/sf/saxon/om/GenericTreeInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getDocumentNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "t1"

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

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue$a;->e:Lnet/sf/saxon/value/TextFragmentValue;

    invoke-static {p0}, Lnet/sf/saxon/value/TextFragmentValue;->c(Lnet/sf/saxon/value/TextFragmentValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue$a;->e:Lnet/sf/saxon/value/TextFragmentValue;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue$a;->e:Lnet/sf/saxon/value/TextFragmentValue;

    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTreeInfo()Lnet/sf/saxon/om/TreeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue$a;->e:Lnet/sf/saxon/value/TextFragmentValue;

    invoke-static {p0}, Lnet/sf/saxon/value/TextFragmentValue;->a(Lnet/sf/saxon/value/TextFragmentValue;)Lnet/sf/saxon/om/GenericTreeInfo;

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

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue$a;->e:Lnet/sf/saxon/value/TextFragmentValue;

    invoke-static {p0}, Lnet/sf/saxon/value/TextFragmentValue;->b(Lnet/sf/saxon/value/TextFragmentValue;)Lnet/sf/saxon/str/UnicodeString;

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

.method public iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 2

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
    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->makeIterator(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_1
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/4 p1, 0x2

    new-array p1, p1, [Lnet/sf/saxon/om/NodeInfo;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const/4 v0, 0x1

    .line 4
    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue$a;->e:Lnet/sf/saxon/value/TextFragmentValue;

    aput-object p0, p1, v0

    .line 5
    new-instance p0, Lnet/sf/saxon/tree/iter/ArrayIterator$OfNodes;

    invoke-direct {p0, p1}, Lnet/sf/saxon/tree/iter/ArrayIterator$OfNodes;-><init>([Lnet/sf/saxon/om/NodeInfo;)V

    return-object p0

    .line 6
    :pswitch_3
    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue$a;->e:Lnet/sf/saxon/value/TextFragmentValue;

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->makeIterator(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 7
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

    .line 8
    :pswitch_0
    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_1
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_2
    iget-object p1, p0, Lnet/sf/saxon/value/TextFragmentValue$a;->e:Lnet/sf/saxon/value/TextFragmentValue;

    invoke-interface {p2, p1}, Lnet/sf/saxon/pattern/NodePredicate;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p1

    .line 11
    invoke-interface {p2, p0}, Lnet/sf/saxon/pattern/NodePredicate;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Lnet/sf/saxon/om/NodeInfo;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    const/4 p2, 0x1

    .line 12
    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue$a;->e:Lnet/sf/saxon/value/TextFragmentValue;

    aput-object p0, p1, p2

    .line 13
    new-instance p0, Lnet/sf/saxon/tree/iter/ArrayIterator$OfNodes;

    invoke-direct {p0, p1}, Lnet/sf/saxon/tree/iter/ArrayIterator$OfNodes;-><init>([Lnet/sf/saxon/om/NodeInfo;)V

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 14
    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue$a;->e:Lnet/sf/saxon/value/TextFragmentValue;

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->makeIterator(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 15
    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->makeIterator(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 16
    :cond_2
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 17
    :pswitch_3
    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue$a;->e:Lnet/sf/saxon/value/TextFragmentValue;

    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
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
