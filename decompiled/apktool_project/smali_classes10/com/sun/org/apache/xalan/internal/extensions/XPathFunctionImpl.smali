.class public Lcom/sun/org/apache/xalan/internal/extensions/XPathFunctionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/xpath/XPathFunction;


# instance fields
.field private m_funcName:Ljava/lang/String;

.field private m_handler:Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/XPathFunctionImpl;->m_handler:Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/extensions/XPathFunctionImpl;->m_funcName:Ljava/lang/String;

    return-void
.end method

.method private static listToVector(Ljava/util/List;)Ljava/util/Vector;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Vector;

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFunctionException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XPathFunctionImpl;->listToVector(Ljava/util/List;)Ljava/util/Vector;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/XPathFunctionImpl;->m_handler:Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/XPathFunctionImpl;->m_funcName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;->callFunction(Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/xpath/XPathFunctionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathFunctionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
