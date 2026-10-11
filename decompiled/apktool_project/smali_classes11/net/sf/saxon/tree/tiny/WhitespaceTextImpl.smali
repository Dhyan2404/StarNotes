.class public final Lnet/sf/saxon/tree/tiny/WhitespaceTextImpl;
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

.method public static appendStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;ILnet/sf/saxon/str/UnicodeBuilder;)V
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    aget v0, v0, p1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aget p0, p0, p1

    int-to-long p0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Lnet/sf/saxon/str/CompressedWhitespace;->uncompress(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    return-void
.end method

.method public static getLongValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)J
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    aget v0, v0, p1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aget p0, p0, p1

    int-to-long p0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    aget v0, v0, p1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aget p0, p0, p1

    int-to-long p0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    new-instance v0, Lnet/sf/saxon/str/CompressedWhitespace;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/str/CompressedWhitespace;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/WhitespaceTextImpl;->atomize()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public atomize()Lnet/sf/saxon/value/StringValue;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/WhitespaceTextImpl;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

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

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/WhitespaceTextImpl;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

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
    .locals 7

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget v1, v1, p0

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aget p0, v0, p0

    int-to-long v3, p0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long v0, v1, v3

    new-instance p0, Lnet/sf/saxon/str/CompressedWhitespace;

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/str/CompressedWhitespace;-><init>(J)V

    return-object p0
.end method
