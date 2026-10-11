.class public Lnet/sf/saxon/event/EventMonitor;
.super Lnet/sf/saxon/event/Outputter;
.source "SourceFile"


# instance fields
.field public e:Z

.field public final f:Lnet/sf/saxon/event/Outputter;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Outputter;)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/event/Outputter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/EventMonitor;->e:Z

    iput-object p1, p0, Lnet/sf/saxon/event/EventMonitor;->f:Lnet/sf/saxon/event/Outputter;

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/EventMonitor;->e:Z

    iget-object p0, p0, Lnet/sf/saxon/event/EventMonitor;->f:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/EventMonitor;->e:Z

    iget-object v1, p0, Lnet/sf/saxon/event/EventMonitor;->f:Lnet/sf/saxon/event/Outputter;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lnet/sf/saxon/event/Outputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/EventMonitor;->e:Z

    iget-object p0, p0, Lnet/sf/saxon/event/EventMonitor;->f:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/EventMonitor;->e:Z

    iget-object p0, p0, Lnet/sf/saxon/event/EventMonitor;->f:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/EventMonitor;->e:Z

    iget-object p0, p0, Lnet/sf/saxon/event/EventMonitor;->f:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->endDocument()V

    return-void
.end method

.method public endElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/EventMonitor;->e:Z

    iget-object p0, p0, Lnet/sf/saxon/event/EventMonitor;->f:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->endElement()V

    return-void
.end method

.method public hasBeenWrittenTo()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/event/EventMonitor;->e:Z

    return p0
.end method

.method public namespace(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/EventMonitor;->e:Z

    iget-object p0, p0, Lnet/sf/saxon/event/EventMonitor;->f:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/EventMonitor;->e:Z

    iget-object p0, p0, Lnet/sf/saxon/event/EventMonitor;->f:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Outputter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public startContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/EventMonitor;->e:Z

    iget-object p0, p0, Lnet/sf/saxon/event/EventMonitor;->f:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->startContent()V

    return-void
.end method

.method public startDocument(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/EventMonitor;->e:Z

    iget-object p0, p0, Lnet/sf/saxon/event/EventMonitor;->f:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/Outputter;->startDocument(I)V

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/EventMonitor;->e:Z

    iget-object p0, p0, Lnet/sf/saxon/event/EventMonitor;->f:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Outputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
