.class public Lnet/sf/saxon/trans/rules/Rule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field protected action:Lnet/sf/saxon/trans/rules/RuleTarget;

.field public b:I

.field protected minImportPrecedence:I

.field protected next:Lnet/sf/saxon/trans/rules/Rule;

.field protected part:I

.field protected pattern:Lnet/sf/saxon/pattern/Pattern;

.field protected precedence:I

.field protected priority:D

.field protected sequence:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/trans/rules/RuleTarget;IIDII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/trans/rules/Rule;->pattern:Lnet/sf/saxon/pattern/Pattern;

    .line 4
    iput-object p2, p0, Lnet/sf/saxon/trans/rules/Rule;->action:Lnet/sf/saxon/trans/rules/RuleTarget;

    .line 5
    iput p3, p0, Lnet/sf/saxon/trans/rules/Rule;->precedence:I

    .line 6
    iput p4, p0, Lnet/sf/saxon/trans/rules/Rule;->minImportPrecedence:I

    .line 7
    iput-wide p5, p0, Lnet/sf/saxon/trans/rules/Rule;->priority:D

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lnet/sf/saxon/trans/rules/Rule;->next:Lnet/sf/saxon/trans/rules/Rule;

    .line 9
    iput p7, p0, Lnet/sf/saxon/trans/rules/Rule;->sequence:I

    .line 10
    iput p8, p0, Lnet/sf/saxon/trans/rules/Rule;->part:I

    .line 11
    invoke-interface {p2, p0}, Lnet/sf/saxon/trans/rules/RuleTarget;->registerRule(Lnet/sf/saxon/trans/rules/Rule;)V

    return-void
.end method


# virtual methods
.method public compareComputedRank(Lnet/sf/saxon/trans/rules/Rule;)I
    .locals 2

    iget v0, p0, Lnet/sf/saxon/trans/rules/Rule;->precedence:I

    iget v1, p1, Lnet/sf/saxon/trans/rules/Rule;->precedence:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lnet/sf/saxon/trans/rules/Rule;->priority:D

    iget-wide p0, p1, Lnet/sf/saxon/trans/rules/Rule;->priority:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public compareRank(Lnet/sf/saxon/trans/rules/Rule;)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/trans/rules/Rule;->b:I

    iget p1, p1, Lnet/sf/saxon/trans/rules/Rule;->b:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public copy(Z)Lnet/sf/saxon/trans/rules/Rule;
    .locals 1

    new-instance v0, Lnet/sf/saxon/trans/rules/Rule;

    invoke-direct {v0}, Lnet/sf/saxon/trans/rules/Rule;-><init>()V

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/trans/rules/Rule;->copyFrom(Lnet/sf/saxon/trans/rules/Rule;Z)V

    return-object v0
.end method

