.class public Lnet/sf/saxon/event/ProxyOutputter;
.super Lnet/sf/saxon/event/Outputter;
.source "SourceFile"


# instance fields
.field public final e:Lnet/sf/saxon/event/Outputter;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Outputter;)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/event/Outputter;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p1}, Lnet/sf/saxon/event/Outputter;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/Outputter;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-virtual {p1}, Lnet/sf/saxon/event/Outputter;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/Outputter;->setSystemId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/event/Outputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->close()V

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->endDocument()V

    return-void
.end method

.method public endElement()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->endElement()V

    return-void
.end method

.method public getNextOutputter()Lnet/sf/saxon/event/Outputter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    return-object p0
.end method

.method public namespace(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->open()V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Outputter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->startContent()V

    return-void
.end method

.method public startDocument(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/Outputter;->startDocument(I)V

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/event/Outputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Outputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public usesTypeAnnotations()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyOutputter;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->usesTypeAnnotations()Z

    move-result p0

    return p0
.end method
