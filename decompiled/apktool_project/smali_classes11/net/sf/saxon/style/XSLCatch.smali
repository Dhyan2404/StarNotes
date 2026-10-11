.class public Lnet/sf/saxon/style/XSLCatch;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Lnet/sf/saxon/pattern/QNameTest;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnet/sf/saxon/pattern/QNameTest;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "XTSE0280"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, " \t\n\r"

    const/4 v5, 0x0

    invoke-direct {v3, p1, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string v4, "*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v4, ":*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_1

    const-string v4, "No prefix before \':*\'"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lnet/sf/saxon/tree/linked/ElementImpl;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lnet/sf/saxon/pattern/NamespaceTest;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v7

    invoke-direct {v4, v7, v6, p1}, Lnet/sf/saxon/pattern/NamespaceTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v4, "*:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v8, "errors"

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_3

    const-string v4, "No local name after \'*:\'"

    const-string v9, "XTSE0010"

    invoke-virtual {p0, v4, v9, v8}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lnet/sf/saxon/pattern/LocalNameTest;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v7

    invoke-direct {v4, v7, v6, p1}, Lnet/sf/saxon/pattern/LocalNameTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-static {p1}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v7, v4, v5

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v7, v5}, Lnet/sf/saxon/tree/linked/ElementImpl;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    invoke-virtual {p0, v7, v1, v8}, Lnet/sf/saxon/style/StyleElement;->X(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    :goto_1
    aget-object p1, v4, v6
    :try_end_0
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v4

    invoke-virtual {v4, v9, p1}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance v4, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v7

    invoke-direct {v4, v6, p1, v7}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error code "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid QName"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v8}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    return-object v2
.end method

.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLCatch;->u:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLCatch;->u:Lnet/sf/saxon/expr/Expression;

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/style/XSLTry;

    iget-object p2, p0, Lnet/sf/saxon/style/XSLCatch;->v:Lnet/sf/saxon/pattern/QNameTest;

    iget-object p0, p0, Lnet/sf/saxon/style/XSLCatch;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1, p2, p0}, Lnet/sf/saxon/style/XSLTry;->addCatchClause(Lnet/sf/saxon/pattern/QNameTest;Lnet/sf/saxon/expr/Expression;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 7

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "select"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v5, v2}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLCatch;->u:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_0
    const-string v2, "errors"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLCatch;->v:Lnet/sf/saxon/pattern/QNameTest;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/XSLCatch;->Z(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "xsl:catch/@errors must not be empty"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/pattern/QNameTest;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLCatch;->v:Lnet/sf/saxon/pattern/QNameTest;

    goto :goto_1

    :cond_5
    new-instance v1, Lnet/sf/saxon/pattern/UnionQNameTest;

    invoke-direct {v1, v0}, Lnet/sf/saxon/pattern/UnionQNameTest;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lnet/sf/saxon/style/XSLCatch;->v:Lnet/sf/saxon/pattern/QNameTest;

    :goto_1
    return-void
.end method

.method public seesAvuncularVariables()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p1, "select"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLCatch;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLCatch;->u:Lnet/sf/saxon/expr/Expression;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "An xsl:catch element with a select attribute must be empty"

    const-string v0, "XTSE3150"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/style/XSLTry;

    if-nez p1, :cond_1

    const-string p1, "xsl:catch may appear only as a child of xsl:try"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
