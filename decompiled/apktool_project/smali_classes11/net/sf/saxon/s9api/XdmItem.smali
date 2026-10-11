.class public abstract Lnet/sf/saxon/s9api/XdmItem;
.super Lnet/sf/saxon/s9api/XdmValue;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmValue;-><init>(Lnet/sf/saxon/om/GroundedValue;)V

    return-void
.end method

.method public static wrapItem(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/s9api/XdmAtomicValue;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/AtomicSequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    :goto_0
    return-object p0
.end method

.method public static wrapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/s9api/XdmItem;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmItem;

    :goto_0
    return-object p0
.end method

.method public static wrapItem(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/s9api/XdmNode;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmNode;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            "Lnet/sf/saxon/s9api/XdmValue;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public getUnderlyingValue()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 2
    invoke-super {p0}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public isAtomicValue()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/value/AtomicValue;

    return p0
.end method

.method public isNode()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/om/NodeInfo;

    return p0
.end method

.method public matches(Lnet/sf/saxon/s9api/ItemType;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/s9api/ItemType;->matches(Lnet/sf/saxon/s9api/XdmItem;)Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public stream()Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "+",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method
