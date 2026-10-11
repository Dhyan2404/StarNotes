.class public Lnet/sf/saxon/event/ContentHandlerProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/event/Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;
    }
.end annotation


# static fields
.field public static final n:Ljava/lang/String; = "##"

.field public static final synthetic o:Z


# instance fields
.field public e:Lnet/sf/saxon/event/PipelineConfiguration;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Z

.field protected handler:Lorg/xml/sax/ContentHandler;

.field public i:Z

.field public final j:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;

.field protected lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field public m:Lnet/sf/saxon/s9api/Location;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->g:I

    iput-boolean v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->h:Z

    iput-boolean v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->i:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->j:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->k:Ljava/util/Stack;

    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    iput-object v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->m:Lnet/sf/saxon/s9api/Location;

    return-void
.end method


# virtual methods
.method public final a(Lorg/xml/sax/SAXException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/trans/XPathException;

    if-nez v0, :cond_1

    instance-of v0, p0, Lnet/sf/saxon/type/SchemaException;

    if-eqz v0, :cond_0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    const-string p1, "SXCH0003"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast p0, Lnet/sf/saxon/trans/XPathException;

    throw p0
.end method

.method public final b(Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->handler:Lorg/xml/sax/ContentHandler;

    if-eqz p1, :cond_0

    const-string p1, "javax.xml.transform.enable-output-escaping"

    goto :goto_0

    :cond_0
    const-string p1, "javax.xml.transform.disable-output-escaping"

    :goto_0
    const-string v0, ""

    invoke-interface {p0, p1, v0}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p2, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->m:Lnet/sf/saxon/s9api/Location;

    const/4 p2, 0x1

    invoke-static {p3, p2}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/ContentHandlerProxy;->b(Z)V

    :cond_0
    :try_start_0
    iget v1, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->g:I

    if-gtz v1, :cond_2

    iget-boolean v1, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->h:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/event/ContentHandlerProxy;->notifyNotWellFormed()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->handler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-interface {v1, v2, v0, p1}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/ContentHandlerProxy;->a(Lorg/xml/sax/SAXException;)V

    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/ContentHandlerProxy;->b(Z)V

    :cond_3
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->g:I

    if-ltz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/ContentHandlerProxy;->a(Lorg/xml/sax/SAXException;)V

    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->g:I

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p2, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->m:Lnet/sf/saxon/s9api/Location;

    :try_start_0
    iget-object p2, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    invoke-interface {p2, p3, v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/ContentHandlerProxy;->a(Lorg/xml/sax/SAXException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public endElement()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->g:I

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->j:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->j:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v3, v2, v1, v0}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/ContentHandlerProxy;->a(Lorg/xml/sax/SAXException;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->g:I

    iget-boolean v1, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->h:Z

    if-eqz v1, :cond_1

    if-gtz v0, :cond_1

    const/high16 v0, -0x80000000

    iput v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->g:I

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, v0}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/ContentHandlerProxy;->a(Lorg/xml/sax/SAXException;)V

    goto :goto_0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->e:Lnet/sf/saxon/event/PipelineConfiguration;

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->m:Lnet/sf/saxon/s9api/Location;

    return-object p0
.end method

.method public getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->e:Lnet/sf/saxon/event/PipelineConfiguration;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getTraceListener()Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->l:Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;

    invoke-direct {v0}, Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->l:Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->l:Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;

    return-object p0
.end method

.method public getUnderlyingContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->handler:Lorg/xml/sax/ContentHandler;

    return-object p0
.end method

.method public isRequireWellFormed()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->h:Z

    return p0
.end method

.method public isUndeclareNamespaces()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->i:Z

    return p0
.end method

.method public notifyNotWellFormed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "The result tree cannot be supplied to the ContentHandler because it is not well-formed XML"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v0, "SXCH0002"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->handler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lnet/sf/saxon/event/ContentHandlerProxyLocator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/event/ContentHandlerProxyLocator;-><init>(Lnet/sf/saxon/event/ContentHandlerProxy;)V

    iget-object v1, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, v0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    iget-object v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/ContentHandlerProxy;->a(Lorg/xml/sax/SAXException;)V

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->g:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ContentHandlerProxy.open(): no underlying handler provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p3, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->m:Lnet/sf/saxon/s9api/Location;

    :try_start_0
    iget-object p3, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->handler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/ContentHandlerProxy;->a(Lorg/xml/sax/SAXException;)V

    :goto_0
    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 2

    const-string v0, "{http://saxon.sf.net/}require-well-formed"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->h:Z

    :cond_0
    const-string v0, "undeclare-prefixes"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->i:Z

    :cond_1
    return-void
.end method

.method public setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->e:Lnet/sf/saxon/event/PipelineConfiguration;

    return-void
.end method

.method public setRequireWellFormed(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->h:Z

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->f:Ljava/lang/String;

    return-void
.end method

.method public setUndeclareNamespaces(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->i:Z

    return-void
.end method

.method public setUnderlyingContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 1

    iput-object p1, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->handler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/xml/sax/ext/LexicalHandler;

    iput-object p1, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    :cond_0
    return-void
.end method

.method public setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->handler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Ljavax/xml/transform/sax/TransformerHandler;

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p0, Ljavax/xml/transform/sax/TransformerHandler;

    const-string v0, "unknown"

    invoke-interface {p0, p1, p3, p2, v0}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public startDocument(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget p2, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->g:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->g:I

    if-gtz p2, :cond_0

    iget-boolean p2, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->h:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/ContentHandlerProxy;->notifyNotWellFormed()V

    :cond_0
    invoke-interface {p5}, Lnet/sf/saxon/s9api/Location;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->m:Lnet/sf/saxon/s9api/Location;

    iget-object p2, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->k:Ljava/util/Stack;

    const-string p5, "##"

    invoke-virtual {p2, p5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {p4}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object p5

    const-string p6, "xml"

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_1

    return-void

    :cond_1
    invoke-virtual {p4}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object p4

    iget-boolean p6, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->i:Z

    if-nez p6, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-object p6, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p6, p5, p4}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->k:Ljava/util/Stack;

    invoke-virtual {p4, p5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    invoke-virtual {p0, p4}, Lnet/sf/saxon/event/ContentHandlerProxy;->a(Lorg/xml/sax/SAXException;)V

    goto :goto_0

    :cond_3
    instance-of p2, p3, Lorg/xml/sax/Attributes;

    if-eqz p2, :cond_4

    check-cast p3, Lorg/xml/sax/Attributes;

    goto :goto_2

    :cond_4
    new-instance p2, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ContentHandlerProxy;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p4

    invoke-interface {p3}, Lnet/sf/saxon/om/AttributeMap;->size()I

    move-result p5

    invoke-direct {p2, p4, p5}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;-><init>(Lnet/sf/saxon/Configuration;I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {p4}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p4}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-virtual {p4}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->addAttribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_1

    :cond_5
    move-object p3, p2

    :goto_2
    iget p2, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->g:I

    if-gtz p2, :cond_6

    iget-boolean p2, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->h:Z

    if-nez p2, :cond_7

    :cond_6
    :try_start_1
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    iget-object p5, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p5, p2, p4, p1, p3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iget-object p3, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->j:Ljava/util/Stack;

    invoke-virtual {p3, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->j:Ljava/util/Stack;

    invoke-virtual {p2, p4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lnet/sf/saxon/event/ContentHandlerProxy;->j:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/ContentHandlerProxy;->a(Lorg/xml/sax/SAXException;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public usesTypeAnnotations()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
