.class public Lnet/sf/saxon/style/XSLGlobalVariable;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/style/StylesheetComponent;


# instance fields
.field protected compiledVariable:Lnet/sf/saxon/expr/instruct/GlobalVariable;

.field protected redundant:Z

.field protected sourceBinding:Lnet/sf/saxon/style/SourceBinding;

.field public u:Lnet/sf/saxon/expr/instruct/SlotManager;

.field public v:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->compiledVariable:Lnet/sf/saxon/expr/instruct/GlobalVariable;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->v:I

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->redundant:Z

    new-instance v0, Lnet/sf/saxon/style/SourceBinding;

    invoke-direct {v0, p0}, Lnet/sf/saxon/style/SourceBinding;-><init>(Lnet/sf/saxon/style/StyleElement;)V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object p0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->GLOBAL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lnet/sf/saxon/style/SourceBinding;->setProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;Z)V

    return-void
.end method


# virtual methods
.method public checkCompatibility(Lnet/sf/saxon/expr/Component;)V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLGlobalVariable;->getSourceBinding()Lnet/sf/saxon/style/SourceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/SourceBinding;->getDeclaredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/PackageData;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/type/TypeHierarchy;->sequenceTypeRelationship(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The declared type of the overriding variable $"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLGlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is different from that of the overridden variable"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XTSE3070"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public compileDeclaration(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->redundant:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/style/SourceBinding;->handleSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLGlobalVariable;->getCompiledVariable()Lnet/sf/saxon/expr/instruct/GlobalVariable;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p2, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-direct {p2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/Compilation;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/instruct/Actor;->obtainDeclaringComponent(Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Component;

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/style/SourceBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setStatic(Z)V

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/style/Compilation;->getStaticVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/style/SourceBinding;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/CompilerInfo;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/CompilerInfo;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object p1

    invoke-interface {p1, p2}, Lnet/sf/saxon/expr/parser/CodeInjector;->process(Lnet/sf/saxon/trace/TraceableComponent;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/style/XSLGlobalVariable;->initializeBinding(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLGlobalVariable;->isAssignable()Z

    move-result p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setAssignable(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLGlobalVariable;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/style/SourceBinding;->fixupBinding(Lnet/sf/saxon/expr/Binding;)V

    iput-object p2, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->compiledVariable:Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->C()Lnet/sf/saxon/expr/Component;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/XSLGlobalVariable;->checkCompatibility(Lnet/sf/saxon/expr/Component;)V

    :cond_4
    return-void
.end method

.method public fixupReferences()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->compiledVariable:Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/SourceBinding;->fixupReferences(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V

    invoke-super {p0}, Lnet/sf/saxon/style/StyleElement;->fixupReferences()V

    return-void
.end method

.method public generateByteCode(Lnet/sf/saxon/expr/parser/Optimizer;)V
    .locals 0

    return-void
.end method

.method public getActor()Lnet/sf/saxon/expr/instruct/Actor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLGlobalVariable;->getCompiledVariable()Lnet/sf/saxon/expr/instruct/GlobalVariable;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p0, Lnet/sf/saxon/style/XSLGlobalParam;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/instruct/GlobalParam;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/GlobalParam;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/style/Compilation;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/instruct/Actor;->obtainDeclaringComponent(Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Component;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/style/SourceBinding;->getDeclaredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setDeclaredVisibility(Lnet/sf/saxon/trans/Visibility;)V

    iget-object v1, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setLineNumber(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setColumnNumber(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_1
    iput-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->compiledVariable:Lnet/sf/saxon/expr/instruct/GlobalVariable;

    :cond_2
    return-object v0
.end method

.method public getBindingInformation(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCompiledVariable()Lnet/sf/saxon/expr/instruct/GlobalVariable;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->compiledVariable:Lnet/sf/saxon/expr/instruct/GlobalVariable;

    return-object p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getPermittedAttributes()Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lnet/sf/saxon/style/SourceBinding$BindingProperty;",
            ">;"
        }
    .end annotation

    sget-object p0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->ASSIGNABLE:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->SELECT:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->AS:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    sget-object v2, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->STATIC:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    sget-object v3, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->VISIBILITY:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-static {p0, v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public getRequiredType()Lnet/sf/saxon/value/SequenceType;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/SourceBinding;->getInferredType(Z)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public getSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->u:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-object p0
.end method

.method public getSourceBinding()Lnet/sf/saxon/style/SourceBinding;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    return-object p0
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 2

    new-instance v0, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v1, 0xda

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLGlobalVariable;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    return-object v0
.end method

.method public getVariableQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public index(Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2, p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->indexVariableDeclaration(Lnet/sf/saxon/style/ComponentDeclaration;)V

    return-void
.end method

.method public initializeBinding(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V
    .locals 4

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPackageData()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/style/StylesheetPackage;->getContextItemRequirements()Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getDefaultContextItemStaticInfo()Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->makeGlobalContextInfo(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v2

    :goto_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    move-object v1, v0

    :goto_1
    invoke-static {p0, v1}, Lnet/sf/saxon/style/StyleElement;->setInstructionLocation(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->m(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_2

    :cond_1
    move-object v1, v0

    :goto_2
    iget-object v2, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->u:Lnet/sf/saxon/expr/instruct/SlotManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v2

    if-lez v2, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->u:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setContainsLocals(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    :cond_2
    if-eq v1, v0, :cond_3

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    :cond_3
    return-void
.end method

.method public isAssignable()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->ASSIGNABLE:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result p0

    return p0
.end method

.method public isDeclaration()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isGlobal()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isTopLevel()Z

    move-result p0

    return p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public optimize(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean p1, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->redundant:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->compiledVariable:Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->compiledVariable:Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->optimizeComponentBody(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->m(Lnet/sf/saxon/expr/Expression;)V

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->u:Lnet/sf/saxon/expr/instruct/SlotManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->compiledVariable:Lnet/sf/saxon/expr/instruct/GlobalVariable;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->u:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setContainsLocals(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->compiledVariable:Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->compiledVariable:Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    :cond_1
    return-void
.end method

.method public postValidate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/style/SourceBinding;->postValidate()V

    return-void
.end method

.method public prepareAttributes()V
    .locals 4

    iget v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "Circular reference to variable"

    const-string v3, "XTDE0640"

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput v2, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->v:I

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLGlobalVariable;->getPermittedAttributes()Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/SourceBinding;->prepareAttributes(Ljava/util/EnumSet;)V

    iput v1, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->v:I

    return-void
.end method

.method public setRedundant(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->redundant:Z

    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->u:Lnet/sf/saxon/expr/instruct/SlotManager;

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/style/SourceBinding;->validate()V

    return-void
.end method
