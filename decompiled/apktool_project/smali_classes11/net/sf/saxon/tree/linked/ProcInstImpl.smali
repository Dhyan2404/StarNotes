.class public Lnet/sf/saxon/tree/linked/ProcInstImpl;
.super Lnet/sf/saxon/tree/linked/NodeImpl;
.source "SourceFile"


# instance fields
.field public h:Lnet/sf/saxon/str/UnicodeString;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/tree/linked/ProcInstImpl;->k:I

    iput v0, p0, Lnet/sf/saxon/tree/linked/ProcInstImpl;->l:I

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ProcInstImpl;->i:Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/tree/linked/ProcInstImpl;->h:Lnet/sf/saxon/str/UnicodeString;

    return-void
.end method


# virtual methods
.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ProcInstImpl;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0
.end method

.method public copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ProcInstImpl;->h:Lnet/sf/saxon/str/UnicodeString;

    const/4 v0, 0x0

    invoke-interface {p1, p2, p0, p3, v0}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/linked/ProcInstImpl;->l:I

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/linked/ProcInstImpl;->k:I

    return p0
.end method

.method public final getNodeKind()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public getNodeName()Lnet/sf/saxon/om/NodeName;
    .locals 1

    new-instance v0, Lnet/sf/saxon/om/NoNamespaceName;

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ProcInstImpl;->i:Ljava/lang/String;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ProcInstImpl;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ProcInstImpl;->h:Lnet/sf/saxon/str/UnicodeString;

    return-object p0
.end method

.method public rename(Lnet/sf/saxon/om/NodeName;Z)V
    .locals 0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ProcInstImpl;->i:Ljava/lang/String;

    return-void
.end method

.method public replaceStringValue(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ProcInstImpl;->h:Lnet/sf/saxon/str/UnicodeString;

    return-void
.end method

.method public setLocation(Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ProcInstImpl;->j:Ljava/lang/String;

    iput p2, p0, Lnet/sf/saxon/tree/linked/ProcInstImpl;->k:I

    iput p3, p0, Lnet/sf/saxon/tree/linked/ProcInstImpl;->l:I

    return-void
.end method
