.class public Lnet/sf/saxon/expr/instruct/TemplateRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/rules/RuleTarget;
.implements Lnet/sf/saxon/s9api/Location;
.implements Lnet/sf/saxon/expr/ExpressionOwner;
.implements Lnet/sf/saxon/trace/TraceableComponent;


# instance fields
.field protected body:Lnet/sf/saxon/expr/Expression;

.field public e:Z

.field public f:Z

.field public g:Lnet/sf/saxon/value/SequenceType;

.field public h:Z

.field public i:Lnet/sf/saxon/type/ItemType;

.field public j:Z

.field public k:Lnet/sf/saxon/expr/instruct/SlotManager;

.field public l:Lnet/sf/saxon/expr/PackageData;

.field public m:Ljava/lang/String;

.field protected matchPattern:Lnet/sf/saxon/pattern/Pattern;

.field public n:I

.field public o:I

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/trans/rules/Rule;",
            ">;"
        }
    .end annotation
.end field

.field protected slaveCopies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/instruct/TemplateRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->i:Lnet/sf/saxon/type/ItemType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->p:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->slaveCopies:Ljava/util/List;

    return-void
.end method

.method public static a(Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/Expression;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/instruct/LocalParam;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/instruct/LocalParam;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/sf/saxon/expr/instruct/TemplateRule;->a(Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public apply(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContextMajor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->applyLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/expr/instruct/TailCall;->processLeavingTail()Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public applyLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->i:Lnet/sf/saxon/type/ItemType;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->i:Lnet/sf/saxon/type/ItemType;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lnet/sf/saxon/type/ItemType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v1, "context item for the template rule"

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-direct {p1, v3, v1, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->i:Lnet/sf/saxon/type/ItemType;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "XTTE0590"

    invoke-direct {p2, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p2

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object p2

    invoke-interface {p2, v1}, Lnet/sf/saxon/expr/XPathContext;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->body:Lnet/sf/saxon/expr/Expression;

    check-cast v0, Lnet/sf/saxon/expr/instruct/TailCallReturner;

    invoke-interface {v0, p1, p2}, Lnet/sf/saxon/expr/instruct/TailCallReturner;->processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->body:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Internal error evaluating template rule "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getLineNumber()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " at line "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " in module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1
.end method

.method public copy()Lnet/sf/saxon/expr/instruct/TemplateRule;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/instruct/TemplateRule;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/TemplateRule;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->body:Lnet/sf/saxon/expr/Expression;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->matchPattern:Lnet/sf/saxon/pattern/Pattern;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->copyTo(Lnet/sf/saxon/expr/instruct/TemplateRule;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->slaveCopies:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public copyTo(Lnet/sf/saxon/expr/instruct/TemplateRule;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->body:Lnet/sf/saxon/expr/Expression;

    if-eqz v0, :cond_0

    new-instance v1, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v1}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p1, Lnet/sf/saxon/expr/instruct/TemplateRule;->body:Lnet/sf/saxon/expr/Expression;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->matchPattern:Lnet/sf/saxon/pattern/Pattern;

    if-eqz v0, :cond_1

    new-instance v1, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v1}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/pattern/Pattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    iput-object v0, p1, Lnet/sf/saxon/expr/instruct/TemplateRule;->matchPattern:Lnet/sf/saxon/pattern/Pattern;

    :cond_1
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->e:Z

    iput-boolean v0, p1, Lnet/sf/saxon/expr/instruct/TemplateRule;->e:Z

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->f:Z

    iput-boolean v0, p1, Lnet/sf/saxon/expr/instruct/TemplateRule;->f:Z

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->g:Lnet/sf/saxon/value/SequenceType;

    iput-object v0, p1, Lnet/sf/saxon/expr/instruct/TemplateRule;->g:Lnet/sf/saxon/value/SequenceType;

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->h:Z

    iput-boolean v0, p1, Lnet/sf/saxon/expr/instruct/TemplateRule;->h:Z

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->i:Lnet/sf/saxon/type/ItemType;

    iput-object v0, p1, Lnet/sf/saxon/expr/instruct/TemplateRule;->i:Lnet/sf/saxon/type/ItemType;

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->j:Z

    iput-boolean v0, p1, Lnet/sf/saxon/expr/instruct/TemplateRule;->j:Z

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->k:Lnet/sf/saxon/expr/instruct/SlotManager;

    iput-object v0, p1, Lnet/sf/saxon/expr/instruct/TemplateRule;->k:Lnet/sf/saxon/expr/instruct/SlotManager;

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->l:Lnet/sf/saxon/expr/PackageData;

    iput-object v0, p1, Lnet/sf/saxon/expr/instruct/TemplateRule;->l:Lnet/sf/saxon/expr/PackageData;

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->m:Ljava/lang/String;

    iput-object v0, p1, Lnet/sf/saxon/expr/instruct/TemplateRule;->m:Ljava/lang/String;

    iget p0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->n:I

    iput p0, p1, Lnet/sf/saxon/expr/instruct/TemplateRule;->n:I

    return-void
.end method

.method public explainProperties(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    const-string v1, "cxt"

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->j:Z

    const-string v1, ""

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const-string v2, "flags"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "as"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "line"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->isDeclaredStreamable()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "streamable"

    const-string v0, "1"

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public gatherProperties(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getMatchPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->toShortString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "match"

    invoke-interface {p1, v0, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getBody()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->body:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getChildExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->body:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->o:I

    return p0
.end method

.method public getComponentKind()I
    .locals 0

    const/16 p0, 0xd2

    return p0
.end method

.method public getContainerGranularity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getInterpretedBody()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->body:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getInterpretedExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->n:I

    return p0
.end method

.method public getLocalParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/instruct/LocalParam;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getInterpretedBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->a(Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V

    return-object v0
.end method

.method public getLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public getMatchPattern()Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->matchPattern:Lnet/sf/saxon/pattern/Pattern;

    return-object p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageData()Lnet/sf/saxon/expr/PackageData;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->l:Lnet/sf/saxon/expr/PackageData;

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->i:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public getRequiredType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->g:Lnet/sf/saxon/value/SequenceType;

    if-nez p0, :cond_0

    sget-object p0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    return-object p0
.end method

.method public getRules()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/trans/rules/Rule;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->p:Ljava/util/List;

    return-object p0
.end method

.method public getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->k:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->m:Ljava/lang/String;

    return-object p0
.end method

.method public getTracingTag()Ljava/lang/String;
    .locals 0

    const-string p0, "xsl:template"

    return-object p0
.end method

.method public hasRequiredParams()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->e:Z

    return p0
.end method

.method public initialize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public isAbsentFocus()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->j:Z

    return p0
.end method

.method public isDeclaredStreamable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public prepareInitializer(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    return-void
.end method

.method public registerRule(Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->p:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public setBody(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->body:Lnet/sf/saxon/expr/Expression;

    instance-of p1, p1, Lnet/sf/saxon/expr/instruct/TailCallReturner;

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->f:Z

    return-void
.end method

.method public setChildExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setBody(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setColumnNumber(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->o:I

    return-void
.end method

.method public setContextItemRequirements(Lnet/sf/saxon/type/ItemType;Z)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->i:Lnet/sf/saxon/type/ItemType;

    iput-boolean p2, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->j:Z

    return-void
.end method

.method public setDeclaredStreamable(Z)V
    .locals 0

    return-void
.end method

.method public setHasRequiredParams(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->e:Z

    return-void
.end method

.method public setLineNumber(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->n:I

    return-void
.end method

.method public setMatchPattern(Lnet/sf/saxon/pattern/Pattern;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->matchPattern:Lnet/sf/saxon/pattern/Pattern;

    return-void
.end method

.method public setPackageData(Lnet/sf/saxon/expr/PackageData;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->l:Lnet/sf/saxon/expr/PackageData;

    return-void
.end method

.method public setRequiredType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->g:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->k:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->m:Ljava/lang/String;

    return-void
.end method

.method public updateSlaveCopies()V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;->slaveCopies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/TemplateRule;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/TemplateRule;->copyTo(Lnet/sf/saxon/expr/instruct/TemplateRule;)V

    goto :goto_0

    :cond_0
    return-void
.end method
