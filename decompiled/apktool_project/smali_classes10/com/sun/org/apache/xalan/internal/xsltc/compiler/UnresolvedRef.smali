.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;
.source "SourceFile"


# instance fields
.field private _ref:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

.field private _variableName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;->_ref:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;->_variableName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    return-void
.end method

.method private reportError()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;
    .locals 3

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "VARIABLE_UNDEF_ERR"

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;->_variableName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-direct {v0, v1, v2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    return-object v0
.end method

.method private resolve(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;->_variableName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->lookupVariable(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;->_variableName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->lookupName(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    :cond_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;->reportError()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    return-object p2

    :cond_1
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->addParentDependency()V

    instance-of p0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRef;

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRef;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;)V

    return-object p0

    :cond_2
    instance-of p0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;

    if-eqz p0, :cond_3

    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParameterRef;

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParameterRef;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;)V

    return-object p0

    :cond_3
    return-object p2
.end method


# virtual methods
.method public getName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;->_variableName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "unresolved-ref()"

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;->_ref:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;->reportError()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    :goto_0
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;->_ref:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;->_variableName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v2, "CIRCULAR_VARIABLE_ERR"

    invoke-direct {v1, v2, v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;->resolve(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;->_ref:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1

    :cond_1
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;->reportError()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    throw p1
.end method
