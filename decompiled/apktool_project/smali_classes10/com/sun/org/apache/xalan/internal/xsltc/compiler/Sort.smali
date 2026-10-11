.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;


# instance fields
.field private _caseOrder:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

.field private _className:Ljava/lang/String;

.field private _closureVars:Ljava/util/ArrayList;

.field private _data:Ljava/lang/String;

.field private _dataType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

.field private _lang:Ljava/lang/String;

.field private _needsSortRecordFactory:Z

.field private _order:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

.field private _select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_data:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_className:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_closureVars:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_needsSortRecordFactory:Z

    return-void
.end method

.method private static compileExtract(Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeSortRecordGenerator;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/Method;
    .locals 14

    new-instance v9, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v9}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    new-instance v10, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;

    const/16 v1, 0x11

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->STRING:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const/4 v0, 0x5

    new-array v3, v0, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    const-string v0, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    const/4 v11, 0x0

    aput-object v0, v3, v11

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/4 v12, 0x1

    aput-object v0, v3, v12

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const-string v4, "Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;"

    invoke-static {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const/4 v4, 0x4

    aput-object v0, v3, v4

    const-string v0, "translet"

    const-string v4, "last"

    const-string v5, "dom"

    const-string v6, "current"

    const-string v13, "level"

    filled-new-array {v5, v6, v13, v0, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "extractValueFromDOM"

    move-object v0, v10

    move-object/from16 v6, p3

    move-object v7, v9

    move-object/from16 v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [I

    new-array v2, v0, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-le v0, v12, :cond_0

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-virtual {v10, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->getLocalIndex(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v9, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/NOP;

    invoke-direct {v3}, Lcom/sun/org/apache/bcel/internal/generic/NOP;-><init>()V

    invoke-virtual {v9, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v11, v0, :cond_1

    aput v11, v1, v11

    move-object v4, p0

    invoke-virtual {p0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;

    sget-object v6, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v9, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v6

    aput-object v6, v2, v11

    move-object v6, p1

    invoke-virtual {v5, p1, v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->translateSelect(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ARETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v9, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    if-le v0, v12, :cond_2

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    const-string v4, ""

    move-object/from16 v5, p2

    invoke-direct {v0, v5, v4}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/TABLESWITCH;

    invoke-direct {v4, v1, v2, v0}, Lcom/sun/org/apache/bcel/internal/generic/TABLESWITCH;-><init>([I[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v9, v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ARETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v9, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_2
    invoke-virtual {v10, v12}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->stripAttributes(Z)V

    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->removeNOPs()V

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    return-object v0
.end method

.method private static compileInit(Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeSortRecordGenerator;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/Method;
    .locals 9

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "<init>"

    move-object v0, p1

    move-object v6, p3

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    sget-object p3, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ALOAD_0:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p3, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    const-string v0, "<init>"

    const-string v1, "()V"

    const-string v2, "com.sun.org.apache.xalan.internal.xsltc.dom.NodeSortRecord"

    invoke-virtual {p2, v2, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-direct {p3, p2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->RETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->stripAttributes(Z)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object p0

    return-object p0
.end method

.method private static compileSortRecord(Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getHelperClassName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeSortRecordGenerator;

    const-string v4, "com.sun.org.apache.xalan.internal.xsltc.dom.NodeSortRecord"

    const-string v5, "sort$0.java"

    const/16 v6, 0x31

    const/4 v11, 0x0

    new-array v7, v11, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object v8

    move-object v2, v10

    move-object v3, v9

    invoke-direct/range {v2 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeSortRecordGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v11

    :goto_0
    if-ge v5, v3, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;

    invoke-direct {v6, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->setInnerClassName(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_closureVars:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    move v7, v11

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_1
    move v8, v11

    :goto_2
    if-ge v8, v7, :cond_2

    iget-object v12, v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_closureVars:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->getVariable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    move-result-object v13

    new-instance v15, Lcom/sun/org/apache/bcel/internal/classfile/Field;

    const/16 v16, 0x1

    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getEscapedName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v17

    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toSignature()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v13

    const/16 v18, 0x0

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v19

    move-object v14, v15

    move-object v11, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v13

    invoke-direct/range {v14 .. v19}, Lcom/sun/org/apache/bcel/internal/classfile/Field;-><init>(III[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    invoke-virtual {v10, v11}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    invoke-static {v0, v10, v2, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->compileInit(Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeSortRecordGenerator;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v3

    invoke-static {v0, v10, v2, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->compileExtract(Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeSortRecordGenerator;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    invoke-virtual {v10, v3}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getJavaClass()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->dumpClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    return-object v9
.end method

.method public static compileSortRecordFactory(Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Ljava/lang/String;)Ljava/lang/String;
    .locals 24

    move-object/from16 v0, p3

    .line 64
    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getHelperClassName()Ljava/lang/String;

    move-result-object v11

    .line 66
    new-instance v12, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeSortRecordFactGenerator;

    const-string v4, "com/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".java"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x31

    const/4 v13, 0x0

    new-array v7, v13, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object v8

    move-object v2, v12

    move-object v3, v11

    invoke-direct/range {v2 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeSortRecordFactGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    .line 67
    invoke-virtual {v12}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v14

    .line 68
    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 69
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move v3, v13

    :goto_0
    if-ge v3, v2, :cond_3

    move-object/from16 v4, p0

    .line 70
    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;

    .line 71
    iget-object v6, v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_closureVars:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    move v6, v13

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_1
    move v7, v13

    :goto_2
    if-ge v7, v6, :cond_2

    .line 72
    iget-object v8, v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_closureVars:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    .line 73
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_3

    .line 74
    :cond_1
    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->getVariable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    move-result-object v9

    .line 75
    new-instance v10, Lcom/sun/org/apache/bcel/internal/classfile/Field;

    const/16 v17, 0x1

    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getEscapedName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v18

    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toSignature()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual {v14}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v21

    move-object/from16 v16, v10

    invoke-direct/range {v16 .. v21}, Lcom/sun/org/apache/bcel/internal/classfile/Field;-><init>(III[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    invoke-virtual {v12, v10}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V

    .line 76
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    const/4 v13, 0x7

    new-array v5, v13, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    const-string v2, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    .line 77
    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const-string v2, "Ljava/lang/String;"

    .line 78
    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    const/16 v16, 0x1

    aput-object v2, v5, v16

    const-string v2, "Lcom/sun/org/apache/xalan/internal/xsltc/Translet;"

    .line 79
    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    const/4 v10, 0x2

    aput-object v2, v5, v10

    const-string v2, "[Ljava/lang/String;"

    .line 80
    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    const/4 v9, 0x3

    aput-object v3, v5, v9

    .line 81
    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v5, v8

    .line 82
    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    const/4 v7, 0x5

    aput-object v3, v5, v7

    .line 83
    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v5, v6

    const-string v17, "document"

    const-string v18, "className"

    const-string v19, "translet"

    const-string v20, "order"

    const-string v21, "type"

    const-string v22, "lang"

    const-string v23, "case_order"

    .line 84
    filled-new-array/range {v17 .. v23}, [Ljava/lang/String;

    move-result-object v17

    .line 85
    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    .line 86
    new-instance v18, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;

    const/4 v3, 0x1

    sget-object v19, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v20, "<init>"

    move-object/from16 v2, v18

    move-object/from16 p0, v4

    move-object/from16 v4, v19

    move v13, v6

    move-object/from16 v6, v17

    move v13, v7

    move-object/from16 v7, v20

    move v13, v8

    move-object v8, v11

    move v13, v9

    move-object/from16 v9, p0

    move-object v10, v14

    invoke-direct/range {v2 .. v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    .line 87
    sget-object v10, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ALOAD_0:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    move-object/from16 v2, p0

    invoke-virtual {v2, v10}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 88
    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ALOAD_1:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 89
    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ALOAD_2:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 90
    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-direct {v3, v13}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 91
    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 92
    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 93
    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 94
    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 95
    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    const-string v4, "<init>"

    const-string v5, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/Translet;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V"

    const-string v13, "com/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory"

    invoke-virtual {v14, v13, v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 96
    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->RETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 97
    new-instance v9, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v9}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    .line 98
    new-instance v17, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;

    const/4 v3, 0x1

    const-string v2, "Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;"

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    const/4 v2, 0x2

    new-array v5, v2, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/16 v19, 0x0

    aput-object v2, v5, v19

    aput-object v2, v5, v16

    const-string v2, "node"

    const-string v6, "last"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "makeNodeSortRecord"

    move-object/from16 v2, v17

    move-object/from16 p0, v9

    move-object/from16 p2, v1

    move-object v1, v10

    move-object v10, v14

    invoke-direct/range {v2 .. v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    move-object/from16 v2, p0

    .line 99
    invoke-virtual {v2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 100
    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ILOAD_1:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 101
    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ILOAD_2:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 102
    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    const-string v3, "makeNodeSortRecord"

    const-string v4, "(II)Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;"

    invoke-virtual {v14, v13, v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 103
    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 104
    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;

    invoke-virtual {v14, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 105
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v13, v19

    :goto_4
    if-ge v13, v1, :cond_4

    .line 106
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    .line 107
    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->getVariable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v4

    .line 109
    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 110
    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ALOAD_0:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 111
    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getEscapedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v11, v6, v7}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 112
    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getEscapedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v0, v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v5, v3}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 113
    :cond_4
    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->POP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 114
    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ARETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 115
    invoke-virtual/range {v18 .. v18}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    .line 116
    invoke-virtual/range {v18 .. v18}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    .line 117
    invoke-virtual/range {v18 .. v18}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    .line 118
    invoke-virtual/range {v17 .. v17}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    .line 119
    invoke-virtual/range {v17 .. v17}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    .line 120
    invoke-virtual/range {v17 .. v17}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    .line 121
    invoke-virtual {v12}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getJavaClass()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->dumpClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    return-object v11
.end method

.method public static compileSortRecordFactory(Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static/range {p0 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->compileSortRecord(Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    .line 3
    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;

    .line 4
    iget-boolean v8, v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_needsSortRecordFactory:Z

    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz v7, :cond_1

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->compileSortRecordFactory(Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const-string v6, "com/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory"

    .line 6
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v7

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v8

    const-string v9, "[Ljava/lang/String;"

    .line 8
    invoke-static {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v10

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v11

    const-string v12, "sort_order_tmp"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v10, v11, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v10

    .line 9
    new-instance v11, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v11, v7, v4}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v8, v11}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 10
    new-instance v11, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;

    const-string v12, "java.lang.String"

    invoke-virtual {v7, v12}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v11, v14}, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;-><init>(I)V

    invoke-virtual {v8, v11}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v4, :cond_2

    .line 11
    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;

    .line 12
    sget-object v15, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v8, v15}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 13
    new-instance v15, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v15, v7, v11}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v8, v15}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 14
    invoke-virtual {v14, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->translateSortOrder(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    .line 15
    sget-object v14, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->AASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    invoke-virtual {v8, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 16
    :cond_2
    new-instance v11, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v14

    invoke-direct {v11, v14}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v8, v11}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 17
    invoke-static {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v11

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v14

    const-string v15, "sort_type_tmp"

    invoke-virtual {v2, v15, v11, v14, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v11

    .line 18
    new-instance v14, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v14, v7, v4}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v8, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 19
    new-instance v14, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;

    invoke-virtual {v7, v12}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v15

    invoke-direct {v14, v15}, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;-><init>(I)V

    invoke-virtual {v8, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v4, :cond_3

    .line 20
    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;

    .line 21
    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v8, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 22
    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v5, v7, v14}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v8, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 23
    invoke-virtual {v15, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->translateSortType(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    .line 24
    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->AASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    invoke-virtual {v8, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 25
    :cond_3
    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v14

    invoke-direct {v5, v14}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v8, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 26
    invoke-static {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v5

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v14

    const-string v15, "sort_lang_tmp"

    invoke-virtual {v2, v15, v5, v14, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v5

    .line 27
    new-instance v14, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v14, v7, v4}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v8, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 28
    new-instance v14, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;

    invoke-virtual {v7, v12}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v15

    invoke-direct {v14, v15}, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;-><init>(I)V

    invoke-virtual {v8, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v4, :cond_4

    .line 29
    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;

    .line 30
    sget-object v13, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v8, v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 31
    new-instance v13, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v13, v7, v14}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v8, v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 32
    invoke-virtual {v15, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->translateLang(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    .line 33
    sget-object v13, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->AASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    invoke-virtual {v8, v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    goto :goto_4

    .line 34
    :cond_4
    new-instance v13, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v14

    invoke-direct {v13, v14}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v8, v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 35
    invoke-static {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v9

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v13

    const-string v14, "sort_case_order_tmp"

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v9, v13, v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v9

    .line 36
    new-instance v13, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v13, v7, v4}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v8, v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 37
    new-instance v13, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;

    invoke-virtual {v7, v12}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v13, v12}, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;-><init>(I)V

    invoke-virtual {v8, v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v4, :cond_5

    .line 38
    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;

    .line 39
    sget-object v14, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v8, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 40
    new-instance v14, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v14, v7, v12}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v8, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 41
    invoke-virtual {v13, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->translateCaseOrder(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    .line 42
    sget-object v13, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->AASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    invoke-virtual {v8, v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 43
    :cond_5
    new-instance v12, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v13

    invoke-direct {v12, v13}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v8, v12}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 44
    new-instance v12, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    invoke-virtual {v7, v6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v12, v13}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    invoke-virtual {v8, v12}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 45
    sget-object v12, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v8, v12}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 46
    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 47
    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v2, v7, v3}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 49
    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v8, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 50
    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v8, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 51
    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v8, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 52
    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v8, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 53
    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    const-string v2, "<init>"

    const-string v3, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/Translet;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V"

    invoke-virtual {v7, v6, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v8, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v4, :cond_9

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;

    .line 56
    iget-object v5, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_closureVars:Ljava/util/ArrayList;

    if-nez v5, :cond_6

    const/4 v5, 0x0

    goto :goto_7

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_7
    const/4 v9, 0x0

    :goto_8
    if-ge v9, v5, :cond_8

    .line 57
    iget-object v10, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_closureVars:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    .line 58
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_9

    .line 59
    :cond_7
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->getVariable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    move-result-object v11

    .line 60
    sget-object v12, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v8, v12}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 61
    invoke-virtual {v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->loadInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 62
    new-instance v12, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    invoke-virtual {v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getEscapedName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toSignature()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v6, v13, v11}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-direct {v12, v11}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {v8, v12}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 63
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    return-void
.end method

.method private setInnerClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_className:Ljava/lang/String;

    return-void
.end method

.method public static translateSortIterator(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Ljava/util/Vector;)V
    .locals 9

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    const-string v2, "<init>"

    const-string v3, "(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;)V"

    const-string v4, "com.sun.org.apache.xalan.internal.xsltc.dom.SortingIterator"

    invoke-virtual {v0, v4, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v5

    const-string v6, "sort_tmp1"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v3, v5, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v3

    const-string v5, "Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;"

    invoke-static {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v6

    const-string v8, "sort_tmp2"

    invoke-virtual {p1, v8, v5, v6, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v5

    if-nez p2, :cond_0

    const-string p2, "getAxisIterator"

    const-string v6, "(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    const-string v7, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    invoke-virtual {v0, v7, p2, v6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    const/4 v7, 0x3

    invoke-direct {v6, v0, v7}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 v7, 0x2

    invoke-direct {v6, p2, v7}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :goto_0
    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v6

    invoke-direct {p2, v6}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-static {p3, p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->compileSortRecordFactory(Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method


# virtual methods
.method public addVariable(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_closureVars:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_closureVars:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_closureVars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_closureVars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_needsSortRecordFactory:Z

    :cond_1
    return-void
.end method

.method public getInnerClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_className:Ljava/lang/String;

    return-object p0
.end method

.method public getParentClosure()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public inInnerClass()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_className:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 3

    const-string v0, "text"

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v1

    instance-of v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ApplyTemplates;

    if-nez v2, :cond_0

    instance-of v1, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ForEach;

    if-nez v1, :cond_0

    const-string v0, "STRAY_SORT_ERR"

    const/4 v1, 0x0

    invoke-virtual {p0, p0, p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->reportError(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "select"

    const-string v2, "string(.)"

    invoke-virtual {p1, p0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->parseExpression(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    const-string v1, "order"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "ascending"

    :cond_1
    invoke-static {p0, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;->create(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_order:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    const-string v1, "data-type"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v1

    instance-of v1, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/IntType;

    if-eqz v1, :cond_3

    const-string v0, "number"
    :try_end_0
    .catch Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :catch_0
    :cond_3
    :goto_0
    invoke-static {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;->create(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_dataType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    const-string v0, "lang"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_lang:Ljava/lang/String;

    const-string v0, "case-order"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;->create(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_caseOrder:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    return-void
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 0

    return-void
.end method

.method public translateCaseOrder(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_caseOrder:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    return-void
.end method

.method public translateLang(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p2

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_lang:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public translateSelect(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    return-void
.end method

.method public translateSortOrder(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_order:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    return-void
.end method

.method public translateSortType(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_dataType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/StringType;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_select:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_order:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_caseOrder:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Sort;->_dataType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
