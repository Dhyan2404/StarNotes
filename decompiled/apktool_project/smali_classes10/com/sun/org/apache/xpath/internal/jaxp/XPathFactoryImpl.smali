.class public Lcom/sun/org/apache/xpath/internal/jaxp/XPathFactoryImpl;
.super Ljavax/xml/xpath/XPathFactory;
.source "SourceFile"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "XPathFactoryImpl"


# instance fields
.field private featureSecureProcessing:Z

.field private xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/xml/xpath/XPathFactory;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathFactoryImpl;->xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathFactoryImpl;->xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    return-void
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    const-string v0, "XPathFactoryImpl"

    if-eqz p1, :cond_1

    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    return p0

    :cond_0
    const-string p0, "ER_GETTING_UNKNOWN_FEATURE"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "ER_GETTING_NULL_FEATURE"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isObjectModelSupported(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "http://java.sun.com/jaxp/xpath/dom"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_OBJECT_MODEL_EMPTY"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_OBJECT_MODEL_NULL"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newXPath()Ljavax/xml/xpath/XPath;
    .locals 3

    new-instance v0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathFactoryImpl;->xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathFactoryImpl;->xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    invoke-direct {v0, v1, v2, p0}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;-><init>(Ljavax/xml/xpath/XPathVariableResolver;Ljavax/xml/xpath/XPathFunctionResolver;Z)V

    return-object v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    const-string v0, "XPathFactoryImpl"

    if-eqz p1, :cond_1

    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean p2, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Boolean;

    invoke-direct {p0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_FEATURE_UNKNOWN"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/Boolean;

    invoke-direct {p0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_FEATURE_NAME_NULL"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathFactoryImpl;->xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    return-void

    :cond_0
    const-string p0, "XPathFactoryImpl"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_NULL_XPATH_FUNCTION_RESOLVER"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathFactoryImpl;->xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    return-void

    :cond_0
    const-string p0, "XPathFactoryImpl"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_NULL_XPATH_VARIABLE_RESOLVER"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
