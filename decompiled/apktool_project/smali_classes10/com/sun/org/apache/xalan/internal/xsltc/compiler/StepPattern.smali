.class Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;
.source "SourceFile"


# static fields
.field private static final GENERAL_CONTEXT:I = 0x2

.field private static final NO_CONTEXT:I = 0x0

.field private static final SIMPLE_CONTEXT:I = 0x1


# instance fields
.field protected final _axis:I

.field private _contextCase:I

.field private _isEpsilon:Z

.field protected final _nodeType:I

.field protected _predicates:Ljava/util/Vector;

.field private _priority:D

.field private _step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;


# direct methods
.method public constructor <init>(IILjava/util/Vector;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_isEpsilon:Z

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_priority:D

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_axis:I

    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_nodeType:I

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    return-void
.end method

.method private analyzeCases()I
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->isNthPositionFilter()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->hasPositionCall()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->hasLastCall()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v4, v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    return v2

    :cond_3
    if-ne v0, v1, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x2

    return p0
.end method

.method private getNextFieldName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__step_pattern_iter_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->nextStepPatternSerial()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private translateGeneralContext(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->getNextFieldName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "I"

    invoke-static {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v7

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v8

    const-string v9, "step_pattern_tmp1"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v7, v8, v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v7

    new-instance v8, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;

    invoke-virtual {v7}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v9

    invoke-direct {v8, v9}, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;-><init>(I)V

    invoke-virtual {v4, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string v8, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-static {v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v11

    const-string v12, "step_pattern_tmp2"

    invoke-virtual {v2, v12, v9, v11, v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->isExternal()Z

    move-result v11

    if-nez v11, :cond_0

    new-instance v11, Lcom/sun/org/apache/bcel/internal/classfile/Field;

    const/4 v13, 0x2

    invoke-virtual {v3, v5}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v8}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v17

    move-object v12, v11

    invoke-direct/range {v12 .. v17}, Lcom/sun/org/apache/bcel/internal/classfile/Field;-><init>(III[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    invoke-virtual {v1, v11}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11, v5, v8}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v8, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    invoke-direct {v8, v5}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {v4, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v8, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v4, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v8, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v11

    invoke-direct {v8, v11}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v4, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v8, Lcom/sun/org/apache/bcel/internal/generic/IFNONNULL;

    invoke-direct {v8, v10}, Lcom/sun/org/apache/bcel/internal/generic/IFNONNULL;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v4, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    move-object v8, v10

    :goto_0
    iget-object v11, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v11, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    new-instance v11, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v4, v11}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->isExternal()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v11

    invoke-direct {v1, v11}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    invoke-direct {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-virtual {v7}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v5

    invoke-direct {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string v1, "getParent"

    const-string v5, "(I)I"

    const-string v8, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    invoke-virtual {v3, v8, v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 v5, 0x2

    invoke-direct {v3, v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SWAP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setStartNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-static {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    const-string v5, "step_pattern_tmp3"

    invoke-virtual {v2, v5, v1, v3, v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v1

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/GOTO;

    invoke-direct {v3, v10}, Lcom/sun/org/apache/bcel/internal/generic/GOTO;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v3

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->nextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    sget-object v6, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v4, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v8

    invoke-direct {v6, v8}, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;-><init>(I)V

    invoke-virtual {v4, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v6, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    new-instance v8, Lcom/sun/org/apache/bcel/internal/generic/IFLT;

    invoke-direct {v8, v10}, Lcom/sun/org/apache/bcel/internal/generic/IFLT;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v4, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v8

    invoke-direct {v6, v8}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v4, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-virtual {v7}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v8

    invoke-direct {v6, v8}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v4, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPLT;

    invoke-direct {v6, v5}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPLT;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v4, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v1

    invoke-direct {v5, v1}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-virtual {v7}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v5

    invoke-direct {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPNE;

    invoke-direct {v1, v10}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPNE;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void
.end method

.method private translateKernel(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_nodeType:I

    const/4 v2, 0x1

    const-string v3, "(I)Z"

    const-string v4, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v1, v2, :cond_0

    const-string v1, "isElement"

    invoke-virtual {p1, v4, v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SWAP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {p2, p1, v5}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/IFNE;

    invoke-direct {p1, v6}, Lcom/sun/org/apache/bcel/internal/generic/IFNE;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;

    invoke-direct {p2, v6}, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    goto/16 :goto_0

    :cond_0
    if-ne v1, v5, :cond_1

    const-string v1, "isAttribute"

    invoke-virtual {p1, v4, v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SWAP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {p2, p1, v5}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/IFNE;

    invoke-direct {p1, v6}, Lcom/sun/org/apache/bcel/internal/generic/IFNE;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;

    invoke-direct {p2, v6}, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    goto :goto_0

    :cond_1
    const-string v1, "getExpandedTypeID"

    const-string v2, "(I)I"

    invoke-virtual {p1, v4, v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SWAP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {p2, v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_nodeType:I

    invoke-direct {p2, p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPEQ;

    invoke-direct {p1, v6}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPEQ;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;

    invoke-direct {p2, v6}, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :goto_0
    return-void
.end method

.method private translateNoContext(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SWAP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_isEpsilon:Z

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->translateKernel(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->getExpr()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translateDesynthesized(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_trueList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    iget-object v5, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_trueList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->append(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    iget-object v3, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->append(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->backPatchTrueList(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/GOTO;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/GOTO;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->backPatchFalseList(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/GOTO;

    invoke-direct {p2, v1}, Lcom/sun/org/apache/bcel/internal/generic/GOTO;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void
.end method

.method private translateSimpleContext(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 9

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    const-string v2, "I"

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    const-string v4, "step_pattern_tmp1"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v2, v3, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v2

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-boolean v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_isEpsilon:Z

    if-nez v3, :cond_0

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->translateKernel(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :cond_0
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string v3, "<init>"

    const-string v4, "(ILcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V"

    const-string v6, "com.sun.org.apache.xalan.internal.xsltc.dom.MatchingIterator"

    invoke-virtual {v0, v6, v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v4, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    const-string v4, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-static {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v7

    const-string v8, "step_pattern_tmp2"

    invoke-virtual {p2, v8, v4, v7, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v4

    new-instance v7, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v1, v7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v7, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v7, v6}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    invoke-virtual {v1, v7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v6, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v4

    invoke-direct {v6, v4}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    invoke-direct {v4, v3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string v3, "getParent"

    const-string v4, "(I)I"

    const-string v6, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    invoke-virtual {v0, v6, v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setStartNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->getExpr()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translateDesynthesized(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->backPatchTrueList(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/GOTO;

    invoke-direct {p1, v5}, Lcom/sun/org/apache/bcel/internal/generic/GOTO;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->backPatchFalseList(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/GOTO;

    invoke-direct {p2, v5}, Lcom/sun/org/apache/bcel/internal/generic/GOTO;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void
.end method


# virtual methods
.method public getAxis()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_axis:I

    return p0
.end method

.method public getDefaultPriority()D
    .locals 5

    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_priority:D

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->hasPredicates()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    return-wide v0

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_nodeType:I

    const/4 v0, -0x1

    const-wide/high16 v1, -0x4020000000000000L    # -0.5

    if-eq p0, v0, :cond_4

    const-wide/16 v3, 0x0

    if-eqz p0, :cond_3

    const/16 v0, 0xe

    if-lt p0, v0, :cond_2

    move-wide v1, v3

    :cond_2
    return-wide v1

    :cond_3
    return-wide v3

    :cond_4
    return-wide v1
.end method

.method public getKernelPattern()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;
    .locals 0

    return-object p0
.end method

.method public getNodeType()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_nodeType:I

    return p0
.end method

.method public hasPredicates()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWildcard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_isEpsilon:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->hasPredicates()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reduceKernelPattern()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_isEpsilon:Z

    return-void
.end method

.method public setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    invoke-virtual {v2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPredicates(Ljava/util/Vector;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    return-object p0
.end method

.method public setPriority(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_priority:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "stepPattern(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_axis:I

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_isEpsilon:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "epsilon{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_nodeType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_nodeType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->hasPredicates()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_contextCase:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->translateGeneralContext(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->translateSimpleContext(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->translateNoContext(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->isWildcard()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->POP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->translateKernel(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :goto_0
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->hasPredicates()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->analyzeCases()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_contextCase:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->isNthPositionFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_contextCase:I

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_axis:I

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_nodeType:I

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;-><init>(IILjava/util/Vector;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_axis:I

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_nodeType:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;-><init>(IILjava/util/Vector;)V

    :goto_1
    move-object v3, v0

    goto :goto_3

    :cond_2
    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->dontOptimize()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_axis:I

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_nodeType:I

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-direct {v3, v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;-><init>(IILjava/util/Vector;)V

    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    :cond_5
    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_axis:I

    const/4 p1, 0x3

    if-ne p0, p1, :cond_6

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Element:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    goto :goto_4

    :cond_6
    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Attribute:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :goto_4
    return-object p0
.end method
