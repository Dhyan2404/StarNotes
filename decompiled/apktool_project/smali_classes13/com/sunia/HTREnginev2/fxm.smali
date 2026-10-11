.class public final Lcom/sunia/HTREnginev2/fxm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/dxm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/fxm$b;,
        Lcom/sunia/HTREnginev2/fxm$a;
    }
.end annotation


# static fields
.field public static final l:Ljava/util/Iterator;


# instance fields
.field public e:Ljavax/xml/stream/XMLEventWriter;

.field public final f:Ljavax/xml/stream/XMLEventFactory;

.field public final g:Lcom/sunia/HTREnginev2/ixm;

.field public final h:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

.field public i:Z

.field public j:Z

.field public final k:Lorg/apache/xerces/xni/QName;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/exm;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/exm;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/fxm;->l:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/sunia/HTREnginev2/ixm;Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/fxm;->k:Lorg/apache/xerces/xni/QName;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fxm;->g:Lcom/sunia/HTREnginev2/ixm;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/fxm;->h:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-static {}, Ljavax/xml/stream/XMLEventFactory;->newInstance()Ljavax/xml/stream/XMLEventFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fxm;->f:Ljavax/xml/stream/XMLEventFactory;

    return-void
.end method

.method public static synthetic o(Lcom/sunia/HTREnginev2/fxm;)Lorg/apache/xerces/xni/QName;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->k:Lorg/apache/xerces/xni/QName;

    return-object p0
.end method

.method public static synthetic p(Lcom/sunia/HTREnginev2/fxm;)Ljavax/xml/stream/XMLEventFactory;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->f:Ljavax/xml/stream/XMLEventFactory;

    return-object p0
.end method

.method public static synthetic q(Lcom/sunia/HTREnginev2/fxm;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->h:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    return-object p0
.end method


# virtual methods
.method public a(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fxm;->f:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v0}, Ljavax/xml/stream/XMLEventFactory;->createEndDocument()Ljavax/xml/stream/events/EndDocument;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    invoke-interface {p0}, Ljavax/xml/stream/XMLEventWriter;->flush()V

    return-void
.end method

.method public b(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->f:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljavax/xml/stream/XMLEventFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/ProcessingInstruction;

    move-result-object p0

    invoke-interface {v1, p0}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public c(Ljavax/xml/transform/stax/StAXResult;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/fxm;->i:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/fxm;->j:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/xml/transform/stax/StAXResult;->getXMLEventWriter()Ljavax/xml/stream/XMLEventWriter;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    return-void
.end method

.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lcom/sunia/HTREnginev2/fxm;->i:Z

    if-nez p2, :cond_1

    :try_start_0
    iget-boolean p2, p0, Lcom/sunia/HTREnginev2/fxm;->j:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->f:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {p1}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object p0

    :goto_0
    invoke-interface {p2, p0}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->f:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {p1}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/xml/stream/XMLEventFactory;->createCData(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/xerces/xni/XNIException;

    invoke-direct {p1, p0}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public d(Ljavax/xml/stream/events/Comment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public e(Ljavax/xml/stream/events/Characters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/fxm;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lcom/sunia/HTREnginev2/fxm;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/fxm;->j:Z

    return-void
.end method

.method public endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p2, p0, Lcom/sunia/HTREnginev2/fxm;->g:Lcom/sunia/HTREnginev2/ixm;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/ixm;->m()Ljavax/xml/stream/events/XMLEvent;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    invoke-interface {p0, p2}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fxm;->f:Ljavax/xml/stream/XMLEventFactory;

    iget-object v1, p1, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/fxm;->s()Ljava/util/Iterator;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p1, p0}, Ljavax/xml/stream/XMLEventFactory;->createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;

    move-result-object p0

    invoke-interface {p2, p0}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/xerces/xni/XNIException;

    invoke-direct {p1, p0}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public f(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->standaloneSet()Z

    move-result p1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->f:Ljavax/xml/stream/XMLEventFactory;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "UTF-8"

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "1.0"

    :goto_1
    invoke-virtual {p0, v1, v0, p1}, Ljavax/xml/stream/XMLEventFactory;->createStartDocument(Ljava/lang/String;Ljava/lang/String;Z)Ljavax/xml/stream/events/StartDocument;

    move-result-object p0

    invoke-interface {v2, p0}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public g(Ljavax/xml/stream/events/EntityReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public h(Ljavax/xml/stream/events/StartDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public i(Ljavax/xml/stream/events/Characters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/fxm;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public j(Ljavax/xml/stream/events/DTD;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public k(Ljavax/xml/stream/events/ProcessingInstruction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public l(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/fxm;->f:Ljavax/xml/stream/XMLEventFactory;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->g:Lcom/sunia/HTREnginev2/ixm;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ixm;->n(Ljava/lang/String;)Ljavax/xml/stream/events/EntityDeclaration;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Ljavax/xml/stream/XMLEventFactory;->createEntityReference(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)Ljavax/xml/stream/events/EntityReference;

    move-result-object p0

    invoke-interface {v0, p0}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public m(Ljavax/xml/stream/events/EndDocument;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    invoke-interface {p0}, Ljavax/xml/stream/XMLEventWriter;->flush()V

    return-void
.end method

.method public n(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->f:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/xml/stream/XMLEventFactory;->createComment(Ljava/lang/String;)Ljavax/xml/stream/events/Comment;

    move-result-object p0

    invoke-interface {v0, p0}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public final r(Lorg/apache/xerces/xni/XMLAttributes;I)Ljava/util/Iterator;
    .locals 1

    if-lez p2, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/fxm$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/fxm$a;-><init>(Lcom/sunia/HTREnginev2/fxm;Lorg/apache/xerces/xni/XMLAttributes;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sunia/HTREnginev2/fxm;->l:Ljava/util/Iterator;

    :goto_0
    return-object v0
.end method

.method public final s()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fxm;->h:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v0}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->getDeclaredPrefixCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Lcom/sunia/HTREnginev2/fxm$b;

    invoke-direct {v1, p0, v0}, Lcom/sunia/HTREnginev2/fxm$b;-><init>(Lcom/sunia/HTREnginev2/fxm;I)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sunia/HTREnginev2/fxm;->l:Ljava/util/Iterator;

    :goto_0
    return-object v1
.end method

.method public setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public setIgnoringCharacters(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/fxm;->i:Z

    return-void
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/fxm;->j:Z

    return-void
.end method

.method public startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result p3

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fxm;->g:Lcom/sunia/HTREnginev2/ixm;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/ixm;->m()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/fxm;->e:Ljavax/xml/stream/XMLEventWriter;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/fxm;->f:Ljavax/xml/stream/XMLEventFactory;

    iget-object v2, p1, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    iget-object v4, p1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sunia/HTREnginev2/fxm;->r(Lorg/apache/xerces/xni/XMLAttributes;I)Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/fxm;->s()Ljava/util/Iterator;

    move-result-object v6

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm;->h:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {p0}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Ljavax/xml/stream/XMLEventFactory;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/stream/events/StartElement;

    move-result-object p0

    invoke-interface {v0, p0}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/xerces/xni/XNIException;

    invoke-direct {p1, p0}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method
