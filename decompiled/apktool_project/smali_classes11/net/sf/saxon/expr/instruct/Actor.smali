.class public abstract Lnet/sf/saxon/expr/instruct/Actor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ExpressionOwner;
.implements Lnet/sf/saxon/s9api/Location;


# instance fields
.field protected body:Lnet/sf/saxon/expr/Expression;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Lnet/sf/saxon/expr/instruct/SlotManager;

.field public i:Lnet/sf/saxon/expr/PackageData;

.field public j:Lnet/sf/saxon/expr/Component;

.field public k:Lnet/sf/saxon/trans/Visibility;

.field public l:Lnet/sf/saxon/expr/parser/RetainedStaticContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Actor;->k:Lnet/sf/saxon/trans/Visibility;

    return-void
.end method

.method public static allocateBindingSlotsRecursive(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/instruct/Actor;Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/style/StylesheetPackage;",
            "Lnet/sf/saxon/expr/instruct/Actor;",
            "Lnet/sf/saxon/expr/Expression;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/ComponentBinding;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p2, Lnet/sf/saxon/expr/ComponentInvocation;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lnet/sf/saxon/expr/ComponentInvocation;

    invoke-virtual {p1, p0, v0, p3}, Lnet/sf/saxon/expr/instruct/Actor;->a(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/ComponentInvocation;Ljava/util/List;)V

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lnet/sf/saxon/expr/instruct/Actor;->allocateBindingSlotsRecursive(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/instruct/Actor;Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/ComponentInvocation;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/style/StylesheetPackage;",
            "Lnet/sf/saxon/expr/ComponentInvocation;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/ComponentBinding;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/ComponentInvocation;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v2, v3}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    const-string v3, "original"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/style/StylesheetPackage;->getOverriddenComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    invoke-interface {p2}, Lnet/sf/saxon/expr/ComponentInvocation;->getBindingSlot()I

    move-result p0

    if-gez p0, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    new-instance p1, Lnet/sf/saxon/expr/ComponentBinding;

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/expr/ComponentBinding;-><init>(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/expr/Component;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, p0}, Lnet/sf/saxon/expr/ComponentInvocation;->setBindingSlot(I)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "**** Component reference "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is already bound"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Target of component reference "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is undefined"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public allocateAllBindingSlots(Lnet/sf/saxon/style/StylesheetPackage;)V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Actor;->i:Lnet/sf/saxon/expr/PackageData;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->isXSLT()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getComponentBindings()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, p0, v0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->allocateBindingSlotsRecursive(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/instruct/Actor;Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public abstract export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public final getBody()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Actor;->body:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public final getChildExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/Actor;->g:I

    return p0
.end method

.method public getComponentName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Actor;->k:Lnet/sf/saxon/trans/Visibility;

    return-object p0
.end method

.method public getDeclaringComponent()Lnet/sf/saxon/expr/Component;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Actor;->j:Lnet/sf/saxon/expr/Component;

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/Actor;->f:I

    return p0
.end method

.method public getLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public getPackageData()Lnet/sf/saxon/expr/PackageData;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Actor;->i:Lnet/sf/saxon/expr/PackageData;

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Actor;->l:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    return-object p0
.end method

.method public getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Actor;->h:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-object p0
.end method

.method public abstract getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Actor;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getTracingTag()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/SymbolicName;->getComponentKind()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/om/StandardNames;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isExportable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public makeDeclaringComponent(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Actor;->j:Lnet/sf/saxon/expr/Component;

    if-nez v0, :cond_0

    sget-object v0, Lnet/sf/saxon/trans/VisibilityProvenance;->DEFAULTED:Lnet/sf/saxon/trans/VisibilityProvenance;

    invoke-static {p0, p1, v0, p2, p2}, Lnet/sf/saxon/expr/Component;->makeComponent(Lnet/sf/saxon/expr/instruct/Actor;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/VisibilityProvenance;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Actor;->j:Lnet/sf/saxon/expr/Component;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Actor;->j:Lnet/sf/saxon/expr/Component;

    return-object p0
.end method

.method public obtainDeclaringComponent(Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Component;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Actor;->j:Lnet/sf/saxon/expr/Component;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    instance-of v1, p1, Lnet/sf/saxon/style/XSLGlobalParam;

    if-eqz v1, :cond_0

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->PUBLIC:Lnet/sf/saxon/trans/Visibility;

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p1

    sget-object v2, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    if-ne p1, v2, :cond_2

    sget-object p1, Lnet/sf/saxon/trans/VisibilityProvenance;->DEFAULTED:Lnet/sf/saxon/trans/VisibilityProvenance;

    goto :goto_2

    :cond_2
    sget-object p1, Lnet/sf/saxon/trans/VisibilityProvenance;->EXPLICIT:Lnet/sf/saxon/trans/VisibilityProvenance;

    :goto_2
    invoke-static {p0, v1, p1, v0, v0}, Lnet/sf/saxon/expr/Component;->makeComponent(Lnet/sf/saxon/expr/instruct/Actor;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/VisibilityProvenance;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Actor;->j:Lnet/sf/saxon/expr/Component;

    :cond_3
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Actor;->j:Lnet/sf/saxon/expr/Component;

    return-object p0
.end method

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public setBody(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Actor;->body:Lnet/sf/saxon/expr/Expression;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    return-void
.end method

.method public setChildExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setColumnNumber(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/Actor;->g:I

    return-void
.end method

.method public setDeclaredVisibility(Lnet/sf/saxon/trans/Visibility;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Actor;->k:Lnet/sf/saxon/trans/Visibility;

    return-void
.end method

.method public setDeclaringComponent(Lnet/sf/saxon/expr/Component;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Actor;->j:Lnet/sf/saxon/expr/Component;

    return-void
.end method

.method public setLineNumber(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/Actor;->f:I

    return-void
.end method

.method public setPackageData(Lnet/sf/saxon/expr/PackageData;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Actor;->i:Lnet/sf/saxon/expr/PackageData;

    return-void
.end method

.method public setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Actor;->l:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    return-void
.end method

.method public setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Actor;->h:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Actor;->e:Ljava/lang/String;

    return-void
.end method
