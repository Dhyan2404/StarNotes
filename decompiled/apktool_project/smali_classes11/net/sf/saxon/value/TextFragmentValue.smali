.class public final Lnet/sf/saxon/value/TextFragmentValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NodeInfo;
.implements Ljavax/xml/transform/SourceLocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/value/TextFragmentValue$a;
    }
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/str/UnicodeString;

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public final h:Lnet/sf/saxon/om/GenericTreeInfo;

.field public i:Lnet/sf/saxon/value/TextFragmentValue$a;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/value/TextFragmentValue;->i:Lnet/sf/saxon/value/TextFragmentValue$a;

    iput-object p2, p0, Lnet/sf/saxon/value/TextFragmentValue;->e:Lnet/sf/saxon/str/UnicodeString;

    iput-object p3, p0, Lnet/sf/saxon/value/TextFragmentValue;->f:Ljava/lang/String;

    new-instance p2, Lnet/sf/saxon/om/GenericTreeInfo;

    invoke-direct {p2, p1}, Lnet/sf/saxon/om/GenericTreeInfo;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object p2, p0, Lnet/sf/saxon/value/TextFragmentValue;->h:Lnet/sf/saxon/om/GenericTreeInfo;

    invoke-virtual {p2, p0}, Lnet/sf/saxon/om/GenericTreeInfo;->setRootNode(Lnet/sf/saxon/om/NodeInfo;)V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/value/TextFragmentValue;)Lnet/sf/saxon/om/GenericTreeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue;->h:Lnet/sf/saxon/om/GenericTreeInfo;

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/value/TextFragmentValue;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue;->e:Lnet/sf/saxon/str/UnicodeString;

    return-object p0
.end method

.method public static synthetic c(Lnet/sf/saxon/value/TextFragmentValue;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static makeTextFragment(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)Lnet/sf/saxon/om/NodeInfo;
    .locals 4

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance p1, Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-direct {p1}, Lnet/sf/saxon/tree/linked/DocumentImpl;-><init>()V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/tree/linked/DocumentImpl;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/tree/linked/DocumentImpl;->setBaseURI(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    return-object p1

    :cond_0
    new-instance v0, Lnet/sf/saxon/value/TextFragmentValue;

    invoke-direct {v0, p0, p1, p2}, Lnet/sf/saxon/value/TextFragmentValue;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue;->e:Lnet/sf/saxon/str/UnicodeString;

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
    const/4 p0, -0x1

    return p0
.end method

.method public copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue;->e:Lnet/sf/saxon/str/UnicodeString;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p3, p2}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public final d()Lnet/sf/saxon/value/TextFragmentValue$a;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/value/TextFragmentValue;->i:Lnet/sf/saxon/value/TextFragmentValue$a;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/TextFragmentValue$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/TextFragmentValue$a;-><init>(Lnet/sf/saxon/value/TextFragmentValue;)V

    iput-object v0, p0, Lnet/sf/saxon/value/TextFragmentValue;->i:Lnet/sf/saxon/value/TextFragmentValue$a;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue;->i:Lnet/sf/saxon/value/TextFragmentValue$a;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public generateId(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue;->h:Lnet/sf/saxon/om/GenericTreeInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getDocumentNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue;->f:Ljava/lang/String;

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

    const/16 p0, 0x9

    return p0
.end method

.method public getParent()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    return-object p0
.end method

.method public getRootNode()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getTreeInfo()Lnet/sf/saxon/om/TreeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue;->h:Lnet/sf/saxon/om/GenericTreeInfo;

    return-object p0
.end method

.method public getURI()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue;->e:Lnet/sf/saxon/str/UnicodeString;

    return-object p0
.end method

.method public getUnparsedEntity(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnparsedEntityNames()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public hasChildNodes()Z
    .locals 4

    iget-object p0, p0, Lnet/sf/saxon/value/TextFragmentValue;->e:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasFingerprint()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isTyped()Z
    .locals 0

    const/4 p0, 0x0

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

    :pswitch_0
    const/4 p1, 0x2

    new-array p1, p1, [Lnet/sf/saxon/om/NodeInfo;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/value/TextFragmentValue;->d()Lnet/sf/saxon/value/TextFragmentValue$a;

    move-result-object p0

    aput-object p0, p1, v0

    .line 3
    new-instance p0, Lnet/sf/saxon/tree/iter/ArrayIterator$OfNodes;

    invoke-direct {p0, p1}, Lnet/sf/saxon/tree/iter/ArrayIterator$OfNodes;-><init>([Lnet/sf/saxon/om/NodeInfo;)V

    return-object p0

    .line 4
    :pswitch_1
    invoke-virtual {p0}, Lnet/sf/saxon/value/TextFragmentValue;->d()Lnet/sf/saxon/value/TextFragmentValue$a;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->makeIterator(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_2
    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->makeIterator(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_3
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
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
    invoke-interface {p2, p0}, Lnet/sf/saxon/pattern/NodePredicate;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p1

    .line 9
    invoke-virtual {p0}, Lnet/sf/saxon/value/TextFragmentValue;->d()Lnet/sf/saxon/value/TextFragmentValue$a;

    move-result-object v0

    .line 10
    invoke-interface {p2, v0}, Lnet/sf/saxon/pattern/NodePredicate;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Lnet/sf/saxon/om/NodeInfo;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    const/4 p0, 0x1

    aput-object v0, p1, p0

    .line 11
    new-instance p0, Lnet/sf/saxon/tree/iter/ArrayIterator$OfNodes;

    invoke-direct {p0, p1}, Lnet/sf/saxon/tree/iter/ArrayIterator$OfNodes;-><init>([Lnet/sf/saxon/om/NodeInfo;)V

    return-object p0

    .line 12
    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->makeIterator(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 13
    invoke-static {v0}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->makeIterator(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 14
    :cond_2
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 15
    :pswitch_1
    invoke-virtual {p0}, Lnet/sf/saxon/value/TextFragmentValue;->d()Lnet/sf/saxon/value/TextFragmentValue$a;

    move-result-object p0

    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 16
    :pswitch_2
    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 17
    :pswitch_3
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public selectID(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/value/TextFragmentValue;->g:Ljava/lang/String;

    return-void
.end method
