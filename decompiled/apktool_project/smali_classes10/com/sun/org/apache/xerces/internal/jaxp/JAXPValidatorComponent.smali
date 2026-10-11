.class final Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;
.super Lcom/sun/org/apache/xerces/internal/jaxp/TeeXMLDocumentFilterImpl;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$DraconianErrorHandler;,
        Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$XNI2SAX;,
        Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;
    }
.end annotation


# static fields
.field private static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final noInfoProvider:Ljavax/xml/validation/TypeInfoProvider;


# instance fields
.field private fCurrentAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

.field private fCurrentAug:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

.field private fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

.field private fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field private fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field private final sax2xni:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;

.field private final typeInfoProvider:Ljavax/xml/validation/TypeInfoProvider;

.field private final validator:Ljavax/xml/validation/ValidatorHandler;

.field private final xni2sax:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$XNI2SAX;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$3;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$3;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->noInfoProvider:Ljavax/xml/validation/TypeInfoProvider;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/validation/ValidatorHandler;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/TeeXMLDocumentFilterImpl;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$XNI2SAX;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$XNI2SAX;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$1;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->xni2sax:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$XNI2SAX;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;

    invoke-direct {v2, p0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$1;)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->sax2xni:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->validator:Ljavax/xml/validation/ValidatorHandler;

    invoke-virtual {p1}, Ljavax/xml/validation/ValidatorHandler;->getTypeInfoProvider()Ljavax/xml/validation/TypeInfoProvider;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->noInfoProvider:Ljavax/xml/validation/TypeInfoProvider;

    :cond_0
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->typeInfoProvider:Ljavax/xml/validation/TypeInfoProvider;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$XNI2SAX;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {p1, v2}, Ljavax/xml/validation/ValidatorHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/TeeXMLDocumentFilterImpl;->setSide(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$1;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$1;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;)V

    invoke-virtual {p1, v0}, Ljavax/xml/validation/ValidatorHandler;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$2;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$2;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;)V

    invoke-virtual {p1, v0}, Ljavax/xml/validation/ValidatorHandler;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;)Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;Lorg/xml/sax/Attributes;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->updateAttributes(Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;)Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fCurrentAug:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fCurrentAug:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private symbolize(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateAttributes(Lorg/xml/sax/Attributes;)V
    .locals 10

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {v4, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    new-instance v7, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v4, v8, v3, v9}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v7, v3, v5}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->addAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {v3, v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {v3, v4, v5}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fCurrentAug:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->xni2sax:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$XNI2SAX;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$XNI2SAX;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fCurrentAug:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->xni2sax:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$XNI2SAX;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$XNI2SAX;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 2

    const-string p0, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v1, "http://apache.org/xml/properties/internal/entity-manager"

    filled-new-array {v1, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fCurrentAug:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->xni2sax:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$XNI2SAX;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$XNI2SAX;->ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    :try_start_0
    const-string v0, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    :goto_0
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fCurrentAug:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->xni2sax:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$XNI2SAX;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$XNI2SAX;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    return-void
.end method
