.class public Lnet/sf/saxon/event/IgnorableWhitespaceStripper;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# instance fields
.field public e:[Z

.field public f:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/16 p1, 0x64

    new-array p1, p1, [Z

    iput-object p1, p0, Lnet/sf/saxon/event/IgnorableWhitespaceStripper;->e:[Z

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/event/IgnorableWhitespaceStripper;->f:I

    return-void
.end method


# virtual methods
.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/event/IgnorableWhitespaceStripper;->e:[Z

    iget v1, p0, Lnet/sf/saxon/event/IgnorableWhitespaceStripper;->f:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_1
    return-void
.end method

.method public endElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    iget v0, p0, Lnet/sf/saxon/event/IgnorableWhitespaceStripper;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/IgnorableWhitespaceStripper;->f:I

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object p1

    const/4 p3, 0x1

    if-eq p2, p1, :cond_0

    invoke-interface {p2}, Lnet/sf/saxon/type/SchemaType;->isComplexType()Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast p2, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {p2}, Lnet/sf/saxon/type/ComplexType;->isSimpleContent()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lnet/sf/saxon/type/ComplexType;->isMixedContent()Z

    move-result p1

    if-nez p1, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lnet/sf/saxon/event/IgnorableWhitespaceStripper;->f:I

    add-int/2addr p2, p3

    iput p2, p0, Lnet/sf/saxon/event/IgnorableWhitespaceStripper;->f:I

    iget-object p3, p0, Lnet/sf/saxon/event/IgnorableWhitespaceStripper;->e:[Z

    array-length p4, p3

    if-lt p2, p4, :cond_1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/event/IgnorableWhitespaceStripper;->e:[Z

    :cond_1
    iget-object p2, p0, Lnet/sf/saxon/event/IgnorableWhitespaceStripper;->e:[Z

    iget p0, p0, Lnet/sf/saxon/event/IgnorableWhitespaceStripper;->f:I

    aput-boolean p1, p2, p0

    return-void
.end method

.method public usesTypeAnnotations()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
