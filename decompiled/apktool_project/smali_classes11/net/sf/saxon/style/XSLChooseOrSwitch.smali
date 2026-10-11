.class public abstract Lnet/sf/saxon/style/XSLChooseOrSwitch;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/style/StyleElement;

.field public v:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/style/XSLChooseOrSwitch;->v:I

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

    iget v0, p0, Lnet/sf/saxon/style/XSLChooseOrSwitch;->v:I

    iget-object v1, p0, Lnet/sf/saxon/style/XSLChooseOrSwitch;->u:Lnet/sf/saxon/style/StyleElement;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    new-array v1, v0, [Lnet/sf/saxon/expr/Expression;

    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/style/XSLChooseOrSwitch;->compileActions(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;[Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, p1, p2, v1}, Lnet/sf/saxon/style/XSLChooseOrSwitch;->compileConditions(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;[Lnet/sf/saxon/expr/Expression;)V

    new-instance p0, Lnet/sf/saxon/expr/instruct/Choose;

    invoke-direct {p0, v1, v0}, Lnet/sf/saxon/expr/instruct/Choose;-><init>([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->setInstruction(Z)V

    return-object p0
.end method

.method public compileActions(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;[Lnet/sf/saxon/expr/Expression;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    instance-of v3, v2, Lnet/sf/saxon/style/XSLWhen;

    if-nez v3, :cond_1

    instance-of v3, v2, Lnet/sf/saxon/style/XSLOtherwise;

    if-eqz v3, :cond_0

    :cond_1
    check-cast v2, Lnet/sf/saxon/style/StyleElement;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_2
    :try_start_0
    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    aput-object v3, p3, v1
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :goto_1
    aget-object v3, p3, v1

    invoke-static {v2, v3}, Lnet/sf/saxon/style/StyleElement;->setInstructionLocation(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/expr/Expression;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public abstract compileConditions(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;[Lnet/sf/saxon/expr/Expression;)V
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public markTailCalls()Z
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/w2n;

    const-class v1, Lnet/sf/saxon/style/StyleElement;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    check-cast v1, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v1}, Lnet/sf/saxon/style/StyleElement;->markTailCalls()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public prepareAttributes()V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "XTSE0010"

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    instance-of v3, v1, Lnet/sf/saxon/style/XSLWhen;

    const-string v4, "xsl:fallback must come last"

    if-eqz v3, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/style/XSLChooseOrSwitch;->u:Lnet/sf/saxon/style/StyleElement;

    if-eqz v1, :cond_0

    const-string v3, "xsl:otherwise must come last"

    invoke-virtual {v1, v3, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget v1, p0, Lnet/sf/saxon/style/XSLChooseOrSwitch;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/style/XSLChooseOrSwitch;->v:I

    goto :goto_0

    :cond_2
    instance-of v3, v1, Lnet/sf/saxon/style/XSLOtherwise;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lnet/sf/saxon/style/XSLChooseOrSwitch;->u:Lnet/sf/saxon/style/StyleElement;

    if-eqz v3, :cond_3

    check-cast v1, Lnet/sf/saxon/style/XSLOtherwise;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only one xsl:otherwise is allowed in an "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, v4, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    check-cast v1, Lnet/sf/saxon/style/StyleElement;

    iput-object v1, p0, Lnet/sf/saxon/style/XSLChooseOrSwitch;->u:Lnet/sf/saxon/style/StyleElement;

    goto :goto_0

    :cond_5
    instance-of v3, v1, Lnet/sf/saxon/style/XSLFallback;

    if-eqz v3, :cond_6

    instance-of v3, p0, Lnet/sf/saxon/style/XSLSwitch;

    if-eqz v3, :cond_6

    check-cast v1, Lnet/sf/saxon/style/XSLFallback;

    move-object v0, v1

    goto :goto_0

    :cond_6
    instance-of v3, v1, Lnet/sf/saxon/style/StyleElement;

    if-eqz v3, :cond_7

    check-cast v1, Lnet/sf/saxon/style/StyleElement;

    const-string v3, "Only xsl:when and xsl:otherwise are allowed here"

    invoke-virtual {v1, v3, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only xsl:when and xsl:otherwise are allowed within "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget p1, p0, Lnet/sf/saxon/style/XSLChooseOrSwitch;->v:I

    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must contain at least one xsl:when"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method
