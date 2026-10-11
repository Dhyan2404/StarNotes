.class public Lnet/sf/saxon/event/TeeOutputter;
.super Lnet/sf/saxon/event/SequenceReceiver;
.source "SourceFile"


# instance fields
.field public e:Lnet/sf/saxon/event/Receiver;

.field public f:Lnet/sf/saxon/event/Receiver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/event/Receiver;)V
    .locals 1

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/event/SequenceReceiver;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iput-object p1, p0, Lnet/sf/saxon/event/TeeOutputter;->e:Lnet/sf/saxon/event/Receiver;

    iput-object p2, p0, Lnet/sf/saxon/event/TeeOutputter;->f:Lnet/sf/saxon/event/Receiver;

    return-void
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TeeOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p0, p0, Lnet/sf/saxon/event/TeeOutputter;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TeeOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p0, p0, Lnet/sf/saxon/event/TeeOutputter;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TeeOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->close()V

    iget-object p0, p0, Lnet/sf/saxon/event/TeeOutputter;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->close()V

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TeeOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p0, p0, Lnet/sf/saxon/event/TeeOutputter;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TeeOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    iget-object p0, p0, Lnet/sf/saxon/event/TeeOutputter;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    return-void
.end method

.method public endElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TeeOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    iget-object p0, p0, Lnet/sf/saxon/event/TeeOutputter;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    return-void
.end method

.method public getFirstDestination()Lnet/sf/saxon/event/Receiver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/TeeOutputter;->e:Lnet/sf/saxon/event/Receiver;

    return-object p0
.end method

.method public getSecondDestination()Lnet/sf/saxon/event/Receiver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/TeeOutputter;->f:Lnet/sf/saxon/event/Receiver;

    return-object p0
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0}, Lnet/sf/saxon/event/SequenceReceiver;->open()V

    iget-object v0, p0, Lnet/sf/saxon/event/TeeOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->open()V

    iget-object p0, p0, Lnet/sf/saxon/event/TeeOutputter;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->open()V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TeeOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p0, p0, Lnet/sf/saxon/event/TeeOutputter;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public setFirstDestination(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/TeeOutputter;->e:Lnet/sf/saxon/event/Receiver;

    return-void
.end method

.method public setSecondDestination(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/TeeOutputter;->f:Lnet/sf/saxon/event/Receiver;

    return-void
.end method

.method public setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TeeOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/event/TeeOutputter;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startDocument(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TeeOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    iget-object p0, p0, Lnet/sf/saxon/event/TeeOutputter;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TeeOutputter;->e:Lnet/sf/saxon/event/Receiver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    iget-object v1, p0, Lnet/sf/saxon/event/TeeOutputter;->f:Lnet/sf/saxon/event/Receiver;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public usesTypeAnnotations()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/event/TeeOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->usesTypeAnnotations()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/event/TeeOutputter;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->usesTypeAnnotations()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