.method public copyFrom(Lnet/sf/saxon/trans/rules/Rule;Z)V
    .locals 2

    iget-object v0, p1, Lnet/sf/saxon/trans/rules/Rule;->pattern:Lnet/sf/saxon/pattern/Pattern;

    new-instance v1, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v1}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/pattern/Pattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/trans/rules/Rule;->pattern:Lnet/sf/saxon/pattern/Pattern;

    iget-object v0, p1, Lnet/sf/saxon/trans/rules/Rule;->action:Lnet/sf/saxon/trans/rules/RuleTarget;

    instance-of v1, v0, Lnet/sf/saxon/expr/instruct/TemplateRule;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/expr/instruct/TemplateRule;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->copy()Lnet/sf/saxon/expr/instruct/TemplateRule;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lnet/sf/saxon/trans/rules/Rule;->action:Lnet/sf/saxon/trans/rules/RuleTarget;

    iget v0, p1, Lnet/sf/saxon/trans/rules/Rule;->precedence:I

    iput v0, p0, Lnet/sf/saxon/trans/rules/Rule;->precedence:I

    iget v0, p1, Lnet/sf/saxon/trans/rules/Rule;->minImportPrecedence:I

    iput v0, p0, Lnet/sf/saxon/trans/rules/Rule;->minImportPrecedence:I

    iget-wide v0, p1, Lnet/sf/saxon/trans/rules/Rule;->priority:D

    iput-wide v0, p0, Lnet/sf/saxon/trans/rules/Rule;->priority:D

    iget v0, p1, Lnet/sf/saxon/trans/rules/Rule;->sequence:I

    iput v0, p0, Lnet/sf/saxon/trans/rules/Rule;->sequence:I

    iget v0, p1, Lnet/sf/saxon/trans/rules/Rule;->part:I

    iput v0, p0, Lnet/sf/saxon/trans/rules/Rule;->part:I

    iget-object p1, p1, Lnet/sf/saxon/trans/rules/Rule;->next:Lnet/sf/saxon/trans/rules/Rule;

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/rules/Rule;->copy(Z)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/rules/Rule;->next:Lnet/sf/saxon/trans/rules/Rule;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/trans/rules/Rule;->next:Lnet/sf/saxon/trans/rules/Rule;

    :goto_1
    iget-object p1, p0, Lnet/sf/saxon/trans/rules/Rule;->action:Lnet/sf/saxon/trans/rules/RuleTarget;

    invoke-interface {p1, p0}, Lnet/sf/saxon/trans/rules/RuleTarget;->registerRule(Lnet/sf/saxon/trans/rules/Rule;)V

    return-void
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object p2

    instance-of v0, p2, Lnet/sf/saxon/expr/instruct/TemplateRule;

    if-eqz v0, :cond_3

    check-cast p2, Lnet/sf/saxon/expr/instruct/TemplateRule;

    const-string v0, "templateRule"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/Rule;->getPrecedence()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "prec"

    invoke-virtual {p1, v3, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/Rule;->getPriority()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "prio"

    invoke-virtual {p1, v3, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/Rule;->getSequence()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "seq"

    invoke-virtual {p1, v3, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lnet/sf/saxon/trans/rules/Rule;->part:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lnet/sf/saxon/trans/rules/Rule;->part:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "part"

    invoke-virtual {p1, v3, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/Rule;->getRank()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "rank"

    invoke-virtual {p1, v3, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/Rule;->getMinImportPrecedence()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "minImp"

    invoke-virtual {p1, v3, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slots"

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sf/saxon/trans/rules/Rule;->pattern:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getFullAlphaCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "matches"

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/instruct/TemplateRule;->explainProperties(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/rules/Rule;->exportOtherProperties(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    const-string v1, "match"

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/Rule;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/Pattern;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "action"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    move-result p0

    if-ne v0, p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exported expression tree unbalanced in template at line "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-interface {p2, p1}, Lnet/sf/saxon/trans/rules/RuleTarget;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :goto_0
    return-void
.end method

.method public exportOtherProperties(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public getAction()Lnet/sf/saxon/trans/rules/RuleTarget;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/rules/Rule;->action:Lnet/sf/saxon/trans/rules/RuleTarget;

    return-object p0
.end method

.method public getMinImportPrecedence()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/trans/rules/Rule;->minImportPrecedence:I

    return p0
.end method

.method public getNext()Lnet/sf/saxon/trans/rules/Rule;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/rules/Rule;->next:Lnet/sf/saxon/trans/rules/Rule;

    return-object p0
.end method

.method public getPartNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/trans/rules/Rule;->part:I

    return p0
.end method

.method public getPattern()Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/rules/Rule;->pattern:Lnet/sf/saxon/pattern/Pattern;

    return-object p0
.end method

.method public getPrecedence()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/trans/rules/Rule;->precedence:I

    return p0
.end method

.method public getPriority()D
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/trans/rules/Rule;->priority:D

    return-wide v0
.end method

.method public getRank()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/trans/rules/Rule;->b:I

    return p0
.end method

.method public getSequence()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/trans/rules/Rule;->sequence:I

    return p0
.end method

.method public isAlwaysMatches()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/rules/Rule;->a:Z

    return p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContextMajor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/trans/rules/Rule;->a:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/trans/rules/Rule;->pattern:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

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

.method public setAction(Lnet/sf/saxon/trans/rules/RuleTarget;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/rules/Rule;->action:Lnet/sf/saxon/trans/rules/RuleTarget;

    return-void
.end method

.method public setAlwaysMatches(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/rules/Rule;->a:Z

    return-void
.end method

.method public setNext(Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/rules/Rule;->next:Lnet/sf/saxon/trans/rules/Rule;

    return-void
.end method

.method public setPattern(Lnet/sf/saxon/pattern/Pattern;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/rules/Rule;->pattern:Lnet/sf/saxon/pattern/Pattern;

    return-void
.end method

.method public setRank(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/trans/rules/Rule;->b:I

    return-void
.end method
