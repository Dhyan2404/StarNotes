.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;
.source "SourceFile"


# instance fields
.field private _escaping:Z

.field private _isString:Z

.field private _select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;->_escaping:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;->_isString:Z

    return-void
.end method


# virtual methods
.method public display(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->indent(I)V

    const-string v0, "ValueOf"

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->indent(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "select "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;->_select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->println(Ljava/lang/String;)V

    return-void
.end method

.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "select"

    invoke-virtual {p1, p0, v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->parseExpression(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;->_select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->isDummy()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "REQUIRED_ATTR_ERR"

    invoke-virtual {p0, p0, p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->reportError(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "disable-output-escaping"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "yes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;->_escaping:Z

    :cond_1
    return-void
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    const-string v2, "setEscaping"

    const-string v3, "(Z)Z"

    const-string v4, "com/sun/org/apache/xml/internal/serializer/SerializationHandler"

    invoke-virtual {v0, v4, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-boolean v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;->_escaping:Z

    const/4 v4, 0x2

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Z)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {v3, v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_0
    iget-boolean v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;->_isString:Z

    const-string v5, "characters"

    if-eqz v3, :cond_1

    const-string v3, "com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet"

    const-string v6, "(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V"

    invoke-virtual {v0, v3, v5, v6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;->_select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v3, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_1
    const-string v3, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    const-string v6, "(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V"

    invoke-virtual {v0, v3, v5, v6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;->_select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v3, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 v3, 0x3

    invoke-direct {p1, v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;->_escaping:Z

    if-nez p0, :cond_2

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SWAP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {p0, v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->POP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_2
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;->_select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->identicalTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->identicalTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;->_select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-direct {p1, v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;->_select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;->_isString:Z

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->identicalTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;->_select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-direct {p1, v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;->_select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_1
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;->_isString:Z

    :cond_2
    :goto_0
    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
