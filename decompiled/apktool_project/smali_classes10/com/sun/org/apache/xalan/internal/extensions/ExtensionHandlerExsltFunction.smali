.class public Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerExsltFunction;
.super Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;
.source "SourceFile"


# static fields
.field private static final RESULTQNAME:Lcom/sun/org/apache/xml/internal/utils/QName;


# instance fields
.field private m_namespace:Ljava/lang/String;

.field private m_stylesheet:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/QName;

    const-string v1, "http://exslt.org/functions"

    const-string v2, "result"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerExsltFunction;->RESULTQNAME:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 1

    const-string v0, "xml"

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerExsltFunction;->m_namespace:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerExsltFunction;->m_stylesheet:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    return-void
.end method

.method private ancestorIsFunction(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z
    .locals 0

    :goto_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    instance-of p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    instance-of p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFunction;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public callFunction(Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/Expression;->exprGetParent()Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 3
    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    if-nez v1, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/sun/org/apache/xpath/internal/ExpressionNode;->exprGetParent()Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    .line 6
    :cond_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Lcom/sun/org/apache/xpath/internal/objects/XObject;

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    .line 7
    :try_start_0
    invoke-virtual {p2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->create(Ljava/lang/Object;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;->getFunctionName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerExsltFunction;->getFunction(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFunction;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 9
    invoke-interface {p3}, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushCurrentFuncResult(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFunction;->execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;[Lcom/sun/org/apache/xpath/internal/objects/XObject;)V

    .line 13
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popCurrentFuncResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    if-nez p0, :cond_3

    .line 14
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    :cond_3
    return-object p0

    .line 15
    :cond_4
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p2, "ER_FUNCTION_NOT_FOUND"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {p2, p3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 17
    throw p0
.end method

.method public callFunction(Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p1, "This method should not be called."

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFunction(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFunction;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/QName;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerExsltFunction;->m_namespace:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerExsltFunction;->m_stylesheet:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getTemplateComposed(Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFunction;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFunction;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isElementAvailable(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/QName;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerExsltFunction;->m_namespace:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerExsltFunction;->RESULTQNAME:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerExsltFunction;->m_stylesheet:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerExsltFunction;->m_stylesheet:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    if-eq p1, v1, :cond_4

    instance-of v1, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFuncResult;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerExsltFunction;->ancestorIsFunction(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public isFunctionAvailable(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerExsltFunction;->getFunction(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFunction;

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
