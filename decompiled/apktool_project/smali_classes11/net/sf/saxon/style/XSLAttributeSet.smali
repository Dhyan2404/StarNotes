.class public Lnet/sf/saxon/style/XSLAttributeSet;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/style/StylesheetComponent;


# instance fields
.field public final J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;"
        }
    .end annotation
.end field

.field public O:Z

.field public Q:Lnet/sf/saxon/trans/Visibility;

.field public Z:Z

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Lnet/sf/saxon/expr/instruct/SlotManager;

.field public final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/ComponentDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field public z:[Lnet/sf/saxon/om/StructuredQName;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAttributeSet;->y:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAttributeSet;->J:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLAttributeSet;->O:Z

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLAttributeSet;->Z:Z

    return-void
.end method


# virtual methods
.method public checkCircularity(Lnet/sf/saxon/style/XSLAttributeSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const-string p1, "The definition of the attribute set is circular"

    const-string v0, "XTSE0720"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lnet/sf/saxon/style/XSLAttributeSet;->O:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/style/XSLAttributeSet;->y:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/style/XSLAttributeSet;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/style/XSLAttributeSet;->checkCircularity(Lnet/sf/saxon/style/XSLAttributeSet;)V

    iget-boolean v2, p0, Lnet/sf/saxon/style/XSLAttributeSet;->Z:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lnet/sf/saxon/style/XSLAttributeSet;->Z:Z

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute-set is declared streamable but references a non-streamable attribute set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLAttributeSet;->getAttributeSetName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XTSE3430"

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public checkCompatibility(Lnet/sf/saxon/expr/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/instruct/AttributeSet;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/AttributeSet;->isDeclaredStreamable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAttributeSet;->isDeclaredStreamable()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "The overridden attribute set is declared streamable, so the overriding attribute set must also be declared streamable"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public compileDeclaration(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->F(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->v:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->z:[Lnet/sf/saxon/om/StructuredQName;

    invoke-static {v1, p0}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->makeUseAttributeSetInstructions([Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/style/StyleElement;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/style/XSLAttributeSet;->J:Ljava/util/List;

    invoke-static {v1}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->makeCompositeExpression(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->z:[Lnet/sf/saxon/om/StructuredQName;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v5

    iget-object v6, p0, Lnet/sf/saxon/style/XSLAttributeSet;->y:Ljava/util/List;

    invoke-virtual {v5, v4, v6}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getAttributeSets(Lnet/sf/saxon/om/StructuredQName;Ljava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v2}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/XSLAttributeSet;

    invoke-virtual {v2, p0}, Lnet/sf/saxon/style/XSLAttributeSet;->checkCircularity(Lnet/sf/saxon/style/XSLAttributeSet;)V

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->Z:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v2}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/XSLAttributeSet;

    iget-boolean v2, v2, Lnet/sf/saxon/style/XSLAttributeSet;->Z:Z

    if-nez v2, :cond_4

    const-string v2, "Attribute set is declared streamable, but references an attribute set that is not declared streamable"

    const-string v3, "XTSE0730"

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x3

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/XSLAttribute;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/style/XSLAttribute;->compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/instruct/Instruction;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {p0, v2}, Lnet/sf/saxon/style/StyleElement;->setInstructionLocation(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/expr/Expression;)V

    iget-object v3, p0, Lnet/sf/saxon/style/XSLAttributeSet;->J:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->V(I)V

    return-void
.end method

.method public generateByteCode(Lnet/sf/saxon/expr/parser/Optimizer;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic getActor()Lnet/sf/saxon/expr/instruct/Actor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAttributeSet;->getActor()Lnet/sf/saxon/expr/instruct/AttributeSet;

    move-result-object p0

    return-object p0
.end method

.method public getActor()Lnet/sf/saxon/expr/instruct/AttributeSet;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v2, 0x8a

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAttributeSet;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    .line 4
    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/AttributeSet;

    return-object p0
.end method

.method public getAttributeSetName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAttributeSet;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getContainedInstructions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/XSLAttributeSet;->J:Ljava/util/List;

    return-object p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/style/StyleElement;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAttributeSet;->prepareAttributes()V

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAttributeSet;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLAttributeSet;->x:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-object p0
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 2

    new-instance v0, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v1, 0x8a

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAttributeSet;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    return-object v0
.end method

.method public getUseAttributeSetNames()[Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLAttributeSet;->z:[Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public index(Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2, p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->indexAttributeSet(Lnet/sf/saxon/style/ComponentDeclaration;)V

    return-void
.end method

.method public isDeclaration()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isDeclaredStreamable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/XSLAttributeSet;->Z:Z

    return p0
.end method

.method public optimize(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public prepareAttributes()V
    .locals 9

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAttributeSet;->v:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "name"

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v5

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "visibility"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x3

    goto :goto_1

    :sswitch_1
    const-string v4, "use-attribute-sets"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x2

    goto :goto_1

    :sswitch_2
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    goto :goto_1

    :sswitch_3
    const-string v4, "streamable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    packed-switch v8, :pswitch_data_0

    invoke-virtual {p0, v5}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :pswitch_0
    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/style/XSLAttributeSet;->w:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iput-object v3, p0, Lnet/sf/saxon/style/XSLAttributeSet;->v:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/style/XSLAttributeSet;->u:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    move-object v2, v3

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->u:Ljava/lang/String;

    const-string v3, ""

    if-nez v1, :cond_5

    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "attribute-set-error-name"

    invoke-direct {v0, v3, v3, v1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->setObjectName(Lnet/sf/saxon/om/StructuredQName;)V

    return-void

    :cond_5
    iget-object v1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->w:Ljava/lang/String;

    if-nez v1, :cond_6

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    iput-object v1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->Q:Lnet/sf/saxon/trans/Visibility;

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/style/StyleElement;->E(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/trans/Visibility;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->Q:Lnet/sf/saxon/trans/Visibility;

    :goto_2
    if-eqz v2, :cond_7

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->U(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->Z:Z

    :cond_7
    iget-object v1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->u:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v4}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->setObjectName(Lnet/sf/saxon/om/StructuredQName;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4730db26 -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x656fd1e8 -> :sswitch_1
        0x73b66312 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean p1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->O:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "XTSE0010"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->checkTopLevel(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->x:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    instance-of v2, v2, Lnet/sf/saxon/style/XSLAttribute;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/style/XSLAttributeSet;->Q:Lnet/sf/saxon/trans/Visibility;

    sget-object v3, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-ne v2, v3, :cond_1

    const-string v2, "An abstract attribute-set must contain no xsl:attribute instructions"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "Only xsl:attribute is allowed within xsl:attribute-set"

    invoke-virtual {p0, v2, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->v:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->Q:Lnet/sf/saxon/trans/Visibility;

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-ne p1, v1, :cond_4

    const-string p1, "An abstract attribute-set must have no @use-attribute-sets attribute"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->v:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->D(Ljava/lang/String;)[Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAttributeSet;->z:[Lnet/sf/saxon/om/StructuredQName;

    :cond_5
    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLAttributeSet;->O:Z

    return-void
.end method
