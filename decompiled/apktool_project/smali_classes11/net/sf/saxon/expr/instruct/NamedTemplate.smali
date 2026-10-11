.class public Lnet/sf/saxon/expr/instruct/NamedTemplate;
.super Lnet/sf/saxon/expr/instruct/Actor;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trace/TraceableComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;
    }
.end annotation


# instance fields
.field public m:Lnet/sf/saxon/om/StructuredQName;

.field public n:Z

.field public o:Z

.field public p:Lnet/sf/saxon/value/SequenceType;

.field public q:Lnet/sf/saxon/type/ItemType;

.field public r:Z

.field public s:Z

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Actor;-><init>()V

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->q:Lnet/sf/saxon/type/ItemType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->r:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->s:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->t:Ljava/util/List;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->setTemplateName(Lnet/sf/saxon/om/StructuredQName;)V

    return-void
.end method


# virtual methods
.method public expand(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->r:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "The template requires a context item, but none has been supplied"

    const-string v0, "XTTE3090"

    invoke-direct {p1, p2, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, v2}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p1

    :cond_1
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->q:Lnet/sf/saxon/type/ItemType;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->q:Lnet/sf/saxon/type/ItemType;

    invoke-interface {v4, v0, v3}, Lnet/sf/saxon/type/ItemType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string p2, "context item for the named template"

    const/4 v1, 0x0

    const/16 v4, 0x14

    invoke-direct {p1, v4, p2, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->q:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p1, p2, v0, v3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "XTTE0590"

    invoke-direct {p2, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p2, v2}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p2

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->s:Z

    if-eqz v0, :cond_4

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object p2

    invoke-interface {p2, v1}, Lnet/sf/saxon/expr/XPathContext;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->o:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Actor;->body:Lnet/sf/saxon/expr/Expression;

    check-cast p0, Lnet/sf/saxon/expr/instruct/TailCallReturner;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/TailCallReturner;->processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Actor;->body:Lnet/sf/saxon/expr/Expression;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    :cond_6
    return-object v1
.end method

.method public explainProperties(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    const-string v1, "cxt"

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->r:Z

    const-string v1, ""

    if-eqz v0, :cond_1

    const-string v0, "o"

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-boolean v2, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->s:Z

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v2, "flags"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "as"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "line"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "template"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    const-string v0, "name"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->explainProperties(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slots"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "body"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
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

    const-string v0, "name"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getLocalParamDetails()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->t:Ljava/util/List;

    return-object p0
.end method

.method public getLocalParamInfo(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getLocalParamDetails()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;

    iget-object v1, v0, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->m:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->q:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public getRequiredType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->p:Lnet/sf/saxon/value/SequenceType;

    if-nez p0, :cond_0

    sget-object p0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    return-object p0
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v1, 0xd2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    return-object v0
.end method

.method public getTemplateName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->m:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getTracingTag()Ljava/lang/String;
    .locals 0

    const-string p0, "xsl:template"

    return-object p0
.end method

.method public hasRequiredParams()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->n:Z

    return p0
.end method

.method public isAbsentFocus()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->s:Z

    return p0
.end method

.method public isMayOmitContextItem()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->r:Z

    return p0
.end method

.method public setBody(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    instance-of p1, p1, Lnet/sf/saxon/expr/instruct/TailCallReturner;

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->o:Z

    return-void
.end method

.method public setContextItemRequirements(Lnet/sf/saxon/type/ItemType;ZZ)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->q:Lnet/sf/saxon/type/ItemType;

    iput-boolean p2, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->r:Z

    iput-boolean p3, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->s:Z

    return-void
.end method

.method public setHasRequiredParams(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->n:Z

    return-void
.end method

.method public setLocalParamDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->t:Ljava/util/List;

    return-void
.end method

.method public setRequiredType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->p:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public setTemplateName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;->m:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method
