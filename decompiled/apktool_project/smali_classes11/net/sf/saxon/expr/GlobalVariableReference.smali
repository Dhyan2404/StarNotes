.class public Lnet/sf/saxon/expr/GlobalVariableReference;
.super Lnet/sf/saxon/expr/VariableReference;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ComponentInvocation;


# instance fields
.field public s:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/VariableReference;-><init>(Lnet/sf/saxon/expr/Binding;)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lnet/sf/saxon/expr/GlobalVariableReference;->s:I

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/VariableReference;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lnet/sf/saxon/expr/GlobalVariableReference;->s:I

    return-void
.end method


# virtual methods
.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    iget-object p1, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    if-eqz p1, :cond_0

    new-instance p1, Lnet/sf/saxon/expr/GlobalVariableReference;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getVariableName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/GlobalVariableReference;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/VariableReference;->copyFrom(Lnet/sf/saxon/expr/VariableReference;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot copy a variable reference whose binding is unknown"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget v0, p0, Lnet/sf/saxon/expr/GlobalVariableReference;->s:I

    if-ltz v0, :cond_2

    .line 3
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lnet/sf/saxon/expr/GlobalVariableReference;->s:I

    invoke-interface {p1, v0}, Lnet/sf/saxon/expr/XPathContext;->getTargetComponent(I)Lnet/sf/saxon/expr/Component;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->isHiddenAbstractComponent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    .line 7
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/Component;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot evaluate an abstract variable ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getVariableName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") with no overriding declaration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XTDE3052"

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 11
    throw p1

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "No current component"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 13
    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    check-cast p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    .line 14
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/Component;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/GlobalVariableReference;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "gVarRef"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    const-string v0, "name"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getVariableName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/GlobalVariableReference;->getBindingSlot()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bSlot"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getBindingSlot()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/GlobalVariableReference;->s:I

    return p0
.end method

.method public getFixedTarget()Lnet/sf/saxon/expr/Component;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/GlobalVariableReference;->getTarget()Lnet/sf/saxon/expr/Component;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getPreconditions()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 2

    new-instance v0, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v1, 0xda

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getVariableName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    return-object v0
.end method

.method public getTarget()Lnet/sf/saxon/expr/Component;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    check-cast p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object p0

    return-object p0
.end method

.method public setBindingSlot(I)V
    .locals 2

    iget v0, p0, Lnet/sf/saxon/expr/GlobalVariableReference;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lnet/sf/saxon/expr/GlobalVariableReference;->s:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Duplicate binding slot assignment"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public setTarget(Lnet/sf/saxon/expr/Component;)V
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    iput-object p1, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    return-void
.end method
