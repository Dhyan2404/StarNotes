.class public final Lcom/sunia/HTREnginev2/zzn;
.super Ljavax/xml/validation/Validator;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/PSVIProvider;


# static fields
.field public static final m:Ljava/lang/String; = "http://javax.xml.transform"

.field public static final n:Ljava/lang/String; = "http://apache.org/xml/properties/dom/current-element-node"


# instance fields
.field public final e:Lcom/sunia/HTREnginev2/tlo;

.field public f:Lcom/sunia/HTREnginev2/xzn;

.field public g:Lcom/sunia/HTREnginev2/tqe;

.field public h:Lcom/sunia/HTREnginev2/ixm;

.field public i:Lcom/sunia/HTREnginev2/f0n;

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 1

    invoke-direct {p0}, Ljavax/xml/validation/Validator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/zzn;->j:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/zzn;->k:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/zzn;->l:Z

    new-instance v0, Lcom/sunia/HTREnginev2/tlo;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/tlo;-><init>(Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/zzn;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/zzn;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method


# virtual methods
.method public getAttributePSVI(I)Lorg/apache/xerces/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->f:Lcom/sunia/HTREnginev2/xzn;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/xzn;->getAttributePSVI(I)Lorg/apache/xerces/xs/AttributePSVI;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->f:Lcom/sunia/HTREnginev2/xzn;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/xzn;->getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/AttributePSVI;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getElementPSVI()Lorg/apache/xerces/xs/ElementPSVI;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->f:Lcom/sunia/HTREnginev2/xzn;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xzn;->getElementPSVI()Lorg/apache/xerces/xs/ElementPSVI;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

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

    if-eqz p1, :cond_3

    const-string v0, "http://javax.xml.transform"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

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

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.stream.StreamResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.sax.SAXResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.dom.DOMResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.stax.StAXResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

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

    if-nez p1, :cond_2

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "feature-not-recognized"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "feature-not-supported"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

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

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "http://apache.org/xml/properties/dom/current-element-node"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->g:Lcom/sunia/HTREnginev2/tqe;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tqe;->h()Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

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

    if-nez p1, :cond_2

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "property-not-recognized"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "property-not-supported"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "ProperyNameNull"

    invoke-static {p0, v1, v0}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getResourceResolver()Lorg/w3c/dom/ls/LSResourceResolver;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->c()Lorg/w3c/dom/ls/LSResourceResolver;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 3

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/zzn;->j:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/tlo;->d()V

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/zzn;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/zzn;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/zzn;->j:Z

    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/zzn;->k:Z

    :goto_0
    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/zzn;->l:Z

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/zzn;->k:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/zzn;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/zzn;->k:Z

    :cond_1
    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/zzn;->l:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/zzn;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/zzn;->k:Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

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

    if-eqz p1, :cond_3

    const-string v0, "http://javax.xml.transform"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

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

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.stream.StreamResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.sax.SAXResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.dom.DOMResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.stax.StAXResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

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
    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {v0, p1, p2}, Lcom/sunia/HTREnginev2/tlo;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/zzn;->j:Z

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "feature-not-recognized"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "feature-not-supported"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

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

    if-eqz p1, :cond_2

    const-string v0, "http://apache.org/xml/properties/dom/current-element-node"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {v0, p1, p2}, Lcom/sunia/HTREnginev2/tlo;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/zzn;->j:Z

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

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

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

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
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "property-read-only"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

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
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/zzn;->l:Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/tlo;->h(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method

.method public validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zzn;->f:Lcom/sunia/HTREnginev2/xzn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/xzn;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/xzn;-><init>(Lcom/sunia/HTREnginev2/tlo;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/zzn;->f:Lcom/sunia/HTREnginev2/xzn;

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->f:Lcom/sunia/HTREnginev2/xzn;

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/xzn;->validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zzn;->g:Lcom/sunia/HTREnginev2/tqe;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sunia/HTREnginev2/tqe;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/tqe;-><init>(Lcom/sunia/HTREnginev2/tlo;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/zzn;->g:Lcom/sunia/HTREnginev2/tqe;

    :cond_2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->g:Lcom/sunia/HTREnginev2/tqe;

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/tqe;->validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljavax/xml/transform/stax/StAXSource;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zzn;->h:Lcom/sunia/HTREnginev2/ixm;

    if-nez v0, :cond_4

    new-instance v0, Lcom/sunia/HTREnginev2/ixm;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/ixm;-><init>(Lcom/sunia/HTREnginev2/tlo;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/zzn;->h:Lcom/sunia/HTREnginev2/ixm;

    :cond_4
    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->h:Lcom/sunia/HTREnginev2/ixm;

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/ixm;->validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zzn;->i:Lcom/sunia/HTREnginev2/f0n;

    if-nez v0, :cond_6

    new-instance v0, Lcom/sunia/HTREnginev2/f0n;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/f0n;-><init>(Lcom/sunia/HTREnginev2/tlo;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/zzn;->i:Lcom/sunia/HTREnginev2/f0n;

    :cond_6
    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->i:Lcom/sunia/HTREnginev2/f0n;

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/f0n;->validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    :goto_0
    return-void

    :cond_7
    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string p2, "SourceParameterNull"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzn;->e:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "SourceNotAccepted"

    invoke-static {p0, v0, p1}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
