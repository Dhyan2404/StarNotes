.class public Lcom/sun/org/apache/xpath/internal/functions/FuncSystemProperty;
.super Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;
.source "SourceFile"


# static fields
.field static final XSLT_PROPERTIES:Ljava/lang/String; = "com/sun/org/apache/xalan/internal/res/XSLTInfo.properties"

.field static final serialVersionUID:J = 0x3346d5380b84c043L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;->m_arg0:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    const-string v3, "com/sun/org/apache/xalan/internal/res/XSLTInfo.properties"

    invoke-virtual {p0, v3, v2}, Lcom/sun/org/apache/xpath/internal/functions/FuncSystemProperty;->loadPropertyFile(Ljava/lang/String;Ljava/util/Properties;)V

    const-string v3, "WG_SECURITY_EXCEPTION"

    const-string v4, ""

    if-lez v1, :cond_5

    if-ltz v1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-gez v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v5, "http://www.w3.org/XSL/Transform"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "WG_DONT_DO_ANYTHING_WITH_NS"

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p1, v2, v4}, Lcom/sun/org/apache/xpath/internal/Expression;->warn(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->warn(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    return-object p0

    :cond_3
    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v1, "WG_PROPERTY_NOT_SUPPORTED"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->warn(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    return-object p0

    :cond_4
    move-object v4, v1

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :cond_6
    :goto_2
    const-string p0, "version"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_7

    :try_start_2
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    const-string p1, "1.0"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_7
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    return-object p0

    :catch_2
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->warn(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    return-object p0
.end method

.method public loadPropertyFile(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/sun/org/apache/xpath/internal/functions/SecuritySupport;->getInstance()Lcom/sun/org/apache/xpath/internal/functions/SecuritySupport;

    move-result-object p0

    invoke-static {}, Lcom/sun/org/apache/xpath/internal/functions/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/functions/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
