.class public Lnet/sf/saxon/style/ExpressionContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/StaticContext;


# instance fields
.field public final e:Lnet/sf/saxon/style/StyleElement;

.field public final f:Lnet/sf/saxon/om/StructuredQName;

.field public g:Lnet/sf/saxon/s9api/Location;

.field public h:Lnet/sf/saxon/expr/parser/RetainedStaticContext;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/om/StructuredQName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/ExpressionContext;->g:Lnet/sf/saxon/s9api/Location;

    iput-object v0, p0, Lnet/sf/saxon/style/ExpressionContext;->h:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    iput-object p1, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    iput-object p2, p0, Lnet/sf/saxon/style/ExpressionContext;->f:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/style/ExpressionContext;->b(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/Item;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/style/XSLGlobalVariable;

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/style/XSLGlobalVariable;

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLGlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Variable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be used within its own declaration"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "XPST0008"

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bindVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/style/StyleElement;->bindVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0xda

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    const-string v3, "original"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->getXslOriginal(I)Lnet/sf/saxon/expr/instruct/Actor;

    new-instance p0, Lnet/sf/saxon/expr/GlobalVariableReference;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/GlobalVariableReference;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/SymbolicName;

    invoke-direct {v0, v2, p1}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    iget-object v2, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v2}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/style/Compilation;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0, v2}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    new-instance v2, Lcom/sunia/HTREnginev2/w2g;

    invoke-direct {v2, p1}, Lcom/sunia/HTREnginev2/w2g;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-static {p0, v2}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    new-instance p1, Lnet/sf/saxon/expr/GlobalVariableReference;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/GlobalVariableReference;-><init>(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lnet/sf/saxon/expr/VariableReference;->setStaticType(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/GroundedValue;I)V

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/style/ExpressionContext;->getXPathVersion()I

    move-result v0

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_3

    const-string v0, "http://www.w3.org/2005/xqt-errors"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    new-instance v0, Lnet/sf/saxon/pattern/NameTest;

    const/16 v3, 0x8d

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    invoke-virtual {p0, v2, v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/StyleElement;

    if-eqz p0, :cond_3

    sget-object p0, Lnet/sf/saxon/om/StandardNames;->errorVariables:[Lnet/sf/saxon/om/StructuredQName;

    array-length v0, p0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;->getInstance()Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;

    move-result-object p0

    const-string v0, "dynamic-error-info"

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    new-array v0, v2, [Lnet/sf/saxon/expr/Expression;

    new-instance v2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Variable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has not been declared (or its declaration is not in scope)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XPST0008"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_4
    sget-object v2, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->IMPLICITLY_DECLARED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance p0, Lnet/sf/saxon/expr/SuppliedParameterReference;

    invoke-direct {p0, v1}, Lnet/sf/saxon/expr/SuppliedParameterReference;-><init>(I)V

    invoke-virtual {v0}, Lnet/sf/saxon/style/SourceBinding;->getDeclaredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/SuppliedParameterReference;->setSuppliedType(Lnet/sf/saxon/value/SequenceType;)V

    return-object p0

    :cond_5
    sget-object v2, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->GLOBAL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lnet/sf/saxon/expr/GlobalVariableReference;

    invoke-direct {v2, p1}, Lnet/sf/saxon/expr/GlobalVariableReference;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v0}, Lnet/sf/saxon/style/SourceBinding;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/style/XSLGlobalVariable;

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLGlobalVariable;->getCompiledVariable()Lnet/sf/saxon/expr/instruct/GlobalVariable;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->isJustInTimeCompilation()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/VariableReference;->fixup(Lnet/sf/saxon/expr/Binding;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {v0}, Lnet/sf/saxon/style/SourceBinding;->getConstantValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-virtual {v2, p0, p1, v1}, Lnet/sf/saxon/expr/VariableReference;->setStaticType(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/GroundedValue;I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/SourceBinding;->registerReference(Lnet/sf/saxon/expr/BindingReference;)V

    :goto_1
    return-object v2

    :cond_7
    new-instance p0, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/style/SourceBinding;->registerReference(Lnet/sf/saxon/expr/BindingReference;)V

    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getContainingLocation()Lnet/sf/saxon/s9api/Location;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/style/ExpressionContext;->g:Lnet/sf/saxon/s9api/Location;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/style/ExpressionContext;->f:Lnet/sf/saxon/om/StructuredQName;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    iput-object v0, p0, Lnet/sf/saxon/style/ExpressionContext;->g:Lnet/sf/saxon/s9api/Location;

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/sf/saxon/tree/AttributeLocation;

    iget-object v2, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-direct {v1, v2, v0}, Lnet/sf/saxon/tree/AttributeLocation;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/StructuredQName;)V

    iput-object v1, p0, Lnet/sf/saxon/style/ExpressionContext;->g:Lnet/sf/saxon/s9api/Location;

    :cond_1
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->g:Lnet/sf/saxon/s9api/Location;

    return-object p0
.end method

.method public getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultCollationName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getDefaultCollationName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultElementNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getDefaultXPathNamespace()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultFunctionNamespace()Ljava/lang/String;
    .locals 0

    const-string p0, "http://www.w3.org/2005/xpath-functions"

    return-object p0
.end method

.method public getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibraryList;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    const/16 v1, 0xc0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->v(I)Lnet/sf/saxon/style/StyleElement;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-direct {v1}, Lnet/sf/saxon/functions/FunctionLibraryList;-><init>()V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    check-cast p0, Lnet/sf/saxon/style/XSLOverride;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/XSLOverride;->addXSLOverrideFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getImportedSchemaNamespaces()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getImportedSchemaTable()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getKeyManager()Lnet/sf/saxon/trans/KeyManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getKeyManager()Lnet/sf/saxon/trans/KeyManager;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    return-object p0
.end method

.method public getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPackageData()Lnet/sf/saxon/expr/PackageData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/style/ExpressionContext;->getPackageData()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    return-object p0
.end method

.method public getPackageData()Lnet/sf/saxon/style/StylesheetPackage;
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPackageData()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    return-object p0
.end method

.method public getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public getStaticBaseURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStyleElement()Lnet/sf/saxon/style/StyleElement;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnprefixedElementMatchingPolicy()Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getUnprefixedElementMatchingPolicy()Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getXPathVersion()I
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->A()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/CompilerInfo;->getXsltVersion()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/style/ExpressionContext;->f:Lnet/sf/saxon/om/StructuredQName;

    if-eqz v0, :cond_0

    const-string v2, "http://saxon.sf.net/"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/ExpressionContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/lib/Feature;->XPATH_VERSION_FOR_XSLT:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->getConfigurationProperty(Lnet/sf/saxon/lib/Feature;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public isImportedSchema(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->isImportedSchema(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isInBackwardsCompatibleMode()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->Y()Z

    move-result p0

    return p0
.end method

.method public isSchemaAware()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isSchemaAware()Z

    move-result p0

    return p0
.end method

.method public issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    const-string v0, "SXWN9000"

    invoke-virtual {p0, p1, v0, p2}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/EarlyEvaluationContext;

    invoke-virtual {p0}, Lnet/sf/saxon/style/ExpressionContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;-><init>(Lnet/sf/saxon/Configuration;)V

    return-object v0
.end method

.method public makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/style/ExpressionContext;->h:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/style/StyleElement;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/style/ExpressionContext;->e:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->getStaticContext()Lnet/sf/saxon/style/ExpressionContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/ExpressionContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/ExpressionContext;->h:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    iput-object v0, p0, Lnet/sf/saxon/style/ExpressionContext;->h:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    :cond_2
    :goto_1
    iget-object p0, p0, Lnet/sf/saxon/style/ExpressionContext;->h:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    return-object p0
.end method

.method public resolveTypeAlias(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/style/ExpressionContext;->getPackageData()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->obtainTypeAliasManager()Lnet/sf/saxon/trans/TypeAliasManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/TypeAliasManager;->getItemType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method
