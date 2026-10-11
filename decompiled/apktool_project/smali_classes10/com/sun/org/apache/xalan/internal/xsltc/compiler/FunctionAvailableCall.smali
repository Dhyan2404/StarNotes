.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;
.source "SourceFile"


# instance fields
.field private _arg:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

.field private _isFunctionAvailable:Z

.field private _nameOfFunct:Ljava/lang/String;

.field private _namespaceOfFunct:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_nameOfFunct:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_namespaceOfFunct:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_isFunctionAvailable:Z

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_arg:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    instance-of p1, p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;->getNamespace()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_namespaceOfFunct:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_nameOfFunct:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->isInternalNamespace()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->hasMethods()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_isFunctionAvailable:Z

    :cond_0
    return-void
.end method

.method private hasMethods()Z
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_arg:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_namespaceOfFunct:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->getClassNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_nameOfFunct:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_nameOfFunct:Ljava/lang/String;

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v0, p0

    move-object p0, v4

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_nameOfFunct:Ljava/lang/String;

    :cond_2
    :goto_1
    if-eqz v0, :cond_7

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->replaceDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    :try_start_0
    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_5

    return v3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    move v1, v3

    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_7

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_6

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_6

    return v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    :cond_7
    :goto_3
    return v3
.end method

.method private isInternalNamespace()Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_namespaceOfFunct:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_namespaceOfFunct:Ljava/lang/String;

    const-string v0, "http://xml.apache.org/xalan/xsltc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public evaluateAtCompileTime()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->getResult()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0
.end method

.method public getResult()Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_nameOfFunct:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->isInternalNamespace()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_nameOfFunct:Ljava/lang/String;

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->functionSupported(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_isFunctionAvailable:Z

    :cond_1
    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_isFunctionAvailable:Z

    return p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p2

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->getResult()Z

    move-result p0

    invoke-direct {v0, p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Z)V

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;->_arg:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    instance-of p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1

    :cond_1
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v0, "NEED_LITERAL_ERR"

    const-string v1, "function-available"

    invoke-direct {p1, v0, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    throw p0
.end method
