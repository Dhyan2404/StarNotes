.class public Lcom/sun/org/apache/xalan/internal/extensions/ExpressionVisitor;
.super Lcom/sun/org/apache/xpath/internal/XPathVisitor;
.source "SourceFile"


# instance fields
.field private m_sroot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitor;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionVisitor;->m_sroot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    return-void
.end method


# virtual methods
.method public visitFunction(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/functions/Function;)Z
    .locals 1

    instance-of p1, p2, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;->getNamespace()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionVisitor;->m_sroot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getExtensionNamespacesManager()Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->registerExtension(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunctionAvailable;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunctionAvailable;

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;->getArg0()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionVisitor;->m_sroot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionVisitor;->m_sroot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getExtensionNamespacesManager()Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->registerExtension(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
