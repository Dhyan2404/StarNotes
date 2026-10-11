.class public Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;
.super Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;
.source "SourceFile"


# static fields
.field private static BSF_MANAGER:Ljava/lang/String; = null

.field private static final DEFAULT_BSF_MANAGER:Ljava/lang/String; = "org.apache.bsf.BSFManager"

.field private static final ZEROINT:Ljava/lang/Integer;

.field private static final propName:Ljava/lang/String; = "com.sun.org.apache.xalan.internal.extensions.bsf.BSFManager"


# instance fields
.field private m_elements:Ljava/util/Hashtable;

.field private m_engine:Ljava/lang/Object;

.field private m_engineCall:Ljava/lang/reflect/Method;

.field private m_functions:Ljava/util/Hashtable;

.field private m_scriptSrc:Ljava/lang/String;

.field private m_scriptSrcURL:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->ZEROINT:Ljava/lang/Integer;

    const-string v0, "com.sun.org.apache.xalan.internal.extensions.bsf.BSFManager"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/sun/org/apache/xalan/internal/extensions/ObjectFactory;->lookUpFactoryClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->BSF_MANAGER:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "org.apache.bsf.BSFManager"

    sput-object v0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->BSF_MANAGER:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/StringVector;Lcom/sun/org/apache/xml/internal/utils/StringVector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    const-string v1, "ER_COULD_NOT_FIND_EXTERN_SCRIPT"

    invoke-direct {p0, p1, p4}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_functions:Ljava/util/Hashtable;

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_elements:Ljava/util/Hashtable;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_engineCall:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->size()I

    move-result v4

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_0

    invoke-virtual {p2, v5}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_elements:Ljava/util/Hashtable;

    invoke-virtual {v7, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->size()I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_1

    invoke-virtual {p3, v4}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_functions:Ljava/util/Hashtable;

    invoke-virtual {v6, v5, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iput-object p5, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_scriptSrcURL:Ljava/lang/String;

    iput-object p6, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_scriptSrc:Ljava/lang/String;

    if-eqz p5, :cond_4

    :try_start_0
    new-instance p2, Ljava/net/URL;

    iget-object p3, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_scriptSrcURL:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    iget-object p3, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_scriptSrcURL:Ljava/lang/String;

    const/16 p5, 0x3a

    invoke-virtual {p3, p5}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    iget-object p5, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_scriptSrcURL:Ljava/lang/String;

    const/16 p6, 0x2f

    invoke-virtual {p5, p6}, Ljava/lang/String;->indexOf(I)I

    move-result p5

    const/4 p6, -0x1

    if-eq p3, p6, :cond_3

    if-eq p5, p6, :cond_3

    if-lt p3, p5, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_scriptSrcURL:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    :goto_2
    :try_start_1
    new-instance p2, Ljava/net/URL;

    new-instance p3, Ljava/net/URL;

    invoke-static {p7}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_scriptSrcURL:Ljava/lang/String;

    invoke-direct {p2, p3, p5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    :try_start_2
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-virtual {p2}, Ljava/net/URLConnection;->getContentLength()I

    move-result p2

    new-array p2, p2, [B

    invoke-virtual {p3, p2}, Ljava/io/InputStream;->read([B)I

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>([B)V

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_scriptSrc:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    new-instance p2, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_scriptSrcURL:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_scriptSrcURL:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_4
    const/4 p2, 0x1

    :try_start_3
    sget-object p3, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->BSF_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/extensions/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object p5

    invoke-static {p3, p5, p2}, Lcom/sun/org/apache/xalan/internal/extensions/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object p3
    :try_end_3
    .catch Lcom/sun/org/apache/xalan/internal/extensions/ObjectFactory$ConfigurationError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p3, p1

    :goto_5
    if-eqz p3, :cond_5

    :try_start_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    const-string p6, "loadScriptingEngine"

    new-array p7, p2, [Ljava/lang/Class;

    aput-object v0, p7, v2

    invoke-virtual {p5, p6, p7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p5

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p5, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_engine:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string p4, "exec"

    const/4 p5, 0x4

    new-array p6, p5, [Ljava/lang/Class;

    aput-object v0, p6, v2

    sget-object p7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p7, p6, p2

    const/4 v0, 0x2

    aput-object p7, p6, v0

    const-class p7, Ljava/lang/Object;

    const/4 v1, 0x3

    aput-object p7, p6, v1

    invoke-virtual {p3, p4, p6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iget-object p4, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_engine:Ljava/lang/Object;

    new-array p5, p5, [Ljava/lang/Object;

    const-string p6, "XalanScript"

    aput-object p6, p5, v2

    sget-object p6, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->ZEROINT:Ljava/lang/Integer;

    aput-object p6, p5, p2

    aput-object p6, p5, v0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_scriptSrc:Ljava/lang/String;

    aput-object p0, p5, v1

    invoke-virtual {p3, p4, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Ljavax/xml/transform/TransformerException;

    const-string p3, "ER_CANNOT_CMPL_EXTENSN"

    invoke-static {p3, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p2, "ER_CANNOT_INIT_BSFMGR"

    invoke-static {p2, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public callFunction(Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 15
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;->getMethodKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->callFunction(Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public callFunction(Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p3

    new-array p4, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 2
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v2

    :cond_0
    aput-object v2, p4, v1

    if-eqz v2, :cond_1

    .line 4
    instance-of v3, v2, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz v3, :cond_1

    .line 5
    new-instance v3, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeList;

    check-cast v2, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeList;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    aput-object v3, p4, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_engineCall:Ljava/lang/reflect/Method;

    if-nez p2, :cond_3

    .line 7
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_engine:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "call"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v0

    const-class v0, Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-class v0, [Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-virtual {p2, p3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_engineCall:Ljava/lang/reflect/Method;

    .line 8
    :cond_3
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_engineCall:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_engine:Ljava/lang/Object;

    const/4 p3, 0x0

    filled-new-array {p3, p1, p4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string p1, "Stopping after fatal error:"

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x1b

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 13
    :cond_4
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 14
    :cond_5
    new-instance p2, Ljavax/xml/transform/TransformerException;

    const-string p3, "ER_CANNOT_CREATE_EXTENSN"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isElementAvailable(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_elements:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFunctionAvailable(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->m_functions:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public processElement(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;

    invoke-direct {v0, p3, p4}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    :try_start_0
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getExpressionContext()Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p5, p2}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerGeneral;->callFunction(Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/sun/org/apache/xpath/internal/XPathProcessorException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p4, p0}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->outputToResultTree(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;Ljava/lang/Object;)V

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
