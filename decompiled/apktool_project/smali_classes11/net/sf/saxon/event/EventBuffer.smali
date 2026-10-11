.class public Lnet/sf/saxon/event/EventBuffer;
.super Lnet/sf/saxon/event/SequenceReceiver;
.source "SourceFile"


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/event/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/SequenceReceiver;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/EventBuffer;->e:Ljava/util/List;

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

    iget-object p0, p0, Lnet/sf/saxon/event/EventBuffer;->e:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/event/Event$Append;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/event/Event$Append;-><init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/EventBuffer;->e:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/event/Event$Text;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/event/Event$Text;-><init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/EventBuffer;->e:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/event/Event$Comment;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/event/Event$Comment;-><init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/EventBuffer;->e:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/event/Event$EndDocument;

    invoke-direct {v0}, Lnet/sf/saxon/event/Event$EndDocument;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public endElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/EventBuffer;->e:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/event/Event$EndElement;

    invoke-direct {v0}, Lnet/sf/saxon/event/Event$EndElement;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/EventBuffer;->e:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/event/Event$ProcessingInstruction;

    invoke-direct {v0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Event$ProcessingInstruction;-><init>(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public replay(Lnet/sf/saxon/event/Receiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/EventBuffer;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/event/Event;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/event/Event;->replay(Lnet/sf/saxon/event/Receiver;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startDocument(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/EventBuffer;->e:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/event/Event$StartDocument;

    invoke-direct {v0, p1}, Lnet/sf/saxon/event/Event$StartDocument;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/EventBuffer;->e:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/event/Event$StartElement;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/event/Event$StartElement;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
