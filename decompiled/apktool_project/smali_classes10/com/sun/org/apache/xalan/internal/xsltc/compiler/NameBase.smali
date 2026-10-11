.class Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameBase;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;
.source "SourceFile"


# instance fields
.field private _param:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

.field private _paramType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameBase;->_param:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    .line 3
    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameBase;->_paramType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameBase;->_param:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    .line 6
    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameBase;->_paramType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argument(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameBase;->_param:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    return-void
.end method


# virtual methods
.method public getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argumentCount()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadContextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameBase;->_paramType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    sget-object v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-ne v2, v3, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameBase;->_param:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Reference:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameBase;->_param:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;

    const-string p1, "referenceToNodeSet"

    const-string v2, "(Ljava/lang/Object;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    const-string v3, "com.sun.org.apache.xalan.internal.xsltc.runtime.BasisLibrary"

    invoke-virtual {v0, v3, p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->nextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameBase;->_param:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameBase;->_param:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->startIterator(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->nextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argumentCount()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameBase;->_param:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameBase;->_paramType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    throw p1

    :cond_1
    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameBase;->_paramType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameBase;->_paramType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Reference:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    throw p1

    :cond_3
    :goto_1
    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1
.end method
