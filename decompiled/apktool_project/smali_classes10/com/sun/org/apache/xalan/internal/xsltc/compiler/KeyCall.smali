.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;
.source "SourceFile"


# instance fields
.field private _name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

.field private _resolvedQName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

.field private _value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

.field private _valueType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_resolvedQName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argumentCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argument(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argument(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argument(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :goto_0
    return-void
.end method

.method private translateCall(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v4

    const-string v5, "getStringValueX"

    const-string v6, "(I)Ljava/lang/String;"

    const-string v7, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    invoke-virtual {v3, v7, v5, v6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v6, "getKeyIndex"

    const-string v7, "(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;"

    const-string v8, "com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet"

    invoke-virtual {v3, v8, v6, v7}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v7, "com/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex"

    const-string v9, "lookupId"

    const-string v10, "(Ljava/lang/Object;)V"

    invoke-virtual {v3, v7, v9, v10}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const-string v11, "lookupKey"

    invoke-virtual {v3, v7, v11, v10}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const-string v11, "merge"

    const-string v12, "(Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;)V"

    invoke-virtual {v3, v7, v11, v12}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const-string v11, "createKeyIndex"

    const-string v12, "()Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;"

    invoke-virtual {v3, v8, v11, v12}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const-string v11, "setDom"

    const-string v12, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V"

    const-string v13, "com.sun.org.apache.xalan.internal.xsltc.dom.KeyIndex"

    invoke-virtual {v3, v13, v11, v12}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    const-string v12, "Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;"

    invoke-static {v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v13

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v14

    const-string v15, "returnIndex"

    move/from16 v16, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v15, v13, v14, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v13

    invoke-static {v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v12

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v14

    const-string v15, "searchIndex"

    invoke-virtual {v2, v15, v12, v14, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v12

    iget-object v14, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_valueType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    sget-object v15, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    const-string v7, "##id"

    if-ne v14, v15, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v14, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v14, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v14, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v14, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->startIterator(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v14, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v14, v8}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v4, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v8, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v4, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v14, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v14, v11}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v4, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v11, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v13}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v14

    invoke-direct {v11, v14}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v4, v11}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v11, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-nez v11, :cond_0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v1, v3, v7}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_0
    iget-object v7, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_resolvedQName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    if-eqz v7, :cond_1

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v3, v7}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_1
    invoke-virtual {v11, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :goto_0
    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v12}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/GOTO;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/GOTO;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v1

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v13}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v4, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v12}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v4, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v4, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 v7, 0x2

    invoke-direct {v6, v5, v7}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v4, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v0, v9}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v0, v10}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_1
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    move/from16 v5, v16

    invoke-direct {v0, v5}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->nextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v4, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/IFGT;

    invoke-direct {v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/IFGT;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_4

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-nez v5, :cond_4

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v5, v3, v7}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_2

    :cond_4
    iget-object v7, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_resolvedQName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    if-eqz v7, :cond_5

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v3, v7}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :goto_2
    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v3, v6}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v3, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-nez v0, :cond_6

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v0, v9}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v0, v10}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_3
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v13}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_4
    return-object v13
.end method


# virtual methods
.method public addParentDependency()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_resolvedQName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object v1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_resolvedQName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->getKey(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Key;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;->addDependency(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;)V

    :cond_2
    return-void
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    const-string v2, "getNodeHandle"

    const-string v3, "(I)I"

    const-string v4, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    invoke-virtual {v0, v4, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "<init>"

    const-string v3, "(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V"

    const-string v4, "com.sun.org.apache.xalan.internal.xsltc.dom.DupFilterIterator"

    invoke-virtual {v0, v4, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->translateCall(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object p0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    instance-of v3, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v1

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_resolvedQName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    goto :goto_0

    :cond_0
    instance-of v1, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/StringType;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_valueType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-eq p1, v1, :cond_2

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-direct {p1, v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;->addParentDependency()V

    return-object v0
.end method
