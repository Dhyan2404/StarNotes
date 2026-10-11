.class public Lcom/sun/org/apache/xpath/internal/jaxp/JAXPExtensionsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xpath/internal/ExtensionsProvider;


# instance fields
.field private extensionInvocationDisabled:Z

.field private final resolver:Ljavax/xml/xpath/XPathFunctionResolver;


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    return-void
.end method

.method public constructor <init>(Ljavax/xml/xpath/XPathFunctionResolver;Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 6
    iput-boolean p2, p0, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    return-void
.end method


# virtual methods
.method public elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public extFunction(Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;Ljava/util/Vector;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;->getArgCount()I

    move-result p1

    .line 23
    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, v0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 25
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    invoke-interface {p0, v2, p1}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;

    move-result-object p0

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v1, p1, :cond_2

    .line 27
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 28
    instance-of v3, v2, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    if-eqz v3, :cond_0

    .line 29
    check-cast v2, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 30
    :cond_0
    instance-of v3, v2, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    if-eqz v3, :cond_1

    .line 31
    check-cast v2, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v2

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {p0, v0}, Ljavax/xml/xpath/XPathFunction;->evaluate(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED"

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 35
    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {p0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 36
    new-instance p1, Ljavax/xml/xpath/XPathFunctionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathFunctionException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 37
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 38
    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    .line 1
    :try_start_0
    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    if-nez p1, :cond_3

    .line 3
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p1

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    invoke-interface {p0, v1, p1}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;

    move-result-object p0

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge p4, p1, :cond_2

    .line 6
    invoke-virtual {p3, p4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_0
    instance-of v1, v0, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    if-eqz v1, :cond_1

    .line 10
    check-cast v0, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v0

    .line 11
    invoke-virtual {p2, p4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p2, p4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-interface {p0, p2}, Ljavax/xml/xpath/XPathFunction;->evaluate(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED"

    new-array p1, v0, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p4

    invoke-static {p0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 15
    new-instance p1, Ljavax/xml/xpath/XPathFunctionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathFunctionException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_4
    const-string p0, "ER_ARG_CANNOT_BE_NULL"

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Function Name"

    aput-object p2, p1, p4

    .line 16
    invoke-static {p0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 17
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_2
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 19
    :goto_3
    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    invoke-interface {p0, v2, v1}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const-string p0, "ER_ARG_CANNOT_BE_NULL"

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Function Name"

    aput-object p2, p1, v1

    invoke-static {p0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1
.end method
