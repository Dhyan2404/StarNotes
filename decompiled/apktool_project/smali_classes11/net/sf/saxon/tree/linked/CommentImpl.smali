.class public Lnet/sf/saxon/tree/linked/CommentImpl;
.super Lnet/sf/saxon/tree/linked/NodeImpl;
.source "SourceFile"


# instance fields
.field public h:Lnet/sf/saxon/str/UnicodeString;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/tree/linked/CommentImpl;->j:I

    iput v0, p0, Lnet/sf/saxon/tree/linked/CommentImpl;->k:I

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/CommentImpl;->h:Lnet/sf/saxon/str/UnicodeString;

    return-void
.end method


# virtual methods
.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/CommentImpl;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0
.end method

.method public copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/CommentImpl;->h:Lnet/sf/saxon/str/UnicodeString;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p3, p2}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/linked/CommentImpl;->k:I

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/linked/CommentImpl;->j:I

    return p0
.end method

.method public final getNodeKind()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/CommentImpl;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/CommentImpl;->h:Lnet/sf/saxon/str/UnicodeString;

    return-object p0
.end method

.method public replaceStringValue(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/CommentImpl;->h:Lnet/sf/saxon/str/UnicodeString;

    return-void
.end method

.method public setLocation(Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/CommentImpl;->i:Ljava/lang/String;

    iput p2, p0, Lnet/sf/saxon/tree/linked/CommentImpl;->j:I

    iput p3, p0, Lnet/sf/saxon/tree/linked/CommentImpl;->k:I

    return-void
.end method
