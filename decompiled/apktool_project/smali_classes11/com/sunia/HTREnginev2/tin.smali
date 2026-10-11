.class public final Lcom/sunia/HTREnginev2/tin;
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


# virtual methods
.method public a()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tin;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tin;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tin;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p2, p0, p3, v0}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/tree/util/Navigator;->getBaseURI(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNodeKind()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 6

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget v1, v1, p0

    iget-object v2, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aget p0, v2, p0

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->k:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v2, v1

    add-int/2addr v1, p0

    int-to-long v4, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method
