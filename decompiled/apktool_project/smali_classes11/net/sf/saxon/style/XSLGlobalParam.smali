.class public Lnet/sf/saxon/style/XSLGlobalParam;
.super Lnet/sf/saxon/style/XSLGlobalVariable;
.source "SourceFile"


# instance fields
.field public w:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLGlobalVariable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLGlobalParam;->w:Lnet/sf/saxon/expr/Expression;

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->PARAM:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/SourceBinding;->setProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;Z)V

    return-void
.end method


# virtual methods
.method public compileDeclaration(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/style/SourceBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/style/XSLGlobalVariable;->compileDeclaration(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->redundant:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/style/SourceBinding;->handleSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V

    iget-object p2, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->compiledVariable:Lnet/sf/saxon/expr/instruct/GlobalVariable;

    check-cast p2, Lnet/sf/saxon/expr/instruct/GlobalParam;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/Compilation;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/instruct/Actor;->obtainDeclaringComponent(Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Component;

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/style/SourceBinding;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    iget-object v1, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p2, v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/style/XSLGlobalVariable;->initializeBinding(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/CompilerInfo;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/CompilerInfo;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object p1

    invoke-interface {p1, p2}, Lnet/sf/saxon/expr/parser/CodeInjector;->process(Lnet/sf/saxon/trace/TraceableComponent;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLGlobalParam;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setRequiredParam(Z)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->IMPLICITLY_REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/instruct/GlobalParam;->setImplicitlyRequiredParam(Z)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/style/SourceBinding;->fixupBinding(Lnet/sf/saxon/expr/Binding;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->C()Lnet/sf/saxon/expr/Component;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/XSLGlobalVariable;->checkCompatibility(Lnet/sf/saxon/expr/Component;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getPermittedAttributes()Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lnet/sf/saxon/style/SourceBinding$BindingProperty;",
            ">;"
        }
    .end annotation

    sget-object p0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->SELECT:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->AS:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    sget-object v2, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->STATIC:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-static {p0, v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public getRequiredType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/style/SourceBinding;->getDeclaredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getVisibility()Lnet/sf/saxon/trans/Visibility;
    .locals 2

    const-string v0, "static"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object p0, Lnet/sf/saxon/trans/Visibility;->PUBLIC:Lnet/sf/saxon/trans/Visibility;

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    goto :goto_0

    :cond_1
    sget-object p0, Lnet/sf/saxon/trans/Visibility;->PUBLIC:Lnet/sf/saxon/trans/Visibility;

    :goto_0
    return-object p0
.end method

.method public insertBytecodeCandidate(Lnet/sf/saxon/expr/parser/Optimizer;)V
    .locals 0

    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/style/SourceBinding;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "XTSE0010"

    if-eqz v0, :cond_0

    const-string v0, "The select attribute must be absent when required=\'yes\'"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "A parameter specifying required=\'yes\' must have empty content"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLGlobalParam;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/XSLGlobalVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/style/SourceBinding;->isStatic()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->PUBLIC:Lnet/sf/saxon/trans/Visibility;

    if-eq v0, v1, :cond_2

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-eq v0, v1, :cond_2

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-eq v0, v1, :cond_2

    const-string v0, "The visibility of a required non-static parameter must be public, final, or abstract"

    const-string v1, "XTSE3370"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-super {p0, p1}, Lnet/sf/saxon/style/XSLGlobalVariable;->validate(Lnet/sf/saxon/style/ComponentDeclaration;)V

    return-void
.end method
