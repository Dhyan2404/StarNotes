.class public Lnet/sf/saxon/event/OutputterEventBuffer;
.super Lnet/sf/saxon/event/Outputter;
.source "SourceFile"


# instance fields
.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/event/OutputterEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/event/Outputter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/event/OutputterEvent$Append;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/event/OutputterEvent$Append;-><init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    .locals 7

    iget-object p0, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    new-instance v6, Lnet/sf/saxon/event/OutputterEvent$Attribute;

    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/event/OutputterEvent$Attribute;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/event/OutputterEvent$Text;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/event/OutputterEvent$Text;-><init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/event/OutputterEvent$Comment;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/event/OutputterEvent$Comment;-><init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

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

    iget-object p0, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/event/OutputterEvent$EndDocument;

    invoke-direct {v0}, Lnet/sf/saxon/event/OutputterEvent$EndDocument;-><init>()V

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

    iget-object p0, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/event/OutputterEvent$EndElement;

    invoke-direct {v0}, Lnet/sf/saxon/event/OutputterEvent$EndElement;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public namespace(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/event/OutputterEvent$Namespace;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/event/OutputterEvent$Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/event/OutputterEvent$ProcessingInstruction;

    invoke-direct {v0, p1, p2, p3, p4}, Lnet/sf/saxon/event/OutputterEvent$ProcessingInstruction;-><init>(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public replay(Lnet/sf/saxon/event/Outputter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/event/OutputterEvent;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/event/OutputterEvent;->replay(Lnet/sf/saxon/event/Outputter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setBuffer(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/event/OutputterEvent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    return-void
.end method

.method public startContent()V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/event/OutputterEvent$StartContent;

    invoke-direct {v0}, Lnet/sf/saxon/event/OutputterEvent$StartContent;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startDocument(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/event/OutputterEvent$StartDocument;

    invoke-direct {v0, p1}, Lnet/sf/saxon/event/OutputterEvent$StartDocument;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/event/OutputterEvent$StartElement;

    invoke-direct {v1, p1, p2, p5, p6}, Lnet/sf/saxon/event/OutputterEvent$StartElement;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/AttributeInfo;

    .line 4
    iget-object p3, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    new-instance p5, Lnet/sf/saxon/event/OutputterEvent$Attribute;

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v2

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v5

    move-object v0, p5

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/event/OutputterEvent$Attribute;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p4}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/NamespaceBinding;

    .line 6
    iget-object p3, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    new-instance p4, Lnet/sf/saxon/event/OutputterEvent$Namespace;

    invoke-virtual {p2}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p5, p2, p6}, Lnet/sf/saxon/event/OutputterEvent$Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    new-instance p1, Lnet/sf/saxon/event/OutputterEvent$StartContent;

    invoke-direct {p1}, Lnet/sf/saxon/event/OutputterEvent$StartContent;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lnet/sf/saxon/event/OutputterEventBuffer;->e:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/event/OutputterEvent$StartElement;

    invoke-direct {v0, p1, p2, p3, p4}, Lnet/sf/saxon/event/OutputterEvent$StartElement;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
