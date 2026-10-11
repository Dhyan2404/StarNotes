.class public abstract Lnet/sf/saxon/expr/VariableReference;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/BindingReference;


# static fields
.field public static final synthetic r:Z


# instance fields
.field protected binding:Lnet/sf/saxon/expr/Binding;

.field protected constantValue:Lnet/sf/saxon/om/GroundedValue;

.field public n:Lnet/sf/saxon/om/StructuredQName;

.field public o:Z

.field public p:Z

.field public q:Z

.field protected staticType:Lnet/sf/saxon/value/SequenceType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Binding;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    .line 11
    iput-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->staticType:Lnet/sf/saxon/value/SequenceType;

    .line 12
    iput-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->constantValue:Lnet/sf/saxon/om/GroundedValue;

    .line 13
    iput-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lnet/sf/saxon/expr/VariableReference;->o:Z

    .line 15
    iput-boolean v0, p0, Lnet/sf/saxon/expr/VariableReference;->p:Z

    .line 16
    iput-boolean v0, p0, Lnet/sf/saxon/expr/VariableReference;->q:Z

    .line 17
    invoke-interface {p1}, Lnet/sf/saxon/expr/Binding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    .line 18
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/VariableReference;->fixup(Lnet/sf/saxon/expr/Binding;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    .line 3
    iput-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->staticType:Lnet/sf/saxon/value/SequenceType;

    .line 4
    iput-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->constantValue:Lnet/sf/saxon/om/GroundedValue;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lnet/sf/saxon/expr/VariableReference;->o:Z

    .line 6
    iput-boolean v0, p0, Lnet/sf/saxon/expr/VariableReference;->p:Z

    .line 7
    iput-boolean v0, p0, Lnet/sf/saxon/expr/VariableReference;->q:Z

    .line 8
    iput-object p1, p0, Lnet/sf/saxon/expr/VariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/expr/VariableReference;->e(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic e(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/high16 v0, 0x80000

    invoke-virtual {p0, p2, p1, v0}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getBinding()Lnet/sf/saxon/expr/Binding;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/parser/PathMap;->getPathForVariable(Lnet/sf/saxon/expr/Binding;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p0

    return-object p0
.end method

.method public computeCardinality()I
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->staticType:Lnet/sf/saxon/value/SequenceType;

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    const v1, 0xe000

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Lnet/sf/saxon/expr/LetExpression;

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/expr/Binding;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    return p0

    :cond_1
    instance-of v2, v0, Lnet/sf/saxon/expr/Assignation;

    if-eqz v2, :cond_2

    const/16 p0, 0x4000

    return p0

    :cond_2
    invoke-interface {v0}, Lnet/sf/saxon/expr/Binding;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    invoke-interface {p0}, Lnet/sf/saxon/expr/Binding;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    return p0

    :cond_4
    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    return p0
.end method

.method public computeHashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    if-nez p0, :cond_0

    const p0, 0x4635976

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public computeSpecialProperties()I
    .locals 3

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->computeSpecialProperties()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lnet/sf/saxon/expr/Binding;->isAssignable()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    instance-of v2, v1, Lnet/sf/saxon/expr/Assignation;

    if-eqz v2, :cond_2

    check-cast v1, Lnet/sf/saxon/expr/Assignation;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v1

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/expr/VariableReference;->staticType:Lnet/sf/saxon/value/SequenceType;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->staticType:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz p0, :cond_3

    const/high16 p0, 0x1000000

    or-int/2addr v0, p0

    :cond_3
    const p0, -0x400001

    and-int/2addr p0, v0

    return p0
.end method

.method public abstract copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
.end method

.method public copyFrom(Lnet/sf/saxon/expr/VariableReference;)V
    .locals 1

    iget-object v0, p1, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    iput-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    iget-object v0, p1, Lnet/sf/saxon/expr/VariableReference;->staticType:Lnet/sf/saxon/value/SequenceType;

    iput-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->staticType:Lnet/sf/saxon/value/SequenceType;

    iget-object v0, p1, Lnet/sf/saxon/expr/VariableReference;->constantValue:Lnet/sf/saxon/om/GroundedValue;

    iput-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->constantValue:Lnet/sf/saxon/om/GroundedValue;

    iget-object v0, p1, Lnet/sf/saxon/expr/VariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    iput-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    iget-boolean v0, p1, Lnet/sf/saxon/expr/VariableReference;->o:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/VariableReference;->o:Z

    iget-boolean v0, p1, Lnet/sf/saxon/expr/VariableReference;->p:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/VariableReference;->p:Z

    iget-boolean v0, p1, Lnet/sf/saxon/expr/VariableReference;->q:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/VariableReference;->q:Z

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    check-cast p1, Lnet/sf/saxon/expr/VariableReference;

    iget-object p1, p1, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    if-ne p0, p1, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/VariableReference;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method

.method public evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    invoke-interface {v0, p1}, Lnet/sf/saxon/expr/Binding;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Variable $"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has not been fixed up"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    throw p1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "varRef"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    const-string v0, "name"

    iget-object v1, p0, Lnet/sf/saxon/expr/VariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    instance-of v0, v0, Lnet/sf/saxon/expr/LocalBinding;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    check-cast p0, Lnet/sf/saxon/expr/LocalBinding;

    invoke-interface {p0}, Lnet/sf/saxon/expr/LocalBinding;->getLocalSlotNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "slot"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public fixup(Lnet/sf/saxon/expr/Binding;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    instance-of v1, v0, Lnet/sf/saxon/expr/LocalBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/expr/LocalBinding;

    invoke-interface {v0}, Lnet/sf/saxon/expr/LocalBinding;->isIndexedVariable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lnet/sf/saxon/expr/LocalBinding;

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/expr/LocalBinding;

    invoke-interface {p1}, Lnet/sf/saxon/expr/LocalBinding;->setIndexedVariable()V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    return-void
.end method

.method public getBinding()Lnet/sf/saxon/expr/Binding;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/expr/Binding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEQName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/expr/Binding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "varRef"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    or-int/lit8 p0, p0, 0x2

    or-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/expr/Binding;->getIntegerBoundsForVariable()[Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIntrinsicDependencies()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    if-nez v0, :cond_0

    const/16 p0, 0x680

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/expr/Binding;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    invoke-interface {v0}, Lnet/sf/saxon/expr/Binding;->isAssignable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x200

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    instance-of p0, p0, Lnet/sf/saxon/expr/instruct/GlobalParam;

    if-eqz p0, :cond_2

    or-int/lit16 p0, v0, 0x400

    goto :goto_1

    :cond_2
    move p0, v0

    goto :goto_1

    :cond_3
    const/16 p0, 0x80

    :goto_1
    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->staticType:Lnet/sf/saxon/value/SequenceType;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->staticType:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lnet/sf/saxon/expr/Binding;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public getNetCost()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScopingExpression()Lnet/sf/saxon/expr/Expression;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    instance-of v1, v0, Lnet/sf/saxon/expr/Expression;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lnet/sf/saxon/expr/instruct/LocalParam;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/expr/instruct/LocalParam;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/instruct/LocalParamBlock;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    check-cast p0, Lnet/sf/saxon/expr/instruct/LocalParam;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/LocalParamBlock;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    check-cast p0, Lnet/sf/saxon/expr/Expression;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->hasVariableBinding(Lnet/sf/saxon/expr/Binding;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lnet/sf/saxon/expr/Binding;->isGlobal()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    instance-of v1, v0, Lnet/sf/saxon/expr/instruct/LocalParam;

    if-nez v1, :cond_2

    instance-of v1, v0, Lnet/sf/saxon/expr/LetExpression;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/expr/LetExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/LetExpression;->isInstruction()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    instance-of v1, v0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of p0, v0, Lnet/sf/saxon/expr/Assignation;

    if-eqz p0, :cond_4

    check-cast v0, Lnet/sf/saxon/expr/Assignation;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    invoke-interface {p0}, Lnet/sf/saxon/expr/Binding;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Lnet/sf/saxon/type/UType;->ANY:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_4
    sget-object p0, Lnet/sf/saxon/type/UType;->ANY:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "VariableReference"

    return-object p0
.end method

.method public getVariableName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/VariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public isFiltered()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/VariableReference;->q:Z

    return p0
.end method

.method public isFlattened()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/VariableReference;->o:Z

    return p0
.end method

.method public isInLoop()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/VariableReference;->p:Z

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, " of "

    const-string v2, " at line "

    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/VariableReference;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Variable reference $"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/lib/StandardDiagnostics;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardDiagnostics;-><init>()V

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v3}, Lnet/sf/saxon/lib/StandardDiagnostics;->logStackTrace(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/Logger;I)V

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Internal error: no value for variable $"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/lib/StandardDiagnostics;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardDiagnostics;-><init>()V

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v3}, Lnet/sf/saxon/lib/StandardDiagnostics;->logStackTrace(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/Logger;I)V

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catch_2
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    instance-of v0, p2, Lnet/sf/saxon/expr/LetExpression;

    const-string v1, "Replaced variable "

    const-string v2, " by its value"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Lnet/sf/saxon/expr/LetExpression;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/expr/Literal;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    move-object v0, p2

    check-cast v0, Lnet/sf/saxon/expr/LetExpression;

    iget-boolean v0, v0, Lnet/sf/saxon/expr/Assignation;->indexedVariable:Z

    if-nez v0, :cond_0

    check-cast p2, Lnet/sf/saxon/expr/LetExpression;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Lnet/sf/saxon/Configuration;Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    iput-object v3, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    new-instance p0, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {p0}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p2, p0, Lnet/sf/saxon/expr/VariableReference;->constantValue:Lnet/sf/saxon/om/GroundedValue;

    if-eqz p2, :cond_1

    iput-object v3, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    invoke-static {p2, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p2

    invoke-static {p0, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Lnet/sf/saxon/Configuration;Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    return-object p2

    :cond_1
    iget-object p2, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    instance-of v0, p2, Lnet/sf/saxon/expr/instruct/GlobalParam;

    if-eqz v0, :cond_2

    check-cast p2, Lnet/sf/saxon/expr/instruct/GlobalParam;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->isStatic()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    check-cast p2, Lnet/sf/saxon/expr/instruct/GlobalParam;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of v0, p2, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_2

    iput-object v3, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Replaced static parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Lnet/sf/saxon/Configuration;Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    new-instance p0, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {p0}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/VariableReference;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/l0o;

    invoke-direct {v1, p1, v0}, Lcom/sunia/HTREnginev2/l0o;-><init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/s9api/Location;)V

    invoke-static {p2, v1}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method

.method public recomputeInLoop()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->isLoopingReference(Lnet/sf/saxon/expr/VariableReference;Lnet/sf/saxon/expr/Binding;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/VariableReference;->p:Z

    return-void
.end method

.method public refineVariableType(Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/GroundedValue;I)V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v1, v1, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v1, :cond_1

    instance-of v1, p1, Lnet/sf/saxon/type/AtomicType;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    and-int/2addr p2, v0

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p2

    :cond_2
    invoke-static {p1, p2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lnet/sf/saxon/expr/VariableReference;->setStaticType(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/GroundedValue;I)V

    return-void
.end method

.method public setFiltered(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/VariableReference;->q:Z

    return-void
.end method

.method public setFlattened(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/VariableReference;->o:Z

    return-void
.end method

.method public setInLoop(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/VariableReference;->p:Z

    return-void
.end method

.method public setStaticType(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/GroundedValue;I)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    iput-object p1, p0, Lnet/sf/saxon/expr/VariableReference;->staticType:Lnet/sf/saxon/value/SequenceType;

    iput-object p2, p0, Lnet/sf/saxon/expr/VariableReference;->constantValue:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result p2

    const v0, -0x10001

    and-int/2addr p3, v0

    const v0, -0x400001

    and-int/2addr p3, v0

    const/high16 v0, 0x800000

    or-int/2addr p3, v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p1

    or-int/2addr p1, p3

    or-int/2addr p1, p2

    iput p1, p0, Lnet/sf/saxon/expr/Expression;->staticProperties:I

    return-void
.end method

.method public setVariableName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/VariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getEQName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    move-object p0, v1

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p1, p0, Lnet/sf/saxon/expr/VariableReference;->constantValue:Lnet/sf/saxon/om/GroundedValue;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->recomputeInLoop()V

    iget-object p1, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    iget-boolean p2, p0, Lnet/sf/saxon/expr/VariableReference;->p:Z

    invoke-interface {p1, p0, p2}, Lnet/sf/saxon/expr/Binding;->addReference(Lnet/sf/saxon/expr/VariableReference;Z)V

    :cond_1
    return-object p0
.end method
