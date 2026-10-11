.class public final Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;
.super Ljavax/xml/validation/SchemaFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;,
        Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$a;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String; = "http://javax.xml.transform"

.field public static final j:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field public static final k:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field public static final l:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field public static final m:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"


# instance fields
.field public final a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

.field public b:Lorg/xml/sax/ErrorHandler;

.field public c:Lorg/w3c/dom/ls/LSResourceResolver;

.field public final d:Lorg/apache/xerces/util/DOMEntityResolverWrapper;

.field public final e:Lorg/apache/xerces/util/ErrorHandlerWrapper;

.field public f:Lorg/apache/xerces/util/SecurityManager;

.field public final g:Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljavax/xml/validation/SchemaFactory;-><init>()V

    new-instance v0, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    new-instance v1, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    invoke-static {}, Lcom/sunia/HTREnginev2/ehf;->a()Lcom/sunia/HTREnginev2/ehf;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    iput-object v1, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->e:Lorg/apache/xerces/util/ErrorHandlerWrapper;

    new-instance v2, Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-direct {v2}, Lorg/apache/xerces/util/DOMEntityResolverWrapper;-><init>()V

    iput-object v2, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->d:Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    new-instance v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;

    invoke-direct {v3}, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;-><init>()V

    iput-object v3, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->g:Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;

    const-string v4, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V

    const-string v4, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v0, v4, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setErrorHandler(Lorg/apache/xerces/xni/parser/XMLErrorHandler;)V

    iput-boolean v5, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/sunia/HTREnginev2/k5;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->f:Lorg/apache/xerces/util/SecurityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v2, v0}, Lcom/sunia/HTREnginev2/k5;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v0

    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getFeature(Ljava/lang/String;)Z

    move-result v2

    aget-object v3, v0, v1

    invoke-virtual {p1, v3, v2}, Lcom/sunia/HTREnginev2/k5;->a(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->b:Lorg/xml/sax/ErrorHandler;

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

    if-eqz p1, :cond_6

    const-string v0, "http://javax.xml.transform"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.stax.StAXSource/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->f:Lorg/apache/xerces/util/SecurityManager;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_3
    const-string v0, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->h:Z

    return p0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getFeature(Ljava/lang/String;)Z

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

    if-nez p1, :cond_5

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "feature-not-recognized"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "feature-not-supported"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

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

    if-eqz p1, :cond_3

    const-string v0, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->f:Lorg/apache/xerces/util/SecurityManager;

    return-object p0

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "property-not-supported"

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

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

    if-nez p1, :cond_1

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "property-not-recognized"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

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

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->c:Lorg/w3c/dom/ls/LSResourceResolver;

    return-object p0
.end method

.method public isSchemaLanguageSupported(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lorg/apache/xerces/impl/Constants;->W3C_XML_SCHEMA10_NS_URI:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "SchemaLanguageLengthZero"

    invoke-static {p0, v1, v0}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "SchemaLanguageNull"

    invoke-static {p0, v1, v0}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newSchema()Ljavax/xml/validation/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/t5o;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/t5o;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a(Lcom/sunia/HTREnginev2/k5;)V

    return-object v0
.end method

.method public newSchema(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)Ljavax/xml/validation/Schema;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/slo;

    new-instance v1, Lcom/sunia/HTREnginev2/cdl;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/cdl;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/slo;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/slo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sunia/HTREnginev2/slo;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Z)V

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a(Lcom/sunia/HTREnginev2/k5;)V

    return-object v0
.end method

.method public newSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$a;

    invoke-direct {v0}, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$a;-><init>()V

    iget-object v1, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->g:Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;->b(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    array-length v1, p1

    new-array v1, v1, [Lorg/apache/xerces/xni/parser/XMLInputSource;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    const/4 v5, 0x0

    if-lt v3, v4, :cond_4

    :try_start_0
    iget-object p1, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p1, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar([Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->g:Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;

    invoke-virtual {p1, v5}, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$b;->b(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    invoke-virtual {v0}, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$a;->a()I

    move-result p1

    iget-boolean v1, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->h:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    new-instance p1, Lcom/sunia/HTREnginev2/slo;

    new-instance v1, Lcom/sunia/HTREnginev2/cdl;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/cdl;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    invoke-direct {p1, v1}, Lcom/sunia/HTREnginev2/slo;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    goto :goto_1

    :cond_0
    if-ne p1, v1, :cond_1

    const-string p1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v0, p1}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/zsm;

    aget-object p1, p1, v2

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/zsm;-><init>(Lorg/apache/xerces/xni/grammars/Grammar;)V

    move-object p1, v0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/sunia/HTREnginev2/epf;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/epf;-><init>()V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/sunia/HTREnginev2/slo;

    new-instance v1, Lcom/sunia/HTREnginev2/cdl;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/cdl;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    invoke-direct {p1, v1, v2}, Lcom/sunia/HTREnginev2/slo;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Z)V

    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a(Lcom/sunia/HTREnginev2/k5;)V

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->b:Lorg/xml/sax/ErrorHandler;

    if-eqz p0, :cond_3

    invoke-interface {p0, v0}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    :cond_3
    throw v0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/fzn;->a(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0

    :cond_4
    aget-object v4, p1, v3

    instance-of v6, v4, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v6, :cond_5

    check-cast v4, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v4}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v4}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v4

    new-instance v9, Lorg/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v9, v6, v7, v5}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    invoke-virtual {v9, v4}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    aput-object v9, v1, v3

    goto :goto_2

    :cond_5
    instance-of v6, v4, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v6, :cond_7

    check-cast v4, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {v4}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v6

    if-eqz v6, :cond_6

    new-instance v5, Lorg/apache/xerces/util/SAXInputSource;

    invoke-virtual {v4}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    invoke-direct {v5, v4, v6}, Lorg/apache/xerces/util/SAXInputSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    aput-object v5, v1, v3

    goto :goto_2

    :cond_6
    new-instance p1, Lorg/xml/sax/SAXException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "SAXSourceNullInputSource"

    invoke-static {p0, v0, v5}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    instance-of v6, v4, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v6, :cond_8

    check-cast v4, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v4}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {v4}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/apache/xerces/util/DOMInputSource;

    invoke-direct {v6, v5, v4}, Lorg/apache/xerces/util/DOMInputSource;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    aput-object v6, v1, v3

    goto :goto_2

    :cond_8
    instance-of v6, v4, Ljavax/xml/transform/stax/StAXSource;

    if-eqz v6, :cond_a

    check-cast v4, Ljavax/xml/transform/stax/StAXSource;

    invoke-virtual {v4}, Ljavax/xml/transform/stax/StAXSource;->getXMLEventReader()Ljavax/xml/stream/XMLEventReader;

    move-result-object v5

    if-eqz v5, :cond_9

    new-instance v4, Lorg/apache/xerces/util/StAXInputSource;

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/StAXInputSource;-><init>(Ljavax/xml/stream/XMLEventReader;)V

    aput-object v4, v1, v3

    goto :goto_2

    :cond_9
    new-instance v5, Lorg/apache/xerces/util/StAXInputSource;

    invoke-virtual {v4}, Ljavax/xml/transform/stax/StAXSource;->getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/apache/xerces/util/StAXInputSource;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    aput-object v5, v1, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v4, :cond_b

    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "SchemaSourceArrayMemberNull"

    invoke-static {p0, v0, v5}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SchemaFactorySourceUnrecognized"

    invoke-static {p0, v1, v0}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->b:Lorg/xml/sax/ErrorHandler;

    iget-object v0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->e:Lorg/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sunia/HTREnginev2/ehf;->a()Lcom/sunia/HTREnginev2/ehf;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    iget-object p1, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->e:Lorg/apache/xerces/util/ErrorHandlerWrapper;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setErrorHandler(Lorg/apache/xerces/xni/parser/XMLErrorHandler;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const-string v1, "http://javax.xml.transform"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://javax.xml.transform.stax.StAXSource/feature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "feature-read-only"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    new-instance v0, Lorg/apache/xerces/util/SecurityManager;

    invoke-direct {v0}, Lorg/apache/xerces/util/SecurityManager;-><init>()V

    :cond_2
    iput-object v0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->f:Lorg/apache/xerces/util/SecurityManager;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string p1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string v0, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean p2, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->h:Z

    return-void

    :cond_4
    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "feature-not-recognized"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "feature-not-supported"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string p2, "FeatureNameNull"

    invoke-static {p0, p2, v0}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-string v0, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p2, Lorg/apache/xerces/util/SecurityManager;

    iput-object p2, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->f:Lorg/apache/xerces/util/SecurityManager;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0, v0, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "property-not-supported"

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
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

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "property-not-recognized"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v1, p2}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string p2, "ProperyNameNull"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->c:Lorg/w3c/dom/ls/LSResourceResolver;

    iget-object v0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->d:Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/util/DOMEntityResolverWrapper;->setEntityResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    iget-object p1, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->a:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->d:Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V

    return-void
.end method
