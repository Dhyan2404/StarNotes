.class public final Lcom/sunia/HTREnginev2/xzn;
.super Ljavax/xml/validation/ValidatorHandler;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/apache/xerces/impl/validation/EntityState;
.implements Lorg/apache/xerces/xs/PSVIProvider;
.implements Lcom/sunia/HTREnginev2/yzn;
.implements Lorg/apache/xerces/xni/XMLDocumentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/xzn$a;,
        Lcom/sunia/HTREnginev2/xzn$b;
    }
.end annotation


# static fields
.field public static final J:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field public static final O:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field public static final Q:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field public static final Z:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field public static final k0:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field public static final q0:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field public static final w:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field public static final x:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"

.field public static final y:Ljava/lang/String; = "http://apache.org/xml/features/internal/strings-interned"

.field public static final z:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"


# instance fields
.field public final e:Lorg/apache/xerces/impl/XMLErrorReporter;

.field public final f:Lorg/apache/xerces/xni/NamespaceContext;

.field public final g:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

.field public final h:Lorg/apache/xerces/util/SymbolTable;

.field public final i:Lorg/apache/xerces/impl/validation/ValidationManager;

.field public final j:Lcom/sunia/HTREnginev2/tlo;

.field public final k:Lorg/apache/xerces/util/SAXLocatorWrapper;

.field public l:Z

.field public m:Ljava/util/HashMap;

.field public n:Z

.field public final o:Lorg/apache/xerces/xni/QName;

.field public final p:Lorg/apache/xerces/xni/QName;

.field public final q:Lorg/apache/xerces/util/XMLAttributesImpl;

.field public final r:Lorg/apache/xerces/util/AttributesProxy;

.field public final s:Lorg/apache/xerces/xni/XMLString;

.field public t:Lorg/xml/sax/ContentHandler;

.field public final u:Lcom/sunia/HTREnginev2/xzn$b;

