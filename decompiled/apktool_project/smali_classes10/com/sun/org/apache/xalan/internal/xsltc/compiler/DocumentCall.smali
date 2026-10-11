.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;
.source "SourceFile"


# instance fields
.field private _arg1:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

.field private _arg1Type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

.field private _arg2:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall;->_arg1:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall;->_arg2:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    return-void
.end method


# virtual methods
.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argumentCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_dom"

    const-string v5, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    invoke-virtual {v0, v3, v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const-string v4, "(Ljava/lang/Object;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    goto :goto_0

    :cond_0
    const-string v4, "(Ljava/lang/Object;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    :goto_0
    const-string v5, "com.sun.org.apache.xalan.internal.xsltc.dom.LoadDocument"

    const-string v6, "documentF"

    invoke-virtual {v0, v5, v6, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall;->_arg1:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v5, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall;->_arg1Type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    sget-object v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall;->_arg1:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v5, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->startIterator(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :cond_1
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall;->_arg2:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall;->_arg2:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->startIterator(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :cond_2
    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    invoke-direct {p0, v3}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;

    invoke-direct {p0, v4}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argumentCount()I

    move-result v0

    const-string v1, "ILLEGAL_ARG_ERR"

    const/4 v2, 0x1

    if-lt v0, v2, :cond_7

    const/4 v3, 0x2

    if-gt v0, v3, :cond_7

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argument(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall;->_arg1:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    const-string v4, "DOCUMENT_ARG_ERR"

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall;->_arg1Type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    sget-object v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-eq v1, v5, :cond_0

    sget-object v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-eq v1, v6, :cond_0

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall;->_arg1:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-direct {v1, v7, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall;->_arg1:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_0
    if-ne v0, v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argument(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall;->_arg2:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p1

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->identicalTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall;->_arg2:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-direct {p1, v0, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall;->_arg2:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->identicalTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p1, v4, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    throw p0

    :cond_3
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p1, v4, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    throw p0

    :cond_4
    :goto_0
    iput-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object v5

    :cond_5
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p1, v4, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    throw p0

    :cond_6
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p1, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    throw p0

    :cond_7
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p1, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    throw p0
.end method
