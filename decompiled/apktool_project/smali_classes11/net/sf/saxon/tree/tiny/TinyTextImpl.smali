.class public final Lnet/sf/saxon/tree/tiny/TinyTextImpl;
.super Lnet/sf/saxon/tree/tiny/TinyNodeImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/tiny/TinyTree;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iput p2, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    return-void
.end method

.method public static getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    aget v0, v0, p1

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aget p1, v1, p1

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->j:Lnet/sf/saxon/str/LargeTextBuffer;

    add-int/2addr p1, v0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/str/LargeTextBuffer;->substring(II)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextImpl;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

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

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTextImpl;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p1, p0, p3, p2}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public final getNodeKind()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-static {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTextImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method
