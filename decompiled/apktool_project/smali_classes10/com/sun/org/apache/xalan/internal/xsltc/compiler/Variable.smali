.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_local:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public initialize(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_refs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_local:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getEscapedName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toJCType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable2(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_local:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    :cond_0
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    instance-of v0, p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/IntType;

    if-nez v0, :cond_3

    instance-of v0, p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;

    if-nez v0, :cond_3

    instance-of v0, p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of p2, p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;

    if-eqz p2, :cond_2

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/DCONST;

    const-wide/16 v0, 0x0

    invoke-direct {p2, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/DCONST;-><init>(D)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/ACONST_NULL;

    invoke-direct {p2}, Lcom/sun/org/apache/bcel/internal/generic/ACONST_NULL;-><init>()V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_1

    :cond_3
    :goto_0
    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/ICONST;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/sun/org/apache/bcel/internal/generic/ICONST;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_1
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_local:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->STORE(I)Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_4
    return-void
.end method

.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_isLocal:Z

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->lookupVariable(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getImportPrecedence()I

    move-result v3

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getImportPrecedence()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VARIABLE_REDEF_ERR"

    invoke-virtual {p0, p0, p1, v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->reportError(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-le v4, v3, :cond_1

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_ignore:Z

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->disable()V

    :cond_2
    :goto_0
    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->addVariable(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;)I

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addVariable(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_isLocal:Z

    :goto_1
    return-void
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 11

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_refs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_ignore:Z

    :cond_0
    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_ignore:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_ignore:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getEscapedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->translateValue(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_local:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    if-nez p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->mapRegister(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_local:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->STORE(I)Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->containsField(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/Field;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v4, Lcom/sun/org/apache/bcel/internal/classfile/Field;

    const/4 v6, 0x1

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v10

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/sun/org/apache/bcel/internal/classfile/Field;-><init>(III[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->translateValue(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_4
    :goto_0
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->hasContents()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->typeCheckContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->ResultTree:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Reference:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :goto_0
    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
