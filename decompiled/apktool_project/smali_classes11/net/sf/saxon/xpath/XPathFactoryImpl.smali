.class public Lnet/sf/saxon/xpath/XPathFactoryImpl;
.super Ljavax/xml/xpath/XPathFactory;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/Configuration$ApiProvider;


# static fields
.field public static final h:Ljava/lang/String; = "http://javax.xml.XMLConstants/feature/secure-processing"


# instance fields
.field public e:Lnet/sf/saxon/Configuration;

.field public f:Ljavax/xml/xpath/XPathVariableResolver;

.field public g:Ljavax/xml/xpath/XPathFunctionResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/xml/xpath/XPathFactory;-><init>()V

    .line 2
    invoke-static {}, Lnet/sf/saxon/Configuration;->newConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/xpath/XPathFactoryImpl;->e:Lnet/sf/saxon/Configuration;

    .line 3
    invoke-virtual {p0, v0}, Lnet/sf/saxon/xpath/XPathFactoryImpl;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    .line 4
    sget-object v0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFactoryImpl;->e:Lnet/sf/saxon/Configuration;

    invoke-interface {v0, p0}, Lnet/sf/saxon/Platform;->registerAllBuiltInObjectModels(Lnet/sf/saxon/Configuration;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljavax/xml/xpath/XPathFactory;-><init>()V

    .line 6
    iput-object p1, p0, Lnet/sf/saxon/xpath/XPathFactoryImpl;->e:Lnet/sf/saxon/Configuration;

    .line 7
    invoke-virtual {p1, p0}, Lnet/sf/saxon/Configuration;->setProcessor(Lnet/sf/saxon/Configuration$ApiProvider;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://saxon.sf.net/jaxp/xpath/om"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFactoryImpl;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getExternalObjectModel(Ljava/lang/String;)Lnet/sf/saxon/lib/ExternalObjectModel;

    move-result-object p0

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
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFactoryImpl;->e:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFactoryImpl;->e:Lnet/sf/saxon/Configuration;

    sget-object p1, Lnet/sf/saxon/lib/Feature;->ALLOW_EXTERNAL_FUNCTIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    const-string v0, "http://saxon.sf.net/feature/schema-validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFactoryImpl;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getSchemaValidationMode()I

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFactoryImpl;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getConfigurationProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3
    new-instance v0, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configuration property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a boolean (it is an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isObjectModelSupported(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "jaxp.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/xpath/XPathFactoryImpl;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JAXP: Calling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".isObjectModelSupported(\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JAXP: -- returning "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const-string v0, "true"

    goto :goto_1

    :cond_1
    const-string v0, "false (check all required libraries are on the class path"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method public newXPath()Ljavax/xml/xpath/XPath;
    .locals 2

    new-instance v0, Lnet/sf/saxon/xpath/XPathEvaluator;

    iget-object v1, p0, Lnet/sf/saxon/xpath/XPathFactoryImpl;->e:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, v1}, Lnet/sf/saxon/xpath/XPathEvaluator;-><init>(Lnet/sf/saxon/Configuration;)V

    iget-object v1, p0, Lnet/sf/saxon/xpath/XPathFactoryImpl;->g:Ljavax/xml/xpath/XPathFunctionResolver;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/xpath/XPathEvaluator;->setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFactoryImpl;->f:Ljavax/xml/xpath/XPathVariableResolver;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/xpath/XPathEvaluator;->setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V

    return-object v0
.end method

.method public setConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/xpath/XPathFactoryImpl;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/Configuration;->setProcessor(Lnet/sf/saxon/Configuration$ApiProvider;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFactoryImpl;->e:Lnet/sf/saxon/Configuration;

    sget-object p1, Lnet/sf/saxon/lib/Feature;->ALLOW_EXTERNAL_FUNCTIONS:Lnet/sf/saxon/lib/Feature;

    xor-int/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Lnet/sf/saxon/lib/Feature;Z)V

    goto :goto_1

    :cond_0
    const-string v0, "http://saxon.sf.net/feature/schema-validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFactoryImpl;->e:Lnet/sf/saxon/Configuration;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p0, v1}, Lnet/sf/saxon/Configuration;->setSchemaValidationMode(I)V

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFactoryImpl;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    new-instance p0, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown or non-boolean feature: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/xpath/XPathFactoryImpl;->g:Ljavax/xml/xpath/XPathFunctionResolver;

    return-void
.end method

.method public setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/xpath/XPathFactoryImpl;->f:Ljavax/xml/xpath/XPathVariableResolver;

    return-void
.end method
