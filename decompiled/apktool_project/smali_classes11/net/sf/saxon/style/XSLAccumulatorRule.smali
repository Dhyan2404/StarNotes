.class public Lnet/sf/saxon/style/XSLAccumulatorRule;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# static fields
.field public static final synthetic y:Z


# instance fields
.field public u:Lnet/sf/saxon/pattern/Pattern;

.field public v:Z

.field public w:Lnet/sf/saxon/expr/Expression;

.field public x:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatch()Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->u:Lnet/sf/saxon/pattern/Pattern;

    return-object p0
.end method

.method public getNewValueExpression(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->w:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->w:Lnet/sf/saxon/expr/Expression;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->w:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getSelect()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->w:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public hasImplicitBinding(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;
    .locals 3

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lnet/sf/saxon/style/SourceBinding;

    invoke-direct {p1, p0}, Lnet/sf/saxon/style/SourceBinding;-><init>(Lnet/sf/saxon/style/StyleElement;)V

    new-instance v2, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v2, v0, v0, v1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lnet/sf/saxon/style/SourceBinding;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/XSLAccumulator;

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAccumulator;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/style/SourceBinding;->setDeclaredType(Lnet/sf/saxon/value/SequenceType;)V

    sget-object p0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->IMPLICITLY_DECLARED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/style/SourceBinding;->setProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;Z)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isCapture()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->x:Z

    return p0
.end method

.method public isPostDescent()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->v:Z

    return p0
.end method

.method public prepareAttributes()V
    .locals 11

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "match"

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, -0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "phase"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v10, v9

    goto :goto_1

    :sswitch_2
    const-string v3, "select"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v10, v8

    :goto_1
    packed-switch v10, :pswitch_data_0

    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :pswitch_0
    invoke-static {v5}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "start"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v8, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->v:Z

    goto :goto_0

    :cond_4
    const-string v3, "end"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-boolean v9, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->v:Z

    goto :goto_0

    :cond_5
    iput-boolean v9, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->v:Z

    const-string v2, "phase must be \'start\' or \'end\'"

    const-string v3, "XTSE0020"

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    move-object v1, v5

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v5, v2}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->w:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :cond_6
    const-string v2, "http://saxon.sf.net/"

    invoke-interface {v4, v2}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->isExtensionAttributeAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    const-string v3, "capture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "saxon:capture"

    invoke-virtual {p0, v2, v5}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->x:Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto/16 :goto_0

    :cond_8
    if-nez v1, :cond_9

    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    const-string v1, "non-existent-element"

    :cond_9
    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/style/StyleElement;->L(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->u:Lnet/sf/saxon/pattern/Pattern;

    iget-boolean v0, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->x:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->v:Z

    if-nez v0, :cond_a

    const-string v0, "saxon:capture has no effect on a pre-descent accumulator rule"

    const-string v1, "SXWN9000"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3600cb04 -> :sswitch_2
        0x62dd9c5 -> :sswitch_1
        0x65b097b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMatch(Lnet/sf/saxon/pattern/Pattern;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->u:Lnet/sf/saxon/pattern/Pattern;

    return-void
.end method

.method public setPostDescent(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->v:Z

    return-void
.end method

.method public setSelect(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->w:Lnet/sf/saxon/expr/Expression;

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

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->w:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->w:Lnet/sf/saxon/expr/Expression;

    const-string p1, "match"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->u:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/pattern/Pattern;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->u:Lnet/sf/saxon/pattern/Pattern;

    iget-object p1, p0, Lnet/sf/saxon/style/XSLAccumulatorRule;->w:Lnet/sf/saxon/expr/Expression;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "If the xsl:accumulator-rule element has a select attribute then it must have no children"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
