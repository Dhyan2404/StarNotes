.class public Lnet/sf/saxon/trans/KeyDefinition;
.super Lnet/sf/saxon/expr/instruct/Actor;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ContextOriginator;


# instance fields
.field public final m:Lnet/sf/saxon/trans/SymbolicName;

.field public final n:Lnet/sf/saxon/pattern/Pattern;

.field public o:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public final p:Lnet/sf/saxon/lib/StringCollator;

.field public final q:Ljava/lang/String;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/Expression;Ljava/lang/String;Lnet/sf/saxon/lib/StringCollator;)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Actor;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/trans/KeyDefinition;->r:Z

    iput-boolean v0, p0, Lnet/sf/saxon/trans/KeyDefinition;->s:Z

    iput-boolean v0, p0, Lnet/sf/saxon/trans/KeyDefinition;->t:Z

    iput-boolean v0, p0, Lnet/sf/saxon/trans/KeyDefinition;->u:Z

    iput-boolean v0, p0, Lnet/sf/saxon/trans/KeyDefinition;->v:Z

    iput-object p1, p0, Lnet/sf/saxon/trans/KeyDefinition;->m:Lnet/sf/saxon/trans/SymbolicName;

    iput-object p2, p0, Lnet/sf/saxon/trans/KeyDefinition;->n:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p3}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    iput-object p5, p0, Lnet/sf/saxon/trans/KeyDefinition;->p:Lnet/sf/saxon/lib/StringCollator;

    iput-object p4, p0, Lnet/sf/saxon/trans/KeyDefinition;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public allocateAllBindingSlots(Lnet/sf/saxon/style/StylesheetPackage;)V
    .locals 2

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/instruct/Actor;->allocateAllBindingSlots(Lnet/sf/saxon/style/StylesheetPackage;)V

    iget-object v0, p0, Lnet/sf/saxon/trans/KeyDefinition;->n:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getComponentBindings()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, p0, v0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->allocateBindingSlotsRecursive(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/instruct/Actor;Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V

    return-void
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 31
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;ZLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trace/ExpressionPresenter;",
            "Z",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/expr/Component;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    const-string v0, "name"

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/trans/KeyDefinition;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    const-string v0, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    .line 3
    iget-object v1, p0, Lnet/sf/saxon/trans/KeyDefinition;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "collation"

    .line 4
    iget-object v1, p0, Lnet/sf/saxon/trans/KeyDefinition;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
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

    .line 6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v0

    if-eqz v0, :cond_1

    .line 8
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

    :cond_1
    if-eqz p3, :cond_2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v2

    invoke-virtual {v2, p3}, Lnet/sf/saxon/expr/Component;->listComponentReferences(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "binds"

    invoke-virtual {p1, v0, p3}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-boolean p3, p0, Lnet/sf/saxon/trans/KeyDefinition;->r:Z

    if-eqz p3, :cond_3

    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "b"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_3
    move-object p3, v1

    .line 12
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/trans/KeyDefinition;->isRangeKey()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "r"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "range"

    const-string v2, "1"

    .line 14
    invoke-virtual {p1, v0, v2}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_4
    iget-object v0, p0, Lnet/sf/saxon/trans/KeyDefinition;->n:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/type/UType;->ATTRIBUTE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "a"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 17
    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/trans/KeyDefinition;->n:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/type/UType;->NAMESPACE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "n"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 19
    :cond_6
    iget-boolean v0, p0, Lnet/sf/saxon/trans/KeyDefinition;->v:Z

    if-eqz v0, :cond_7

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "c"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_7
    if-eqz p2, :cond_8

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "u"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 22
    :cond_8
    iget-boolean p2, p0, Lnet/sf/saxon/trans/KeyDefinition;->t:Z

    if-eqz p2, :cond_9

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "v"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 24
    :cond_9
    iget-boolean p2, p0, Lnet/sf/saxon/trans/KeyDefinition;->s:Z

    if-eqz p2, :cond_a

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "s"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 26
    :cond_a
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "flags"

    .line 27
    invoke-virtual {p1, p2, p3}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_b
    invoke-virtual {p0}, Lnet/sf/saxon/trans/KeyDefinition;->getMatch()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/sf/saxon/pattern/Pattern;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    .line 29
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    .line 30
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getCollation()Lnet/sf/saxon/lib/StringCollator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyDefinition;->p:Lnet/sf/saxon/lib/StringCollator;

    return-object p0
.end method

.method public getCollationName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyDefinition;->q:Ljava/lang/String;

    return-object p0
.end method

.method public getIndexedItemType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyDefinition;->o:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-nez p0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_0
    return-object p0
.end method

.method public getMatch()Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyDefinition;->n:Lnet/sf/saxon/pattern/Pattern;

    return-object p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyDefinition;->m:Lnet/sf/saxon/trans/SymbolicName;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyDefinition;->m:Lnet/sf/saxon/trans/SymbolicName;

    return-object p0
.end method

.method public getUse()Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public isBackwardsCompatible()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/KeyDefinition;->r:Z

    return p0
.end method

.method public isComposite()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/KeyDefinition;->v:Z

    return p0
.end method

.method public isConvertUntypedToOther()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/KeyDefinition;->t:Z

    return p0
.end method

.method public isRangeKey()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/KeyDefinition;->u:Z

    return p0
.end method

.method public isStrictComparison()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/KeyDefinition;->s:Z

    return p0
.end method

.method public setBackwardsCompatible(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/KeyDefinition;->r:Z

    return-void
.end method

.method public setComposite(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/KeyDefinition;->v:Z

    return-void
.end method

.method public setConvertUntypedToOther(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/KeyDefinition;->t:Z

    return-void
.end method

.method public setIndexedItemType(Lnet/sf/saxon/type/BuiltInAtomicType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/KeyDefinition;->o:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-void
.end method

.method public setLocation(Lnet/sf/saxon/s9api/Location;)V
    .locals 1

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setSystemId(Ljava/lang/String;)V

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setLineNumber(I)V

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setColumnNumber(I)V

    return-void
.end method

.method public setRangeKey(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/KeyDefinition;->u:Z

    return-void
.end method

.method public setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    :cond_0
    return-void
.end method

.method public setStrictComparison(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/KeyDefinition;->s:Z

    return-void
.end method
