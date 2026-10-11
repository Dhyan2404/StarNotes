.class public Lnet/sf/saxon/style/XSLIterate;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLIterate;->u:Lnet/sf/saxon/expr/Expression;

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/om/NodeInfo;

    instance-of v6, v5, Lnet/sf/saxon/style/XSLLocalParam;

    if-eqz v6, :cond_0

    check-cast v5, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v6, v5, Lnet/sf/saxon/style/XSLOnCompletion;

    if-eqz v6, :cond_1

    check-cast v5, Lnet/sf/saxon/style/XSLOnCompletion;

    invoke-virtual {v5, p1, p2}, Lnet/sf/saxon/style/XSLOnCompletion;->compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lnet/sf/saxon/expr/instruct/LocalParam;

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-virtual {v7, p1, p2}, Lnet/sf/saxon/style/XSLLocalParam;->compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/expr/instruct/LocalParam;

    aput-object v7, v2, v6

    invoke-virtual {v7}, Lnet/sf/saxon/expr/instruct/LocalParam;->isImplicitlyRequiredParam()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "The parameter must be given an initial value because () is not valid, given the declared type"

    const-string v8, "XTSE3520"

    invoke-virtual {p0, v7, v8}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    new-instance v1, Lnet/sf/saxon/expr/instruct/LocalParamBlock;

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/instruct/LocalParamBlock;-><init>([Lnet/sf/saxon/expr/instruct/LocalParam;)V

    new-instance v2, Lnet/sf/saxon/tree/iter/NodeListIterator;

    invoke-direct {v2, v0}, Lnet/sf/saxon/tree/iter/NodeListIterator;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, p2, v2, v5}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/om/SequenceIterator;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_5
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/expr/instruct/IterateInstr;

    iget-object v0, p0, Lnet/sf/saxon/style/XSLIterate;->u:Lnet/sf/saxon/expr/Expression;

    invoke-direct {p2, v0, v1, p1, v4}, Lnet/sf/saxon/expr/instruct/IterateInstr;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/LocalParamBlock;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    return-object v3
.end method

.method public isCompilable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/XSLIterate;->v:Z

    return p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPermittedChild(Lnet/sf/saxon/style/StyleElement;)Z
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/style/XSLLocalParam;

    if-nez p0, :cond_1

    instance-of p0, p1, Lnet/sf/saxon/style/XSLOnCompletion;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public mayContainParam()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 10

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "select"

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "array"

    const-string v8, "map"

    const/4 v9, -0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v9, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    packed-switch v9, :pswitch_data_0

    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v7}, Lnet/sf/saxon/style/StyleElement;->requireXslt40(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v1}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->arrayToSequence(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLIterate;->u:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v8}, Lnet/sf/saxon/style/StyleElement;->requireXslt40(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v1}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->mapToSequence(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLIterate;->u:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v4, v1}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLIterate;->u:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/style/XSLIterate;->u:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_5

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLIterate;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->A()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_4

    const-string v0, "One of the attributes select|array|map must be present"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3600cb04 -> :sswitch_2
        0x1a55c -> :sswitch_1
        0x58c7259 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCompilable(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/style/XSLIterate;->v:Z

    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p1, "select"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLIterate;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLIterate;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "An empty xsl:iterate instruction has no effect"

    const-string v0, "SXWN9009"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
