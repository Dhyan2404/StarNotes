.class final Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;
.super Ljavax/xml/validation/ValidatorHandler;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/DTDHandler;
.implements Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;
.implements Lcom/sun/org/apache/xerces/internal/xs/PSVIProvider;
.implements Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHelper;
.implements Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;,
        Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;
    }
.end annotation


# static fields
.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field private static final NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field private final fAttrAdapter:Lcom/sun/org/apache/xerces/internal/util/AttributesProxy;

.field private final fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private final fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

.field private fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fContentHandler:Lorg/xml/sax/ContentHandler;

.field private final fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field private fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

.field private fNeedPushNSContext:Z

.field private final fResolutionForwarder:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

.field private final fSAXLocatorWrapper:Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;

.field private fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

.field private fStringsInternalized:Z

.field private fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field private final fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

.field private final fTypeInfoProvider:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

.field private fUnparsedEntities:Ljava/util/HashMap;

.field private fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljavax/xml/validation/ValidatorHandler;-><init>()V

    .line 7
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSAXLocatorWrapper:Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z

    .line 11
    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    .line 12
    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    .line 13
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    .line 14
    new-instance v2, Lcom/sun/org/apache/xerces/internal/util/AttributesProxy;

    invoke-direct {v2, v1}, Lcom/sun/org/apache/xerces/internal/util/AttributesProxy;-><init>(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fAttrAdapter:Lcom/sun/org/apache/xerces/internal/util/AttributesProxy;

    .line 15
    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    .line 16
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    .line 17
    new-instance v1, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$1;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    .line 18
    new-instance v1, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;-><init>(Lorg/w3c/dom/ls/LSResourceResolver;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fResolutionForwarder:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

    .line 19
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    .line 20
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    .line 21
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v0, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    .line 22
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v0, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    .line 23
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 24
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v0, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/XSGrammarPoolContainer;)V

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    .line 2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->setFeature(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method

.method private fillQName(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p3, p4}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    sget-object p3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

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

    sget-object p3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_5
    if-nez p4, :cond_6

    sget-object p4, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_6
    move-object v1, p2

    move-object p2, p3

    :goto_2
    sget-object p3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/16 v0, 0x3a

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const/4 p3, 0x0

    invoke-virtual {p4, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_7
    invoke-virtual {p1, p3, p2, p4, v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fillXMLAttribute(Lorg/xml/sax/Attributes;I)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fillQName(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    :goto_0
    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->addAttributeNS(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fillXMLAttributes(Lorg/xml/sax/Attributes;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->removeAllAttributes()V

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fillXMLAttribute(Lorg/xml/sax/Attributes;I)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setSpecified(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fillXMLAttributes2(Lorg/xml/sax/ext/Attributes2;)V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->removeAllAttributes()V

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fillXMLAttribute(Lorg/xml/sax/Attributes;I)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    invoke-interface {p1, v1}, Lorg/xml/sax/ext/Attributes2;->isSpecified(I)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setSpecified(IZ)V

    invoke-interface {p1, v1}, Lorg/xml/sax/ext/Attributes2;->isDeclared(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object v2

    const-string v3, "ATTRIBUTE_DECLARED"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_1

    .line 2
    iget p2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget p1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    invoke-interface {p0, v0, p1, p2}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

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

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->setValues([CII)V

    .line 6
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p0

    throw p0
.end method

.method public comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
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

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSAXLocatorWrapper:Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;->setLocator(Lorg/xml/sax/Locator;)V

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p0

    throw p0
.end method

.method public endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->beginEndElement(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    .line 3
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {p2, v0, v1, p1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->finishEndElement()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    :try_start_1
    new-instance p2, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p2, p1}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->finishEndElement()V

    .line 7
    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fillQName(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->popContext()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    :try_start_1
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->popContext()V

    .line 14
    throw p1
.end method

.method public endGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
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

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAttributePSVI(I)Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributePSVI(I)Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    move-result-object p0

    return-object p0
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    move-result-object p0

    return-object p0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    return-object p0
.end method

.method public getDocumentSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    return-object p0
.end method

.method public getElementPSVI()Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getElementPSVI()Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;

    move-result-object p0

    return-object p0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "feature-not-recognized"

    goto :goto_0

    :cond_0
    const-string p0, "feature-not-supported"

    :goto_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "property-not-recognized"

    goto :goto_0

    :cond_0
    const-string p0, "property-not-supported"

    :goto_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResourceResolver()Lorg/w3c/dom/ls/LSResourceResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getResourceResolver()Lorg/w3c/dom/ls/LSResourceResolver;

    move-result-object p0

    return-object p0
.end method

.method public getTypeInfoProvider()Ljavax/xml/validation/TypeInfoProvider;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    return-object p0
.end method

.method public ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget p1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    invoke-interface {p0, p2, v0, p1}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

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

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->setValues([CII)V

    .line 5
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

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

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

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

.method public processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSAXLocatorWrapper:Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;->setLocator(Lorg/xml/sax/Locator;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_0
    return-void
.end method

.method public setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "feature-not-recognized"

    goto :goto_0

    :cond_0
    const-string p0, "feature-not-supported"

    :goto_0
    new-instance p2, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "property-not-recognized"

    goto :goto_0

    :cond_0
    const-string p0, "property-not-supported"

    :goto_0
    new-instance p2, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
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

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->reset()V

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->setEntityState(Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;)V

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->finishStartElement()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    .line 9
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSAXLocatorWrapper:Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setDocumentLocator(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSAXLocatorWrapper:Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;->getEncoding()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13
    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 14
    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p0

    throw p0
.end method

.method public startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v0, p3, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->beginStartElement(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    .line 3
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fAttrAdapter:Lcom/sun/org/apache/xerces/internal/util/AttributesProxy;

    invoke-interface {p2, p3, v0, p1, v1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->finishStartElement()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    :try_start_1
    new-instance p2, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p2, p1}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->finishStartElement()V

    .line 7
    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 8
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->pushContext()V

    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    .line 11
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fillQName(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    instance-of p1, p4, Lorg/xml/sax/ext/Attributes2;

    if-eqz p1, :cond_1

    .line 13
    check-cast p4, Lorg/xml/sax/ext/Attributes2;

    invoke-direct {p0, p4}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fillXMLAttributes2(Lorg/xml/sax/ext/Attributes2;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-direct {p0, p4}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fillXMLAttributes(Lorg/xml/sax/Attributes;)V

    .line 15
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 16
    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 17
    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p0

    throw p0
.end method

.method public startGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
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

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p2

    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->pushContext()V

    :cond_4
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v2, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
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

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/security-manager"

    instance-of v1, p2, Ljavax/xml/transform/sax/SAXResult;

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

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

    :cond_1
    :goto_0
    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    move-object v1, p2

    check-cast v1, Ljavax/xml/transform/sax/SAXResult;

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :cond_2
    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    instance-of v2, v1, Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/SecurityManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v1, v0, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    new-instance v0, Ljavax/xml/parsers/FactoryConfigurationError;

    invoke-direct {v0, p1}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :cond_3
    :goto_1
    :try_start_4
    const-string v0, "http://xml.org/sax/features/string-interning"

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_2
    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z

    :goto_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DraconianErrorHandler;->getInstance()Lcom/sun/org/apache/xerces/internal/jaxp/validation/DraconianErrorHandler;

    move-result-object v0

    :goto_3
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fResolutionForwarder:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fResolutionForwarder:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getResourceResolver()Lorg/w3c/dom/ls/LSResourceResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->setEntityResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    throw p1
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method
