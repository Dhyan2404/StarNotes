.class public final Lcom/sunia/HTREnginev2/sqi;
.super Lcom/sunia/HTREnginev2/qan;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/sqi$a;,
        Lcom/sunia/HTREnginev2/sqi$c;,
        Lcom/sunia/HTREnginev2/sqi$b;
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final r:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field public static final s:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field public static final t:Ljavax/xml/validation/TypeInfoProvider;


# instance fields
.field public final h:Ljavax/xml/validation/ValidatorHandler;

.field public final i:Lcom/sunia/HTREnginev2/sqi$c;

.field public final j:Lcom/sunia/HTREnginev2/sqi$b;

.field public final k:Ljavax/xml/validation/TypeInfoProvider;

.field public l:Lorg/apache/xerces/xni/Augmentations;

.field public m:Lorg/apache/xerces/xni/XMLAttributes;

.field public n:Lorg/apache/xerces/util/SymbolTable;

.field public o:Lorg/apache/xerces/impl/XMLErrorReporter;

.field public p:Lorg/apache/xerces/xni/parser/XMLEntityResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/pqi;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/pqi;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/sqi;->t:Ljavax/xml/validation/TypeInfoProvider;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/validation/ValidatorHandler;)V
    .locals 3

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/qan;-><init>()V

    new-instance v0, Lcom/sunia/HTREnginev2/sqi$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/sqi$c;-><init>(Lcom/sunia/HTREnginev2/pqi;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/sqi;->i:Lcom/sunia/HTREnginev2/sqi$c;

    new-instance v2, Lcom/sunia/HTREnginev2/sqi$b;

    invoke-direct {v2, p0, v1}, Lcom/sunia/HTREnginev2/sqi$b;-><init>(Lcom/sunia/HTREnginev2/sqi;Lcom/sunia/HTREnginev2/pqi;)V

    iput-object v2, p0, Lcom/sunia/HTREnginev2/sqi;->j:Lcom/sunia/HTREnginev2/sqi$b;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sqi;->h:Ljavax/xml/validation/ValidatorHandler;

    invoke-virtual {p1}, Ljavax/xml/validation/ValidatorHandler;->getTypeInfoProvider()Ljavax/xml/validation/TypeInfoProvider;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sunia/HTREnginev2/sqi;->t:Ljavax/xml/validation/TypeInfoProvider;

    :cond_0
    iput-object v1, p0, Lcom/sunia/HTREnginev2/sqi;->k:Ljavax/xml/validation/TypeInfoProvider;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/sqi$c;->p(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {p1, v2}, Ljavax/xml/validation/ValidatorHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/qan;->p(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    new-instance v0, Lcom/sunia/HTREnginev2/qqi;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/qqi;-><init>(Lcom/sunia/HTREnginev2/sqi;)V

    invoke-virtual {p1, v0}, Ljavax/xml/validation/ValidatorHandler;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    new-instance v0, Lcom/sunia/HTREnginev2/rqi;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/rqi;-><init>(Lcom/sunia/HTREnginev2/sqi;)V

    invoke-virtual {p1, v0}, Ljavax/xml/validation/ValidatorHandler;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method

.method public static synthetic q(Lcom/sunia/HTREnginev2/sqi;)Lorg/apache/xerces/impl/XMLErrorReporter;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sqi;->o:Lorg/apache/xerces/impl/XMLErrorReporter;

    return-object p0
.end method

.method public static synthetic r(Lcom/sunia/HTREnginev2/sqi;)Lorg/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sqi;->p:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    return-object p0
.end method

.method public static synthetic s(Lcom/sunia/HTREnginev2/sqi;Lorg/xml/sax/Attributes;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/sqi;->y(Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public static synthetic t(Lcom/sunia/HTREnginev2/sqi;)Lorg/apache/xerces/xni/XMLAttributes;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sqi;->m:Lorg/apache/xerces/xni/XMLAttributes;

    return-object p0
.end method

.method public static synthetic u(Lcom/sunia/HTREnginev2/sqi;)Lorg/apache/xerces/xni/Augmentations;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sqi;->l:Lorg/apache/xerces/xni/Augmentations;

    return-object p0
.end method

.method public static synthetic v(Lcom/sunia/HTREnginev2/sqi;Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sqi;->l:Lorg/apache/xerces/xni/Augmentations;

    return-object p1
.end method

.method public static synthetic w(Lcom/sunia/HTREnginev2/sqi;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/sqi;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/sqi;->l:Lorg/apache/xerces/xni/Augmentations;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sqi;->i:Lcom/sunia/HTREnginev2/sqi$c;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/sqi$c;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/sqi;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lcom/sunia/HTREnginev2/sqi;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/sqi;->l:Lorg/apache/xerces/xni/Augmentations;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sqi;->i:Lcom/sunia/HTREnginev2/sqi$c;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/sqi$c;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

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

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/sqi;->l:Lorg/apache/xerces/xni/Augmentations;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sqi;->i:Lcom/sunia/HTREnginev2/sqi$c;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/sqi$c;->ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/sqi;->n:Lorg/apache/xerces/util/SymbolTable;

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/sqi;->o:Lorg/apache/xerces/impl/XMLErrorReporter;

    :try_start_0
    const-string v0, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sqi;->p:Lorg/apache/xerces/xni/parser/XMLEntityResolver;
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sqi;->p:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    :goto_0
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/sqi;->m:Lorg/apache/xerces/xni/XMLAttributes;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/sqi;->l:Lorg/apache/xerces/xni/Augmentations;

    iget-object p3, p0, Lcom/sunia/HTREnginev2/sqi;->i:Lcom/sunia/HTREnginev2/sqi$c;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/sunia/HTREnginev2/sqi$c;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/sqi;->m:Lorg/apache/xerces/xni/XMLAttributes;

    return-void
.end method

.method public final x(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sqi;->n:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final y(Lorg/xml/sax/Attributes;)V
    .locals 10

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sunia/HTREnginev2/sqi;->m:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {v4, v3}, Lorg/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sunia/HTREnginev2/sqi;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v6, p0, Lcom/sunia/HTREnginev2/sqi;->m:Lorg/apache/xerces/xni/XMLAttributes;

    new-instance v7, Lorg/apache/xerces/xni/QName;

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sunia/HTREnginev2/sqi;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v3}, Lcom/sunia/HTREnginev2/sqi;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sunia/HTREnginev2/sqi;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v4, v8, v3, v9}, Lorg/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v7, v3, v5}, Lorg/apache/xerces/xni/XMLAttributes;->addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/sunia/HTREnginev2/sqi;->m:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sunia/HTREnginev2/sqi;->m:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
