.class public Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field m_args:[Ljava/lang/Object;

.field m_handlerClass:Ljava/lang/String;

.field m_namespace:Ljava/lang/String;

.field m_sig:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;->m_namespace:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;->m_handlerClass:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    array-length p1, p3

    new-array p1, p1, [Ljava/lang/Class;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    array-length p3, p2

    if-ge p1, p3, :cond_1

    aget-object p2, p2, p1

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    aput-object p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    :cond_1
    return-void
.end method


# virtual methods
.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;->m_namespace:Ljava/lang/String;

    return-object p0
.end method

.method public launch()Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;->m_handlerClass:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;

    return-object p0

    :cond_3
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string v0, "ExtensionHandler constructor not found"

    invoke-direct {p0, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
