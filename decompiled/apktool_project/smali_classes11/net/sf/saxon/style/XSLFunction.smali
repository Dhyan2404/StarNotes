.class public Lnet/sf/saxon/style/XSLFunction;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/style/StylesheetComponent;


# static fields
.field public static final synthetic w0:Z


# instance fields
.field public J:Z

.field public O:Ljava/lang/String;

.field public Q:Z

.field public Z:I

.field public k0:Lnet/sf/saxon/expr/instruct/UserFunction;

.field public q0:Lnet/sf/saxon/trans/Visibility;

.field public t0:Lnet/sf/saxon/trans/FunctionStreamability;

.field public u:Z

.field public u0:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

.field public v:Ljava/lang/String;

.field public v0:Z

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Lnet/sf/saxon/value/SequenceType;

.field public z:Lnet/sf/saxon/expr/instruct/SlotManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLFunction;->u:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/style/XSLFunction;->v:Ljava/lang/String;

    iput-object v1, p0, Lnet/sf/saxon/style/XSLFunction;->w:Ljava/lang/String;

    iput-object v1, p0, Lnet/sf/saxon/style/XSLFunction;->x:Ljava/lang/String;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    iput-object v2, p0, Lnet/sf/saxon/style/XSLFunction;->y:Lnet/sf/saxon/value/SequenceType;

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLFunction;->J:Z

    iput-object v1, p0, Lnet/sf/saxon/style/XSLFunction;->O:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLFunction;->Q:Z

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/style/XSLFunction;->Z:I

    sget-object v0, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLFunction;->q0:Lnet/sf/saxon/trans/Visibility;

    sget-object v0, Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;->PROACTIVE:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLFunction;->u0:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    return-void
.end method


