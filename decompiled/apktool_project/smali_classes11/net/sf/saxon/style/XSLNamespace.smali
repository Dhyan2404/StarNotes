.class public Lnet/sf/saxon/style/XSLNamespace;
.super Lnet/sf/saxon/style/XSLLeafNodeConstructor;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;-><init>()V

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLNamespace;->u:Lnet/sf/saxon/expr/Expression;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;-><init>(Lnet/sf/saxon/expr/Expression;)V

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v2, Lnet/sf/saxon/value/StringValue;->SINGLE_SPACE:Lnet/sf/saxon/value/StringValue;

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->compileContent(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public getErrorCodeForSelectPlusContent()Ljava/lang/String;
    .locals 0

    const-string p0, "XTSE0910"

    return-object p0
.end method

.method public prepareAttributes()V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->prepareAttributesNameAndSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLNamespace;->u:Lnet/sf/saxon/expr/Expression;

    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p1, "name"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLNamespace;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLNamespace;->u:Lnet/sf/saxon/expr/Expression;

    const-string p1, "select"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    instance-of v3, v2, Lnet/sf/saxon/style/XSLFallback;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLNamespace;->getErrorCodeForSelectPlusContent()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " element with a select attribute must be empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    if-nez p1, :cond_4

    if-nez v0, :cond_3

    new-instance p1, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    iput-object p1, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    if-ne v0, p1, :cond_4

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    new-instance p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    iput-object p1, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_4
    :goto_1
    return-void
.end method
