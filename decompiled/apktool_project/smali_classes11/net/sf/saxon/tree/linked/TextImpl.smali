.class public Lnet/sf/saxon/tree/linked/TextImpl;
.super Lnet/sf/saxon/tree/linked/NodeImpl;
.source "SourceFile"


# instance fields
.field public h:Lnet/sf/saxon/str/UnicodeString;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/TextImpl;->h:Lnet/sf/saxon/str/UnicodeString;

    return-void
.end method


# virtual methods
.method public appendStringValue(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/TextImpl;->h:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/TextImpl;->h:Lnet/sf/saxon/str/UnicodeString;

    return-void
.end method

.method public copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/TextImpl;->h:Lnet/sf/saxon/str/UnicodeString;

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
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/TextImpl;->h:Lnet/sf/saxon/str/UnicodeString;

    return-object p0
.end method

.method public replaceStringValue(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->delete()V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lnet/sf/saxon/tree/linked/TextImpl;->h:Lnet/sf/saxon/str/UnicodeString;

    :goto_0
    return-void
.end method
