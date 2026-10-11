.class final Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHelper;
.implements Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;
    }
.end annotation


# static fields
.field private static final CHUNK_MASK:I = 0x3ff

.field private static final CHUNK_SIZE:I = 0x400

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field final fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field final fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

.field private fCharBuffer:[C

.field private fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fCurrentElement:Lorg/w3c/dom/Node;

.field private fDOMNamespaceContext:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

.field private final fDOMResultAugmentor:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;

.field private final fDOMResultBuilder:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;

.field private fDOMValidatorHandler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;

.field final fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fEntities:Lorg/w3c/dom/NamedNodeMap;

.field private fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field private fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

.field private fRoot:Lorg/w3c/dom/Node;

.field private fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

.field private fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field final fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

.field private fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

.field private final fXMLLocator:Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMNamespaceContext:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMResultAugmentor:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMResultBuilder:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fEntities:Lorg/w3c/dom/NamedNodeMap;

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v0, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v0, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v0, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;)Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;)Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fRoot:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;Lcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Node;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fillQName(Lcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;)Lcom/sun/org/apache/xerces/internal/util/SymbolTable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-object p0
.end method

.method private beginNode(Lorg/w3c/dom/Node;)V
    .locals 5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/16 v3, 0xa

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;

    if-eqz p0, :cond_8

    check-cast p1, Lorg/w3c/dom/Comment;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;->comment(Lorg/w3c/dom/Comment;)V

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;

    if-eqz p0, :cond_8

    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;->processingInstruction(Lorg/w3c/dom/ProcessingInstruction;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;->setIgnoringCharacters(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;

    invoke-interface {v0, v4}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;->setIgnoringCharacters(Z)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;

    check-cast p1, Lorg/w3c/dom/CDATASection;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;->cdata(Lorg/w3c/dom/CDATASection;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;

    if-eqz v0, :cond_5

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;->setIgnoringCharacters(Z)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;

    invoke-interface {v0, v4}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;->setIgnoringCharacters(Z)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;

    check-cast p1, Lorg/w3c/dom/Text;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;->characters(Lorg/w3c/dom/Text;)V

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;

    if-eqz p0, :cond_8

    check-cast p1, Lorg/w3c/dom/DocumentType;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;->doctypeDecl(Lorg/w3c/dom/DocumentType;)V

    goto :goto_0

    :cond_7
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->pushContext()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fillQName(Lcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Node;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->processAttributes(Lorg/w3c/dom/NamedNodeMap;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    invoke-virtual {p1, v0, p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_8
    :goto_0
    return-void
.end method

.method private fillQName(Lcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Node;)V
    .locals 4

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    iput-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    iput-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iput-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    iput-object p0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    return-void
.end method

.method private finishNode(Lorg/w3c/dom/Node;)V
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fillQName(Lcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Node;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->popContext()V

    :cond_0
    return-void
.end method

.method private processAttributes(Lorg/w3c/dom/NamedNodeMap;)V
    .locals 7

    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->removeAllAttributes()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-interface {p1, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_0
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {p0, v4, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fillQName(Lcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Node;)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v6, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v3}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->addAttributeNS(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v2

    invoke-virtual {v4, v1, v2}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setSpecified(IZ)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    sget-object v5, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v4, v5, :cond_4

    iget-object v4, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    sget-object v5, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v5, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-virtual {v4, v2, v6}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    sget-object v4, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v5, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-virtual {v2, v4, v6}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private sendCharactersToValidator(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit16 v1, v0, 0x3ff

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v1, :cond_0

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    invoke-virtual {p1, v3, v1, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    invoke-virtual {v4, v5, v3, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->setValues([CII)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-virtual {v4, v5, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit16 v4, v1, 0x400

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    invoke-virtual {p1, v1, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    const/16 v6, 0x400

    invoke-virtual {v1, v5, v3, v6}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->setValues([CII)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-virtual {v1, v5, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    move v1, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setupDOMResultHandler(Ljavax/xml/transform/dom/DOMSource;Ljavax/xml/transform/dom/DOMResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMResultAugmentor:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMResultAugmentor:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_2

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMResultBuilder:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMResultBuilder:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    return-void
.end method

.method private setupEntityMap(Lorg/w3c/dom/Document;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fEntities:Lorg/w3c/dom/NamedNodeMap;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fEntities:Lorg/w3c/dom/NamedNodeMap;

    return-void
.end method

.method private validate(Lorg/w3c/dom/Node;)V
    .locals 2

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_5

    .line 32
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->beginNode(Lorg/w3c/dom/Node;)V

    .line 33
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_4

    .line 34
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->finishNode(Lorg/w3c/dom/Node;)V

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_0

    .line 36
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ne p1, v0, :cond_0

    :cond_2
    if-eqz v0, :cond_3

    .line 37
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->finishNode(Lorg/w3c/dom/Node;)V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public getCurrentElement()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fEntities:Lorg/w3c/dom/NamedNodeMap;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Entity;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Ljavax/xml/transform/dom/DOMResult;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

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

    invoke-static {v0, p2, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    check-cast p1, Ljavax/xml/transform/dom/DOMSource;

    .line 4
    check-cast p2, Ljavax/xml/transform/dom/DOMResult;

    .line 5
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fRoot:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_4

    .line 7
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->reset()V

    .line 8
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->setEntityState(Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;)V

    .line 9
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMNamespaceContext:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->reset()V

    .line 10
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->setLiteralSystemId(Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->setExpandedSystemId(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setDocumentLocator(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V

    const/4 v1, 0x0

    .line 14
    :try_start_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    move-object v2, v0

    check-cast v2, Lorg/w3c/dom/Document;

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    :goto_1
    invoke-direct {p0, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->setupEntityMap(Lorg/w3c/dom/Document;)V

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->setupDOMResultHandler(Ljavax/xml/transform/dom/DOMSource;Ljavax/xml/transform/dom/DOMResult;)V

    .line 16
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMNamespaceContext:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

    invoke-virtual {p1, p2, v1, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    .line 17
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->validate(Lorg/w3c/dom/Node;)V

    .line 18
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fRoot:Lorg/w3c/dom/Node;

    .line 20
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lorg/w3c/dom/Node;

    .line 21
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fEntities:Lorg/w3c/dom/NamedNodeMap;

    .line 22
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;

    if-eqz p0, :cond_4

    .line 23
    invoke-interface {p0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;->setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 24
    :try_start_1
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 25
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :goto_2
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fRoot:Lorg/w3c/dom/Node;

    .line 27
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lorg/w3c/dom/Node;

    .line 28
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fEntities:Lorg/w3c/dom/NamedNodeMap;

    .line 29
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;

    if-eqz p0, :cond_3

    .line 30
    invoke-interface {p0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;->setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V

    .line 31
    :cond_3
    throw p1

    :cond_4
    :goto_3
    return-void
.end method
