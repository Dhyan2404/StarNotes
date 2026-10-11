.class public Lnet/sf/saxon/functions/hof/UserFunctionReference;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ComponentInvocation;
.implements Lnet/sf/saxon/expr/UserFunctionResolvable;
.implements Lnet/sf/saxon/expr/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;
    }
.end annotation


# instance fields
.field public final n:Lnet/sf/saxon/trans/SymbolicName;

.field public o:Lnet/sf/saxon/expr/instruct/UserFunction;

.field public p:I

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/instruct/UserFunction;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->p:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->q:I

    .line 4
    iput v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->r:I

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    .line 6
    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName$F;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->n:Lnet/sf/saxon/trans/SymbolicName;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/trans/SymbolicName;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->p:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->q:I

    .line 10
    iput v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->r:I

    .line 11
    iput-object p1, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->n:Lnet/sf/saxon/trans/SymbolicName;

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/hof/UserFunctionReference;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/hof/UserFunctionReference;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Function;

    move-result-object p0

    return-object p0
.end method

.method public computeCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance p1, Lnet/sf/saxon/functions/hof/UserFunctionReference;

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-direct {p1, v0}, Lnet/sf/saxon/functions/hof/UserFunctionReference;-><init>(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    iget v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->q:I

    iput v0, p1, Lnet/sf/saxon/functions/hof/UserFunctionReference;->q:I

    iget p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->r:I

    iput p0, p1, Lnet/sf/saxon/functions/hof/UserFunctionReference;->r:I

    return-object p1
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v2

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;-><init>(Lnet/sf/saxon/expr/ExportAgent;Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/Component;Lnet/sf/saxon/Controller;)V

    return-object v0

    .line 4
    :cond_0
    invoke-interface {p1, v0}, Lnet/sf/saxon/expr/XPathContext;->getTargetComponent(I)Lnet/sf/saxon/expr/Component;

    move-result-object v0

    .line 5
    new-instance v1, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    invoke-direct {v1, p0, v2, v0, p1}, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;-><init>(Lnet/sf/saxon/expr/ExportAgent;Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/Component;Lnet/sf/saxon/Controller;)V

    return-object v1
.end method

.method public bridge synthetic evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/hof/UserFunctionReference;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;

    move-result-object p0

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->getOptions()Lnet/sf/saxon/trace/ExpressionPresenter$Options;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;

    iget-object v1, v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;->target:Ljava/lang/String;

    const-string v2, "JS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;->targetVersion:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "XTSE3540"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const-string v1, "Higher-order functions are not available in SaxonJS v1.*"

    invoke-direct {p1, v1, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "inlineFn"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto/16 :goto_2

    :cond_2
    iget-object v0, v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;->rootPackage:Lnet/sf/saxon/style/StylesheetPackage;

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_4

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StylesheetPackage;->contains(Lnet/sf/saxon/style/StylesheetPackage;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot export a package containing a reference to a user-defined function ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/UserFunctionReference;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") that is not present in the package being exported"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const-string v0, "ufRef"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "arity"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/UserFunctionReference;->getBindingSlot()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bSlot"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    :goto_2
    return-void
.end method

.method public getArity()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArity()I

    move-result p0

    return p0
.end method

.method public getBindingSlot()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->p:I

    return p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "UserFunctionReference"

    return-object p0
.end method

.method public getFixedTarget()Lnet/sf/saxon/expr/Component;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionItemType(Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/FunctionItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object p0

    return-object p0
.end method

.method public getNominalTarget()Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    return-object p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/UType;->FUNCTION:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->n:Lnet/sf/saxon/trans/SymbolicName;

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    const-string v0, "http://ns.saxonica.com/anonymous-type"

    invoke-virtual {p2, v0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->q:I

    if-nez p2, :cond_1

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->q:I

    iget-object p2, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    sget-object v0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->ABSENT:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-virtual {p2, p1, v0}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/UserFunctionReference;->getArity()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getParameterDefinitions()[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/instruct/SlotManager;->allocateSlotNumber(Lnet/sf/saxon/om/StructuredQName;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/UserFunctionReference;->getArity()I

    move-result v0

    invoke-static {p2, v0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    iget-object p2, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    iget p1, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->q:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->q:I

    :cond_1
    return-object p0
.end method

.method public setBindingSlot(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->p:I

    return-void
.end method

.method public setFunction(Lnet/sf/saxon/expr/instruct/UserFunction;)V
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName$F;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->n:Lnet/sf/saxon/trans/SymbolicName;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/SymbolicName$F;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Function name does not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v1, "http://ns.saxonica.com/anonymous-type"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->r:I

    if-nez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->r:I

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    iget v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->r:I

    :cond_0
    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/UserFunctionReference;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/UserFunctionReference;->getArity()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/UserFunctionReference;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/UserFunctionReference;->getArity()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    const-string v0, "http://ns.saxonica.com/anonymous-type"

    invoke-virtual {p2, v0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->r:I

    if-nez p2, :cond_0

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->r:I

    iget-object p2, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)V

    iget p1, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->r:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;->r:I

    :cond_0
    return-object p0
.end method
