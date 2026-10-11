.class public Lnet/sf/saxon/expr/instruct/AttributeSet;
.super Lnet/sf/saxon/expr/instruct/Actor;
.source "SourceFile"


# instance fields
.field public m:Lnet/sf/saxon/om/StructuredQName;

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Actor;-><init>()V

    return-void
.end method


# virtual methods
.method public expand(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XsltController;->getAttributeSetEvaluationStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XsltController;->releaseAttributeSetEvaluationStack()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attribute set "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeSet;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " invokes itself recursively"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "XTDE0640"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "attributeSet"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    const-string v0, "name"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeSet;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "line"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "slots"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Component;->getComponentBindings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binds"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeSet;->isDeclaredStreamable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "flags"

    const-string v1, "s"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getFocusDependencies()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Actor;->body:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result p0

    and-int/lit8 p0, p0, 0x1e

    return p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/AttributeSet;->m:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 2

    new-instance v0, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v1, 0x8a

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/AttributeSet;->m:Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    return-object v0
.end method

.method public isDeclaredStreamable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/AttributeSet;->n:Z

    return p0
.end method

.method public setDeclaredStreamable(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/AttributeSet;->n:Z

    return-void
.end method

.method public setName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/AttributeSet;->m:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    :cond_0
    return-void
.end method
