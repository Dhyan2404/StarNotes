.class public Lnet/sf/saxon/event/CommentStripper;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# instance fields
.field public e:Lnet/sf/saxon/str/CompressedWhitespace;

.field public final f:Lnet/sf/saxon/str/UnicodeBuilder;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/event/CommentStripper;->e:Lnet/sf/saxon/str/CompressedWhitespace;

    new-instance p1, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {p1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/CommentStripper;->f:Lnet/sf/saxon/str/UnicodeBuilder;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/CommentStripper;->f:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    iget-object v2, p0, Lnet/sf/saxon/event/CommentStripper;->f:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-interface {v0, v2, v3, v1}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/event/CommentStripper;->e:Lnet/sf/saxon/str/CompressedWhitespace;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    sget-object v3, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-interface {v2, v0, v3, v1}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/event/CommentStripper;->e:Lnet/sf/saxon/str/CompressedWhitespace;

    iget-object p0, p0, Lnet/sf/saxon/event/CommentStripper;->f:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->clear()V

    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of p2, p1, Lnet/sf/saxon/str/CompressedWhitespace;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lnet/sf/saxon/event/CommentStripper;->f:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeBuilder;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lnet/sf/saxon/event/CommentStripper;->e:Lnet/sf/saxon/str/CompressedWhitespace;

    if-nez p2, :cond_0

    check-cast p1, Lnet/sf/saxon/str/CompressedWhitespace;

    iput-object p1, p0, Lnet/sf/saxon/event/CommentStripper;->e:Lnet/sf/saxon/str/CompressedWhitespace;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/event/CommentStripper;->f:Lnet/sf/saxon/str/UnicodeBuilder;

    check-cast p1, Lnet/sf/saxon/str/CompressedWhitespace;

    invoke-virtual {p1}, Lnet/sf/saxon/str/CompressedWhitespace;->uncompress()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lnet/sf/saxon/event/CommentStripper;->e:Lnet/sf/saxon/str/CompressedWhitespace;

    if-eqz p2, :cond_2

    iget-object p3, p0, Lnet/sf/saxon/event/CommentStripper;->f:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/str/CompressedWhitespace;->uncompress()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-virtual {p3, p2}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    const/4 p2, 0x0

    iput-object p2, p0, Lnet/sf/saxon/event/CommentStripper;->e:Lnet/sf/saxon/str/CompressedWhitespace;

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/event/CommentStripper;->f:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    :goto_0
    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0

    return-void
.end method

.method public endElement()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/CommentStripper;->c()V

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/CommentStripper;->c()V

    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