.field public final v:Lcom/sunia/HTREnginev2/xzn$a;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/tlo;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljavax/xml/validation/ValidatorHandler;-><init>()V

    new-instance v0, Lorg/apache/xerces/util/SAXLocatorWrapper;

    invoke-direct {v0}, Lorg/apache/xerces/util/SAXLocatorWrapper;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->k:Lorg/apache/xerces/util/SAXLocatorWrapper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/xzn;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->m:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/xzn;->n:Z

    new-instance v1, Lorg/apache/xerces/xni/QName;

    invoke-direct {v1}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/xzn;->o:Lorg/apache/xerces/xni/QName;

    new-instance v1, Lorg/apache/xerces/xni/QName;

    invoke-direct {v1}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/xzn;->p:Lorg/apache/xerces/xni/QName;

    new-instance v1, Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v1}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/xzn;->q:Lorg/apache/xerces/util/XMLAttributesImpl;

    new-instance v2, Lorg/apache/xerces/util/AttributesProxy;

    invoke-direct {v2, v1}, Lorg/apache/xerces/util/AttributesProxy;-><init>(Lorg/apache/xerces/xni/XMLAttributes;)V

    iput-object v2, p0, Lcom/sunia/HTREnginev2/xzn;->r:Lorg/apache/xerces/util/AttributesProxy;

    new-instance v1, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v1}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/xzn;->s:Lorg/apache/xerces/xni/XMLString;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->t:Lorg/xml/sax/ContentHandler;

    new-instance v1, Lcom/sunia/HTREnginev2/xzn$b;

    invoke-direct {v1, p0, v0}, Lcom/sunia/HTREnginev2/xzn$b;-><init>(Lcom/sunia/HTREnginev2/xzn;Lcom/sunia/HTREnginev2/wzn;)V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/xzn;->u:Lcom/sunia/HTREnginev2/xzn$b;

    new-instance v1, Lcom/sunia/HTREnginev2/xzn$a;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/xzn$a;-><init>(Lorg/w3c/dom/ls/LSResourceResolver;)V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/xzn;->v:Lcom/sunia/HTREnginev2/xzn$a;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->e:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v0, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/xni/NamespaceContext;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->f:Lorg/apache/xerces/xni/NamespaceContext;

    const-string v0, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->g:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->h:Lorg/apache/xerces/util/SymbolTable;

    const-string v0, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/impl/validation/ValidationManager;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xzn;->i:Lorg/apache/xerces/impl/validation/ValidationManager;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/tlo;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/tlo;-><init>(Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/xzn;-><init>(Lcom/sunia/HTREnginev2/tlo;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sunia/HTREnginev2/tlo;->setFeature(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/xzn;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/xzn;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method

.method public static synthetic o(Lcom/sunia/HTREnginev2/xzn;)Lcom/sunia/HTREnginev2/tlo;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    return-object p0
.end method


# virtual methods
.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->t:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_1

    iget p2, p1, Lorg/apache/xerces/xni/XMLString;->length:I

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget p1, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    invoke-interface {p0, v0, p1, p2}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/xerces/xni/XNIException;

    invoke-direct {p1, p0}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->s:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xzn;->g:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->s:Lorg/apache/xerces/xni/XMLString;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/fzn;->a(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/fzn;->b(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p0

    throw p0
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

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/xzn;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lcom/sunia/HTREnginev2/xzn;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->k:Lorg/apache/xerces/util/SAXLocatorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xerces/util/SAXLocatorWrapper;->setLocator(Lorg/xml/sax/Locator;)V

    :try_start_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->g:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/fzn;->a(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/fzn;->b(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p0

    throw p0
.end method

.method public endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->t:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/xerces/xni/XNIException;

    invoke-direct {p1, p0}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->o:Lorg/apache/xerces/xni/QName;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/xzn;->p(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/xzn;->g:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object p2, p0, Lcom/sunia/HTREnginev2/xzn;->o:Lorg/apache/xerces/xni/QName;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->f:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {p0}, Lorg/apache/xerces/xni/NamespaceContext;->popContext()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/sunia/HTREnginev2/fzn;->a(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/sunia/HTREnginev2/fzn;->b(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->f:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {p0}, Lorg/apache/xerces/xni/NamespaceContext;->popContext()V

    throw p1
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->t:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->u:Lcom/sunia/HTREnginev2/xzn$b;

    invoke-virtual {v0, p2}, Lcom/sunia/HTREnginev2/xzn$b;->a(Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/xzn;->t:Lorg/xml/sax/ContentHandler;

    iget-object v0, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    iget-object v1, p1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {p2, v0, v1, p1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->u:Lcom/sunia/HTREnginev2/xzn$b;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xzn$b;->finishEndElement()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lorg/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->u:Lcom/sunia/HTREnginev2/xzn$b;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xzn$b;->finishEndElement()V

    throw p1

    :cond_1
    :goto_2
    return-void
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

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->t:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final fillXMLAttribute(Lorg/xml/sax/Attributes;I)V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->p:Lorg/apache/xerces/xni/QName;

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/xzn;->p(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xzn;->q:Lorg/apache/xerces/util/XMLAttributesImpl;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->p:Lorg/apache/xerces/xni/QName;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    :goto_0
    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, v0, p1}, Lorg/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final fillXMLAttributes(Lorg/xml/sax/Attributes;)V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->q:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/sunia/HTREnginev2/xzn;->fillXMLAttribute(Lorg/xml/sax/Attributes;I)V

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xzn;->q:Lorg/apache/xerces/util/XMLAttributesImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final fillXMLAttributes2(Lorg/xml/sax/ext/Attributes2;)V
    .locals 5

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->q:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/sunia/HTREnginev2/xzn;->fillXMLAttribute(Lorg/xml/sax/Attributes;I)V

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xzn;->q:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {p1, v1}, Lorg/xml/sax/ext/Attributes2;->isSpecified(I)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    invoke-interface {p1, v1}, Lorg/xml/sax/ext/Attributes2;->isDeclared(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xzn;->q:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v2, v1}, Lorg/apache/xerces/util/XMLAttributesImpl;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v2

    const-string v3, "ATTRIBUTE_DECLARED"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Lorg/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAttributePSVI(I)Lorg/apache/xerces/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->u:Lcom/sunia/HTREnginev2/xzn$b;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/xzn$b;->e(I)Lorg/apache/xerces/xs/AttributePSVI;

    move-result-object p0

    return-object p0
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->u:Lcom/sunia/HTREnginev2/xzn$b;

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/xzn$b;->f(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/AttributePSVI;

    move-result-object p0

    return-object p0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->t:Lorg/xml/sax/ContentHandler;

    return-object p0
.end method

.method public getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->g:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    return-object p0
.end method

.method public getElementPSVI()Lorg/apache/xerces/xs/ElementPSVI;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->u:Lcom/sunia/HTREnginev2/xzn$b;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xzn$b;->g()Lorg/apache/xerces/xs/ElementPSVI;

    move-result-object p0

    return-object p0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->b()Lorg/xml/sax/ErrorHandler;

    move-result-object p0

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const-string v0, "http://apache.org/xml/features/internal/strings-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/xzn;->n:Z

    return p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/tlo;->getFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "feature-not-recognized"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "feature-not-supported"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "FeatureNameNull"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "property-not-recognized"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "property-not-supported"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "ProperyNameNull"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getResourceResolver()Lorg/w3c/dom/ls/LSResourceResolver;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->c()Lorg/w3c/dom/ls/LSResourceResolver;

    move-result-object p0

    return-object p0
.end method

.method public getTypeInfoProvider()Ljavax/xml/validation/TypeInfoProvider;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->u:Lcom/sunia/HTREnginev2/xzn$b;

    return-object p0
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->t:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_0

    :try_start_0
    iget-object p2, p1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v0, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget p1, p1, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-interface {p0, p2, v0, p1}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/xerces/xni/XNIException;

    invoke-direct {p1, p0}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->s:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xzn;->g:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->s:Lorg/apache/xerces/xni/XMLString;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/fzn;->a(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/fzn;->b(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p0

    throw p0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->m:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final p(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/xzn;->n:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->h:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p2}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/sunia/HTREnginev2/xzn;->h:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p2, p3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/sunia/HTREnginev2/xzn;->h:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p3, p4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    sget-object p3, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    move-object p4, p3

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    move-object p2, v1

    :cond_4
    if-nez p3, :cond_5

    sget-object p3, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_5
    if-nez p4, :cond_6

    sget-object p4, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_6
    move-object v1, p2

    move-object p2, p3

    :goto_2
    sget-object p3, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/16 v0, 0x3a

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->h:Lorg/apache/xerces/util/SymbolTable;

    const/4 p3, 0x0

    invoke-virtual {p4, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_7
    invoke-virtual {p1, p3, p2, p4, v1}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->t:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->t:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/xerces/xni/XNIException;

    invoke-direct {p1, p0}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xzn;->t:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->k:Lorg/apache/xerces/util/SAXLocatorWrapper;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/util/SAXLocatorWrapper;->setLocator(Lorg/xml/sax/Locator;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->t:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_0
    return-void
.end method

.method public setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/tlo;->e(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const-string v0, "http://apache.org/xml/features/internal/strings-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/xzn;->n:Z

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {v0, p1, p2}, Lcom/sunia/HTREnginev2/tlo;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "feature-not-recognized"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "feature-not-supported"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string p2, "FeatureNameNull"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {v0, p1, p2}, Lcom/sunia/HTREnginev2/tlo;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "property-not-recognized"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "property-not-supported"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string p2, "ProperyNameNull"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/tlo;->h(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->t:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/tlo;->reset()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->g:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->i:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/validation/ValidationManager;->setEntityState(Lorg/apache/xerces/impl/validation/EntityState;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->u:Lcom/sunia/HTREnginev2/xzn$b;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/xzn$b;->finishStartElement()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/xzn;->l:Z

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->e:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xzn;->k:Lorg/apache/xerces/util/SAXLocatorWrapper;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->g:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xzn;->k:Lorg/apache/xerces/util/SAXLocatorWrapper;

    invoke-virtual {v1}, Lorg/apache/xerces/util/SAXLocatorWrapper;->getEncoding()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->f:Lorg/apache/xerces/xni/NamespaceContext;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/fzn;->a(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/fzn;->b(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p0

    throw p0
.end method

.method public startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->t:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/xerces/xni/XNIException;

    invoke-direct {p1, p0}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/xzn;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->f:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lorg/apache/xerces/xni/NamespaceContext;->pushContext()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/xzn;->l:Z

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->o:Lorg/apache/xerces/xni/QName;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/xzn;->p(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of p1, p4, Lorg/xml/sax/ext/Attributes2;

    if-eqz p1, :cond_1

    check-cast p4, Lorg/xml/sax/ext/Attributes2;

    invoke-virtual {p0, p4}, Lcom/sunia/HTREnginev2/xzn;->fillXMLAttributes2(Lorg/xml/sax/ext/Attributes2;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p4}, Lcom/sunia/HTREnginev2/xzn;->fillXMLAttributes(Lorg/xml/sax/Attributes;)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/xzn;->g:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object p2, p0, Lcom/sunia/HTREnginev2/xzn;->o:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->q:Lorg/apache/xerces/util/XMLAttributesImpl;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/fzn;->a(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/fzn;->b(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p0

    throw p0
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->t:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->u:Lcom/sunia/HTREnginev2/xzn$b;

    invoke-virtual {v0, p3, p2}, Lcom/sunia/HTREnginev2/xzn$b;->b(Lorg/apache/xerces/xni/Augmentations;Lorg/apache/xerces/xni/XMLAttributes;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/xzn;->t:Lorg/xml/sax/ContentHandler;

    iget-object p3, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    iget-object v0, p1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xzn;->r:Lorg/apache/xerces/util/AttributesProxy;

    invoke-interface {p2, p3, v0, p1, v1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->u:Lcom/sunia/HTREnginev2/xzn$b;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xzn$b;->finishStartElement()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lorg/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->u:Lcom/sunia/HTREnginev2/xzn$b;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xzn$b;->finishStartElement()V

    throw p1

    :cond_1
    :goto_2
    return-void
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

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/xzn;->n:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->h:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xzn;->h:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p2}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p2

    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/xzn;->l:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/xzn;->l:Z

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xzn;->f:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v2}, Lorg/apache/xerces/xni/NamespaceContext;->pushContext()V

    :cond_4
    iget-object v2, p0, Lcom/sunia/HTREnginev2/xzn;->f:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v2, v0, v1}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->t:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
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

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p2, p0, Lcom/sunia/HTREnginev2/xzn;->m:Ljava/util/HashMap;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xzn;->m:Ljava/util/HashMap;

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->m:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/security-manager"

    const-string v1, "http://xml.org/sax/properties/lexical-handler"

    instance-of v2, p2, Ljavax/xml/transform/sax/SAXResult;

    if-nez v2, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "SourceResultMismatch"

    invoke-static {p0, p2, p1}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    move-object v2, p2

    check-cast v2, Ljavax/xml/transform/sax/SAXResult;

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {v2}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p2

    invoke-virtual {v2}, Ljavax/xml/transform/sax/SAXResult;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v2

    if-nez v2, :cond_2

    instance-of v4, p2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v4, :cond_2

    move-object v2, p2

    check-cast v2, Lorg/xml/sax/ext/LexicalHandler;

    :cond_2
    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/xzn;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p2, :cond_4

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p2

    instance-of v4, p2, Lorg/apache/xerces/parsers/SAXParser;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {v4, v0}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_4

    :try_start_3
    invoke-interface {p2, v0, v4}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_4
    new-instance v0, Ljavax/xml/parsers/FactoryConfigurationError;

    invoke-direct {v0, p1}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    :cond_4
    :goto_2
    :try_start_5
    const-string v0, "http://xml.org/sax/features/string-interning"

    invoke-interface {p2, v0}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/xzn;->n:Z
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_2
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/xzn;->n:Z

    :goto_3
    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/tlo;->b()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/sunia/HTREnginev2/ehf;->a()Lcom/sunia/HTREnginev2/ehf;

    move-result-object v0

    :goto_4
    invoke-interface {p2, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->v:Lcom/sunia/HTREnginev2/xzn$a;

    invoke-interface {p2, v0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn;->v:Lcom/sunia/HTREnginev2/xzn$a;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/xzn;->j:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/tlo;->c()Lorg/w3c/dom/ls/LSResourceResolver;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sunia/HTREnginev2/xzn$a;->c(Lorg/w3c/dom/ls/LSResourceResolver;)V

    invoke-interface {p2, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p2, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-interface {p2, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_3
    :try_start_8
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {p0, v3}, Lcom/sunia/HTREnginev2/xzn;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :try_start_9
    invoke-interface {p2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p2, v3}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    invoke-interface {p2, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-interface {p2, v3}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->v:Lcom/sunia/HTREnginev2/xzn$a;

    invoke-virtual {p0, v3}, Lcom/sunia/HTREnginev2/xzn$a;->c(Lorg/w3c/dom/ls/LSResourceResolver;)V

    invoke-interface {p2, v1, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    return-void

    :catchall_1
    move-exception p1

    move-object p2, v3

    :goto_5
    invoke-virtual {p0, v3}, Lcom/sunia/HTREnginev2/xzn;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    if-eqz p2, :cond_6

    :try_start_a
    invoke-interface {p2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p2, v3}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    invoke-interface {p2, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-interface {p2, v3}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn;->v:Lcom/sunia/HTREnginev2/xzn$a;

    invoke-virtual {p0, v3}, Lcom/sunia/HTREnginev2/xzn$a;->c(Lorg/w3c/dom/ls/LSResourceResolver;)V

    invoke-interface {p2, v1, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    :cond_6
    throw p1
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
