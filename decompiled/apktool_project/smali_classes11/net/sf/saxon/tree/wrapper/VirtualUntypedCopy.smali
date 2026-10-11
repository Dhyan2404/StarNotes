.class public Lnet/sf/saxon/tree/wrapper/VirtualUntypedCopy;
.super Lnet/sf/saxon/tree/wrapper/VirtualCopy;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    return-void
.end method

.method public static makeVirtualUntypedTree(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/VirtualCopy;
    .locals 1

    :goto_0
    instance-of v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualUntypedCopy;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    check-cast p0, Lnet/sf/saxon/tree/wrapper/VirtualUntypedCopy;

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    check-cast p1, Lnet/sf/saxon/tree/wrapper/VirtualUntypedCopy;

    iget-object p1, p1, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/tree/wrapper/VirtualUntypedCopy;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/tree/wrapper/VirtualUntypedCopy;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/tree/wrapper/VirtualCopy;)V

    iput-object p1, v0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->tree:Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    return-object v0
.end method


# virtual methods
.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    and-int/lit8 p2, p2, -0x5

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_1
    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object p0

    return-object p0
.end method

.method public isNilled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/VirtualCopy;
    .locals 2

    new-instance v0, Lnet/sf/saxon/tree/wrapper/VirtualUntypedCopy;

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->root:Lnet/sf/saxon/om/NodeInfo;

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/tree/wrapper/VirtualUntypedCopy;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->tree:Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    iput-object p0, v0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->tree:Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    return-object v0
.end method