# virtual methods
.method public final Z(Lnet/sf/saxon/expr/instruct/UserFunction;)V
    .locals 4

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getParameterDefinitions()[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/w2n;

    const-class v1, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    add-int/lit8 v2, v0, 0x1

    aget-object v0, p1, v0

    check-cast v1, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLLocalParam;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLGeneralVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLLocalParam;->getSlotNumber()I

    move-result v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setSlotNumber(I)V

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLGeneralVariable;->getSourceBinding()Lnet/sf/saxon/style/SourceBinding;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sf/saxon/style/SourceBinding;->fixupBinding(Lnet/sf/saxon/expr/Binding;)V

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a0(Ljava/lang/String;)Lnet/sf/saxon/trans/FunctionStreamability;
    .locals 3

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "streamability"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v2, v1}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    sget-object p0, Lnet/sf/saxon/trans/FunctionStreamability;->UNCLASSIFIED:Lnet/sf/saxon/trans/FunctionStreamability;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lnet/sf/saxon/trans/FunctionStreamability;->of(Ljava/lang/String;)Lnet/sf/saxon/trans/FunctionStreamability;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p1, "unclassified|absorbing|inspection|filter|shallow-descent|deep-descent|ascent"

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/style/StyleElement;->invalidAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public checkCompatibility(Lnet/sf/saxon/expr/Component;)V
    .locals 6

    iget-object v0, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLFunction;->getCompiledFunction()Lnet/sf/saxon/expr/instruct/UserFunction;

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/instruct/UserFunction;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName$F;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName$F;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/SymbolicName$F;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "XTSE3070"

    const-string v3, "The overriding xsl:function "

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sf/saxon/style/XSLFunction;->v:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not match the overridden function: the function name/arity does not match"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getDeclaredResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getDeclaredResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lnet/sf/saxon/value/SequenceType;->isSameType(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sf/saxon/style/XSLFunction;->v:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not match the overridden function: the return type does not match"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getDeclaredStreamability()Lnet/sf/saxon/trans/FunctionStreamability;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getDeclaredStreamability()Lnet/sf/saxon/trans/FunctionStreamability;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sf/saxon/style/XSLFunction;->v:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not match the overridden function: the streamability category does not match"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getDeterminism()Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getDeterminism()Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sf/saxon/style/XSLFunction;->v:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not match the overridden function: the new-each-time attribute does not match"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLFunction;->getNumberOfArguments()I

    move-result v4

    if-ge v1, v4, :cond_6

    iget-object v4, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v4, v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArgumentType(I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArgumentType(I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lnet/sf/saxon/value/SequenceType;->isSameType(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnet/sf/saxon/style/XSLFunction;->v:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not match the overridden function: the type of the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->ordinal(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " argument does not match"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public compileDeclaration(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/style/XSLFunction;->q0:Lnet/sf/saxon/trans/Visibility;

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-ne v0, v1, :cond_2

    const-string v0, "A function defined with visibility=\'abstract\' must have no body"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLFunction;->getCompiledFunction()Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    iget-object p2, p0, Lnet/sf/saxon/style/XSLFunction;->z:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/instruct/Actor;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/XSLFunction;->Z(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/instruct/Actor;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iget-boolean p2, p0, Lnet/sf/saxon/style/XSLFunction;->Q:Z

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/instruct/UserFunction;->setOverrideExtensionFunction(Z)V

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/trans/CompilerInfo;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/CompilerInfo;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object p1

    invoke-interface {p1, v0}, Lnet/sf/saxon/expr/parser/CodeInjector;->process(Lnet/sf/saxon/trace/TraceableComponent;)V

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->C()Lnet/sf/saxon/expr/Component;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/XSLFunction;->checkCompatibility(Lnet/sf/saxon/expr/Component;)V

    :cond_4
    return-void
.end method

.method public generateByteCode(Lnet/sf/saxon/expr/parser/Optimizer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

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
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLFunction;->getActor()Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p0

    return-object p0
.end method

.method public getActor()Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    return-object p0
.end method

.method public getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLFunction;->getNumberOfArguments()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/value/SequenceType;

    new-instance v1, Lcom/sunia/HTREnginev2/w2n;

    const-class v2, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-direct {v1, v2}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v1}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    add-int/lit8 v3, v1, 0x1

    check-cast v2, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLLocalParam;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCompiledFunction()Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 7

    iget-object v0, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLFunction;->prepareAttributes()V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sf/saxon/style/XSLFunction;->J:Z

    iget-object v2, p0, Lnet/sf/saxon/style/XSLFunction;->t0:Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/Configuration;->newUserFunction(ZLnet/sf/saxon/trans/FunctionStreamability;)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/style/Compilation;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLFunction;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->setFunctionName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/XSLFunction;->setParameterDefinitions(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLFunction;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->setResultType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setLineNumber(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setColumnNumber(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/instruct/Actor;->obtainDeclaringComponent(Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Component;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setDeclaredVisibility(Lnet/sf/saxon/trans/Visibility;)V

    iget-object v1, p0, Lnet/sf/saxon/style/XSLFunction;->t0:Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->setDeclaredStreamability(Lnet/sf/saxon/trans/FunctionStreamability;)V

    iget-object v1, p0, Lnet/sf/saxon/style/XSLFunction;->u0:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->setDeterminism(Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, p0, Lnet/sf/saxon/style/XSLFunction;->J:Z

    if-eqz v2, :cond_0

    new-instance v2, Lnet/sf/saxon/query/Annotation;

    new-instance v3, Lnet/sf/saxon/om/StructuredQName;

    const-string v4, "http://saxon.sf.net/"

    const-string v5, "memo-function"

    const-string v6, "saxon"

    invoke-direct {v3, v6, v4, v5}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lnet/sf/saxon/query/Annotation;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Lnet/sf/saxon/query/AnnotationList;

    invoke-direct {v2, v1}, Lnet/sf/saxon/query/AnnotationList;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/instruct/UserFunction;->setAnnotations(Lnet/sf/saxon/query/AnnotationList;)V

    iget-boolean v1, p0, Lnet/sf/saxon/style/XSLFunction;->Q:Z

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->setOverrideExtensionFunction(Z)V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    return-object p0
.end method

.method public getNumberOfArguments()I
    .locals 2

    iget v0, p0, Lnet/sf/saxon/style/XSLFunction;->Z:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/style/XSLFunction;->Z:I

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    instance-of v1, v1, Lnet/sf/saxon/style/XSLLocalParam;

    if-eqz v1, :cond_0

    iget v1, p0, Lnet/sf/saxon/style/XSLFunction;->Z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/style/XSLFunction;->Z:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lnet/sf/saxon/style/XSLFunction;->Z:I

    return p0

    :cond_1
    iget p0, p0, Lnet/sf/saxon/style/XSLFunction;->Z:I

    return p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    invoke-super {p0}, Lnet/sf/saxon/style/StyleElement;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    const-string v1, "name"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLFunction;->v:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "badly-named-function"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->generateId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "saxon"

    const-string v2, "http://saxon.sf.net/"

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->setObjectName(Lnet/sf/saxon/om/StructuredQName;)V

    :cond_1
    return-object v0
.end method

.method public getResultType()Lnet/sf/saxon/value/SequenceType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/style/XSLFunction;->y:Lnet/sf/saxon/value/SequenceType;

    if-nez v0, :cond_0

    const-string v0, ""

    const-string v1, "as"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->makeSequenceType(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLFunction;->y:Lnet/sf/saxon/value/SequenceType;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/XSLFunction;->y:Lnet/sf/saxon/value/SequenceType;

    if-nez p0, :cond_1

    sget-object p0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    :cond_1
    return-object p0
.end method

.method public getSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLFunction;->z:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-object p0
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName$F;
    .locals 2

    .line 2
    new-instance v0, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLFunction;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLFunction;->getNumberOfArguments()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    return-object v0
.end method

.method public bridge synthetic getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLFunction;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName$F;

    move-result-object p0

    return-object p0
.end method

.method public getVisibility()Lnet/sf/saxon/trans/Visibility;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/style/XSLFunction;->q0:Lnet/sf/saxon/trans/Visibility;

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    if-ne v0, v1, :cond_1

    const-string v0, "visibility"

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->E(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/trans/Visibility;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    return-object v0
.end method

.method public index(Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLFunction;->getCompiledFunction()Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->indexFunction(Lnet/sf/saxon/style/ComponentDeclaration;)V

    return-void
.end method

.method public isDeclaration()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isOverrideExtensionFunction()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/style/XSLFunction;->O:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLFunction;->prepareAttributes()V

    :cond_0
    iget-boolean p0, p0, Lnet/sf/saxon/style/XSLFunction;->Q:Z

    return p0
.end method

.method public isPermittedChild(Lnet/sf/saxon/style/StyleElement;)Z
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/style/XSLLocalParam;

    return p0
.end method

.method public mayContainParam()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public optimize(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p1, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->resetPropertiesWithinSubtree(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->ABSENT:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/style/XSLFunction;->t0:Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/FunctionStreamability;->isStreaming()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->setOptimizeForStreaming(Z)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v3

    invoke-static {v2, v3, v0, v1, v4}, Lnet/sf/saxon/expr/parser/ExpressionTool;->optimizeComponentBody(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {p0, v1}, Lnet/sf/saxon/style/StyleElement;->setInstructionLocation(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/expr/Expression;)V

    iget-object v2, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/style/XSLFunction;->t0:Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/FunctionStreamability;->isStreaming()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v2, p0, v3}, Lnet/sf/saxon/expr/parser/Optimizer;->assessFunctionStreamability(Lnet/sf/saxon/style/XSLFunction;Lnet/sf/saxon/expr/instruct/UserFunction;)V

    :cond_1
    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->m(Lnet/sf/saxon/expr/Expression;)V

    if-eq v1, p1, :cond_2

    iget-object p1, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/CompilerInfo;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p1

    const/16 v2, 0x4000

    invoke-virtual {p1, v2}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lnet/sf/saxon/style/XSLFunction;->t0:Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/FunctionStreamability;->isStreaming()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLFunction;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLFunction;->getNumberOfArguments()I

    move-result v2

    invoke-static {v1, p1, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->markTailFunctionCalls(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;I)I

    move-result p1

    if-eqz p1, :cond_5

    iget-object v1, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    const/4 v2, 0x0

    if-lez p1, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-le p1, v4, :cond_4

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    invoke-virtual {v1, v3, v4}, Lnet/sf/saxon/expr/instruct/UserFunction;->setTailRecursive(ZZ)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget-object p1, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    new-instance v2, Lnet/sf/saxon/expr/TailCallLoop;

    iget-object v3, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-direct {v2, v3, v1}, Lnet/sf/saxon/expr/TailCallLoop;-><init>(Lnet/sf/saxon/expr/instruct/UserFunction;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1, v2}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    :cond_5
    iget-object p1, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->computeEvaluationMode()V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLFunction;->t0:Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/FunctionStreamability;->isStreaming()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->prepareForStreaming()V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Configuration;->isDeferredByteCode(Lnet/sf/saxon/s9api/HostLanguage;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v0

    iget-object v2, p0, Lnet/sf/saxon/style/XSLFunction;->k0:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/style/XSLFunction;->v:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-virtual {v0, v2, v3, v4, v5}, Lnet/sf/saxon/expr/parser/Optimizer;->makeByteCodeCandidate(Lnet/sf/saxon/expr/ExpressionOwner;Lnet/sf/saxon/expr/Expression;Ljava/lang/String;I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    :cond_7
    :goto_2
    iget-boolean p1, p0, Lnet/sf/saxon/style/XSLFunction;->v0:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/Expression;->explain(Lnet/sf/saxon/lib/Logger;)V

    :cond_8
    return-void
.end method

.method public prepareAttributes()V
    .locals 21

    move-object/from16 v1, p0

    const-string v2, "saxon:as"

    iget-boolean v0, v1, Lnet/sf/saxon/style/XSLFunction;->u:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, v1, Lnet/sf/saxon/style/XSLFunction;->u:Z

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    const/4 v4, 0x0

    iput-object v4, v1, Lnet/sf/saxon/style/XSLFunction;->O:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "cache"

    const-string v12, "new-each-time"

    const-string v13, "as"

    const-string v14, "name"

    const-string v15, ""

    if-eqz v9, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v9}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v11

    invoke-interface {v11}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v17, v0

    const-string v0, "http://saxon.sf.net/"

    move-object/from16 v18, v8

    const-string v8, "SXWN9014"

    if-eqz v16, :cond_f

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    move-object/from16 v16, v6

    const-string v6, "override-extension-function"

    move-object/from16 v19, v7

    const-string v7, "override"

    const/16 v20, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v3, "visibility"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_1
    const-string v3, "streamability"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_2
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_3
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_4
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_5
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x2

    :goto_1
    move/from16 v20, v3

    goto :goto_2

    :sswitch_6
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    const/16 v20, 0x1

    goto :goto_2

    :sswitch_7
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    const/16 v20, 0x0

    :goto_2
    const-string v3, "XTSE0020"

    const-string v10, "Attributes override-extension-function and override are both used, but do not match"

    const-string v12, "The xsl:function/@override attribute is deprecated; use override-extension-function"

    packed-switch v20, :pswitch_data_0

    invoke-virtual {v1, v11}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    :cond_9
    :goto_3
    const/4 v6, 0x0

    goto/16 :goto_8

    :pswitch_0
    invoke-virtual {v9}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v8, v18

    :goto_4
    move-object/from16 v7, v19

    :goto_5
    const/4 v6, 0x0

    goto/16 :goto_9

    :pswitch_1
    invoke-virtual {v9}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, v18

    goto :goto_5

    :pswitch_2
    invoke-virtual {v9}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    iget-object v6, v1, Lnet/sf/saxon/style/XSLFunction;->O:Ljava/lang/String;

    if-eqz v6, :cond_a

    iget-boolean v0, v1, Lnet/sf/saxon/style/XSLFunction;->Q:Z

    if-eq v4, v0, :cond_b

    invoke-virtual {v1, v10, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    iput-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->O:Ljava/lang/String;

    iput-boolean v4, v1, Lnet/sf/saxon/style/XSLFunction;->Q:Z

    :cond_b
    :goto_6
    invoke-virtual {v1, v12, v8}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v9}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    iget-object v9, v1, Lnet/sf/saxon/style/XSLFunction;->O:Ljava/lang/String;

    if-eqz v9, :cond_c

    iget-boolean v0, v1, Lnet/sf/saxon/style/XSLFunction;->Q:Z

    if-eq v6, v0, :cond_d

    invoke-virtual {v1, v10, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    iput-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->O:Ljava/lang/String;

    iput-boolean v6, v1, Lnet/sf/saxon/style/XSLFunction;->Q:Z

    :cond_d
    :goto_7
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v1, v12, v8}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {v9}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :pswitch_5
    invoke-virtual {v9}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lnet/sf/saxon/style/XSLFunction;->v:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v14}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3, v15}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v4, Lnet/sf/saxon/om/StructuredQName;

    const-string v7, "saxon"

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v7, v0, v3}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Function name must be in a namespace"

    const-string v3, "XTSE0740"

    invoke-virtual {v1, v0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    :cond_e
    invoke-virtual {v1, v3}, Lnet/sf/saxon/style/StyleElement;->setObjectName(Lnet/sf/saxon/om/StructuredQName;)V

    goto/16 :goto_8

    :pswitch_6
    const/4 v6, 0x0

    invoke-virtual {v9}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->w:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_7
    const/4 v6, 0x0

    invoke-virtual {v9}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto/16 :goto_8

    :cond_f
    move-object/from16 v16, v6

    move-object/from16 v19, v7

    const/4 v6, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v9}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/style/StyleElement;->isExtensionAttributeAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "memo-function"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "saxon:memo-function is deprecated: use cache=\'yes\'"

    invoke-virtual {v1, v0, v8}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "saxon:memo-function"

    invoke-virtual {v9}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lnet/sf/saxon/style/XSLFunction;->J:Z

    goto :goto_8

    :cond_10
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v11}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/style/StyleElement;->isExtensionAttributeAllowed(Ljava/lang/String;)Z

    invoke-virtual {v9}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->x:Ljava/lang/String;

    goto :goto_8

    :cond_11
    const-string v0, "explain"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v9}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/style/StyleElement;->isYes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v3, 0x1

    iput-boolean v3, v1, Lnet/sf/saxon/style/XSLFunction;->v0:Z

    goto :goto_8

    :cond_12
    invoke-virtual {v1, v11}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    :cond_13
    :goto_8
    move-object/from16 v8, v18

    move-object/from16 v7, v19

    :goto_9
    move-object v4, v6

    move-object/from16 v6, v16

    move-object/from16 v0, v17

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_14
    move-object/from16 v16, v6

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    iget-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->v:Ljava/lang/String;

    if-nez v0, :cond_15

    invoke-virtual {v1, v14}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xsl:unnamed-function-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->generateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->v:Ljava/lang/String;

    :cond_15
    iget-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->w:Ljava/lang/String;

    if-eqz v0, :cond_16

    :try_start_0
    invoke-virtual {v1, v0}, Lnet/sf/saxon/style/StyleElement;->makeSequenceType(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    iput-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->y:Lnet/sf/saxon/value/SequenceType;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0, v13}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_a
    iget-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->x:Ljava/lang/String;

    if-eqz v0, :cond_1a

    :try_start_1
    invoke-virtual {v1, v0}, Lnet/sf/saxon/style/StyleElement;->K(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3, v2}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->y:Lnet/sf/saxon/value/SequenceType;

    :goto_b
    iget-object v3, v1, Lnet/sf/saxon/style/XSLFunction;->w:Ljava/lang/String;

    if-eqz v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v3

    iget-object v4, v1, Lnet/sf/saxon/style/XSLFunction;->y:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v3, v0, v4}, Lnet/sf/saxon/type/TypeHierarchy;->sequenceTypeRelationship(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v3, v4, :cond_18

    sget-object v4, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne v3, v4, :cond_17

    goto :goto_c

    :cond_17
    const-string v0, "When both are present, @saxon:as must be a subtype of @as"

    const-string v3, "SXER7TBA"

    invoke-virtual {v1, v0, v3, v2}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    :goto_c
    iput-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->y:Lnet/sf/saxon/value/SequenceType;

    goto :goto_d

    :cond_19
    iput-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->y:Lnet/sf/saxon/value/SequenceType;

    :cond_1a
    :goto_d
    if-nez v5, :cond_1b

    sget-object v0, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    iput-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->q0:Lnet/sf/saxon/trans/Visibility;

    goto :goto_e

    :cond_1b
    invoke-virtual {v1, v5, v15}, Lnet/sf/saxon/style/StyleElement;->E(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    iput-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->q0:Lnet/sf/saxon/trans/Visibility;

    :goto_e
    if-nez v19, :cond_1c

    sget-object v0, Lnet/sf/saxon/trans/FunctionStreamability;->UNCLASSIFIED:Lnet/sf/saxon/trans/FunctionStreamability;

    iput-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->t0:Lnet/sf/saxon/trans/FunctionStreamability;

    goto :goto_f

    :cond_1c
    move-object/from16 v4, v19

    invoke-virtual {v1, v4}, Lnet/sf/saxon/style/XSLFunction;->a0(Ljava/lang/String;)Lnet/sf/saxon/trans/FunctionStreamability;

    move-result-object v0

    iput-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->t0:Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/FunctionStreamability;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "yes"

    invoke-virtual {v1, v0}, Lnet/sf/saxon/style/StyleElement;->U(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lnet/sf/saxon/trans/FunctionStreamability;->UNCLASSIFIED:Lnet/sf/saxon/trans/FunctionStreamability;

    iput-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->t0:Lnet/sf/saxon/trans/FunctionStreamability;

    :cond_1d
    :goto_f
    if-eqz v16, :cond_20

    const-string v0, "maybe"

    move-object/from16 v4, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;->ELIDABLE:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    iput-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->u0:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    goto :goto_11

    :cond_1e
    invoke-virtual {v1, v12, v4}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;->PROACTIVE:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    goto :goto_10

    :cond_1f
    sget-object v0, Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;->DETERMINISTIC:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    :goto_10
    iput-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->u0:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    :cond_20
    :goto_11
    if-eqz v18, :cond_21

    move-object/from16 v4, v18

    invoke-virtual {v1, v10, v4}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    goto :goto_12

    :cond_21
    const/4 v11, 0x0

    :goto_12
    iget-object v0, v1, Lnet/sf/saxon/style/XSLFunction;->u0:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    sget-object v2, Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;->DETERMINISTIC:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    if-eq v0, v2, :cond_22

    if-eqz v11, :cond_23

    :cond_22
    const/4 v2, 0x1

    iput-boolean v2, v1, Lnet/sf/saxon/style/XSLFunction;->J:Z

    :cond_23
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ee1d0d4 -> :sswitch_7
        0xc32 -> :sswitch_6
        0x337a8b -> :sswitch_5
        0x5a0af82 -> :sswitch_4
        0xa7b3947 -> :sswitch_3
        0x1f971bcc -> :sswitch_2
        0x716bf5aa -> :sswitch_1
        0x73b66312 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setParameterDefinitions(Lnet/sf/saxon/expr/instruct/UserFunction;)V
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLFunction;->getNumberOfArguments()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/UserFunction;->setParameterDefinitions([Lnet/sf/saxon/expr/instruct/UserFunctionParameter;)V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    instance-of v3, v2, Lnet/sf/saxon/style/XSLLocalParam;

    if-eqz v3, :cond_1

    new-instance v3, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    invoke-direct {v3}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;-><init>()V

    aput-object v3, v0, v1

    check-cast v2, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLLocalParam;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLGeneralVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLLocalParam;->getSlotNumber()I

    move-result v2

    invoke-virtual {v3, v2}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setSlotNumber(I)V

    if-nez v1, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/style/XSLFunction;->t0:Lnet/sf/saxon/trans/FunctionStreamability;

    sget-object v4, Lnet/sf/saxon/trans/FunctionStreamability;->UNCLASSIFIED:Lnet/sf/saxon/trans/FunctionStreamability;

    if-eq v2, v4, :cond_0

    invoke-virtual {v3, v2}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setFunctionStreamability(Lnet/sf/saxon/trans/FunctionStreamability;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLFunction;->z:Lnet/sf/saxon/expr/instruct/SlotManager;

    const-string p1, "XTSE0010"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->checkTopLevel(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLFunction;->getNumberOfArguments()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/style/XSLFunction;->t0:Lnet/sf/saxon/trans/FunctionStreamability;

    sget-object v0, Lnet/sf/saxon/trans/FunctionStreamability;->UNCLASSIFIED:Lnet/sf/saxon/trans/FunctionStreamability;

    if-eq p1, v0, :cond_0

    const-string p1, "A function with no arguments must have streamability=unclassified"

    const-string v0, "XTSE3155"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
