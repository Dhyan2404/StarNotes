.class public Lnet/sf/saxon/xpath/XPathEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/xpath/XPath;


# instance fields
.field public final a:Lnet/sf/saxon/Configuration;

.field public b:Lnet/sf/saxon/xpath/JAXPXPathStaticContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lnet/sf/saxon/Configuration;->newConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/xpath/XPathEvaluator;-><init>(Lnet/sf/saxon/Configuration;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->a:Lnet/sf/saxon/Configuration;

    .line 4
    new-instance v0, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    invoke-direct {v0, p1}, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v0, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->b:Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    return-void
.end method


# virtual methods
.method public compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {p0}, Lnet/sf/saxon/xpath/XPathEvaluator;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/instruct/Executable;-><init>(Lnet/sf/saxon/Configuration;)V

    iget-object v1, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->b:Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    invoke-virtual {v1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->isSchemaAware()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Executable;->setSchemaAware(Z)V

    iget-object v1, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->b:Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v2, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->make(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;IILnet/sf/saxon/expr/parser/CodeInjector;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object v1, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->b:Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    invoke-static {v1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/xpath/XPathEvaluator;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/type/Type;->ITEM_TYPE:Lnet/sf/saxon/type/ItemType;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->b:Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p0

    invoke-static {p1, v4, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    new-instance v1, Lnet/sf/saxon/xpath/XPathExpressionImpl;

    invoke-direct {v1, p1, v0}, Lnet/sf/saxon/xpath/XPathExpressionImpl;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/Executable;)V

    invoke-virtual {v1, p0}, Lnet/sf/saxon/xpath/XPathExpressionImpl;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "expr"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/xpath/XPathEvaluator;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object p0

    .line 2
    invoke-interface {p0, p2, p3}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lnet/sf/saxon/xpath/XPathEvaluator;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object p0

    .line 6
    invoke-interface {p0, p2, p3}, Ljavax/xml/xpath/XPathExpression;->evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "qName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "inputSource"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "expr"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lnet/sf/saxon/xpath/XPathEvaluator;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object p0

    .line 4
    invoke-interface {p0, p2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lnet/sf/saxon/xpath/XPathEvaluator;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object p0

    .line 11
    invoke-interface {p0, p2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Lorg/xml/sax/InputSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "inputSource"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "expr"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->a:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->b:Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    invoke-virtual {p0}, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object p0

    return-object p0
.end method

.method public getStaticContext()Lnet/sf/saxon/xpath/JAXPXPathStaticContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->b:Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    return-object p0
.end method

.method public getXPathFunctionResolver()Ljavax/xml/xpath/XPathFunctionResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->b:Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    invoke-virtual {p0}, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->getXPathFunctionResolver()Ljavax/xml/xpath/XPathFunctionResolver;

    move-result-object p0

    return-object p0
.end method

.method public getXPathVariableResolver()Ljavax/xml/xpath/XPathVariableResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->b:Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    invoke-virtual {p0}, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->getXPathVariableResolver()Ljavax/xml/xpath/XPathVariableResolver;

    move-result-object p0

    return-object p0
.end method

.method public importSchema(Ljavax/xml/transform/Source;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->b:Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->importSchema(Ljavax/xml/transform/Source;)V

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->b:Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setSchemaAware(Z)V

    return-void
.end method

.method public reset()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    iget-object v1, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, v1}, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v0, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->b:Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->b:Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    return-void
.end method

.method public setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->b:Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V

    return-void
.end method

.method public setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathEvaluator;->b:Lnet/sf/saxon/xpath/JAXPXPathStaticContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V

    return-void
.end method
