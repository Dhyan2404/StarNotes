.class public Lnet/sf/saxon/style/XSLPerformSort;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLPerformSort;->u:Lnet/sf/saxon/expr/Expression;

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/StyleElement;->M(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/XSLPerformSort;->u:Lnet/sf/saxon/expr/Expression;

    if-eqz v1, :cond_0

    new-instance p1, Lnet/sf/saxon/expr/sort/SortExpression;

    iget-object p0, p0, Lnet/sf/saxon/style/XSLPerformSort;->u:Lnet/sf/saxon/expr/Expression;

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/expr/sort/SortExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;)V

    return-object p1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    :cond_1
    :try_start_0
    new-instance p2, Lnet/sf/saxon/expr/sort/SortExpression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lnet/sf/saxon/expr/sort/SortExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPermittedChild(Lnet/sf/saxon/style/StyleElement;)Z
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/style/XSLSort;

    return p0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "select"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3, v1}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLPerformSort;->u:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->p(Z)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLPerformSort;->u:Lnet/sf/saxon/expr/Expression;

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    instance-of v1, v0, Lnet/sf/saxon/style/XSLSort;

    if-nez v1, :cond_0

    instance-of v1, v0, Lnet/sf/saxon/style/XSLFallback;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "XTSE1040"

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "Within xsl:perform-sort, significant text must not appear if there is a select attribute"

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    const-string v1, "Within xsl:perform-sort, child instructions are not allowed if there is a select attribute"

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "select"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLPerformSort;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLPerformSort;->u:Lnet/sf/saxon/expr/Expression;

    return-void
.end method
