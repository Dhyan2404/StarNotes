.class public Lnet/sf/saxon/event/DocumentValidator;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# instance fields
.field public e:Z

.field public f:I

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/DocumentValidator;->e:Z

    iput p1, p0, Lnet/sf/saxon/event/DocumentValidator;->f:I

    iput-object p2, p0, Lnet/sf/saxon/event/DocumentValidator;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/DocumentValidator;->f:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A valid document must contain no text outside the outermost element (found \""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->truncate30(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/event/DocumentValidator;->g:Ljava/lang/String;

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/DocumentValidator;->f:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/sf/saxon/event/DocumentValidator;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/DocumentValidator;->e:Z

    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/DocumentValidator;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "A valid document must have a child element"

    iget-object p0, p0, Lnet/sf/saxon/event/DocumentValidator;->g:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public endElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/DocumentValidator;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/DocumentValidator;->f:I

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    return-void
.end method

.method public setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 0

    invoke-super {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/event/DocumentValidator;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/event/DocumentValidator;->f:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "A valid document must have only one child element"

    iget-object p0, p0, Lnet/sf/saxon/event/DocumentValidator;->g:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/DocumentValidator;->e:Z

    iget v1, p0, Lnet/sf/saxon/event/DocumentValidator;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/sf/saxon/event/DocumentValidator;->f:I

    iget-object v2, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
