.class public Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunctionAvailable;
.super Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x4709ae7fafe83ef1L


# instance fields
.field private transient m_functionTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunctionAvailable;->m_functionTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 5
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

    const-string v2, "http://www.w3.org/1999/XSL/Transform"

    if-gez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_FALSE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunctionAvailable;->m_functionTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    if-nez p1, :cond_2

    new-instance p1, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    invoke-direct {p1}, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunctionAvailable;->m_functionTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunctionAvailable;->m_functionTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->functionAvailable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_TRUE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_FALSE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_FALSE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    return-object p0

    :cond_4
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/ExtensionsProvider;

    invoke-interface {p0, v3, v0}, Lcom/sun/org/apache/xpath/internal/ExtensionsProvider;->functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_TRUE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_FALSE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    :goto_2
    return-object p0
.end method

.method public setFunctionTable(Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunctionAvailable;->m_functionTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    return-void
.end method
