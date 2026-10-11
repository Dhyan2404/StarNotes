.class public Lnet/sf/saxon/expr/instruct/UseAttributeSet;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ComponentInvocation;
.implements Lnet/sf/saxon/expr/ContextOriginator;


# instance fields
.field public final n:Lnet/sf/saxon/om/StructuredQName;

.field public o:Lnet/sf/saxon/expr/instruct/AttributeSet;

.field public final p:Z

.field public q:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;Z)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->q:I

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->n:Lnet/sf/saxon/om/StructuredQName;

    iput-boolean p2, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->p:Z

    return-void
.end method

.method public static d(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/instruct/UseAttributeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8a

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    const-string v2, "original"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lnet/sf/saxon/style/StyleElement;->getXslOriginal(I)Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/AttributeSet;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    new-instance v2, Lnet/sf/saxon/trans/SymbolicName;

    invoke-direct {v2, v1, p0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getAttributeSetDeclarations(Lnet/sf/saxon/om/StructuredQName;)Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown attribute set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "XTSE0710"

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/AttributeSet;

    :goto_0
    new-instance v1, Lnet/sf/saxon/expr/instruct/UseAttributeSet;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/AttributeSet;->isDeclaredStreamable()Z

    move-result v2

    invoke-direct {v1, p0, v2}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;-><init>(Lnet/sf/saxon/om/StructuredQName;Z)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->setTarget(Lnet/sf/saxon/expr/instruct/AttributeSet;)V

    const/4 p0, -0x1

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->setBindingSlot(I)V

    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-object v1
.end method

.method public static makeCompositeExpression(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/instruct/UseAttributeSet;",
            ">;)",
            "Lnet/sf/saxon/expr/Expression;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/Expression;

    return-object p0

    :cond_1
    new-instance v0, Lnet/sf/saxon/expr/instruct/Block;

    new-array v1, v2, [Lnet/sf/saxon/expr/instruct/UseAttributeSet;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/expr/Expression;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public static makeUseAttributeSetInstructions([Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/style/StyleElement;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/style/StyleElement;",
            ")",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/instruct/UseAttributeSet;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->d(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/instruct/UseAttributeSet;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static makeUseAttributeSets([Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->makeUseAttributeSetInstructions([Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/style/StyleElement;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->makeCompositeExpression(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public computeHashCode()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->n:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->hashCode()I

    move-result p0

    const v0, 0x56423719

    xor-int/2addr p0, v0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance p1, Lnet/sf/saxon/expr/instruct/UseAttributeSet;

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->n:Lnet/sf/saxon/om/StructuredQName;

    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->p:Z

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;-><init>(Lnet/sf/saxon/om/StructuredQName;Z)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->o:Lnet/sf/saxon/expr/instruct/AttributeSet;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->setTarget(Lnet/sf/saxon/expr/instruct/AttributeSet;)V

    iget p0, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->q:I

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->setBindingSlot(I)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/expr/instruct/UseAttributeSet;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->n:Lnet/sf/saxon/om/StructuredQName;

    check-cast p1, Lnet/sf/saxon/expr/instruct/UseAttributeSet;

    iget-object p1, p1, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->n:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "useAS"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    const-string v0, "name"

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->n:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->getBindingSlot()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bSlot"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->isDeclaredStreamable()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "flags"

    const-string v0, "s"

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getBindingSlot()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->q:I

    return p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "useAS"

    return-object p0
.end method

.method public getFixedTarget()Lnet/sf/saxon/expr/Component;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->o:Lnet/sf/saxon/expr/instruct/AttributeSet;

    if-eqz v0, :cond_0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->q:I

    if-gez p0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    const/16 p0, 0x27f

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "UseAttributeSet"

    return-object p0
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 2

    new-instance v0, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v1, 0x8a

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->n:Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    return-object v0
.end method

.method public getTargetAttributeSet()Lnet/sf/saxon/expr/instruct/AttributeSet;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->o:Lnet/sf/saxon/expr/instruct/AttributeSet;

    return-object p0
.end method

.method public getTargetAttributeSetName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->n:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public isDeclaredStreamable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->p:Z

    return p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p0
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->q:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->getFixedTarget()Lnet/sf/saxon/expr/Component;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Lnet/sf/saxon/expr/XPathContext;->getTargetComponent(I)Lnet/sf/saxon/expr/Component;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->isHiddenAbstractComponent()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/AttributeSet;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p2

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lnet/sf/saxon/expr/instruct/SlotManager;->EMPTY:Lnet/sf/saxon/expr/instruct/SlotManager;

    :cond_1
    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/instruct/AttributeSet;->expand(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to locate attribute set "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->getTargetAttributeSetName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot expand an abstract attribute set ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->n:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") with no implementation"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "XTDE3052"

    invoke-direct {p1, p2, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method

.method public setBindingSlot(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->q:I

    return-void
.end method

.method public setTarget(Lnet/sf/saxon/expr/instruct/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->o:Lnet/sf/saxon/expr/instruct/AttributeSet;

    return-void
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p0
.end method
