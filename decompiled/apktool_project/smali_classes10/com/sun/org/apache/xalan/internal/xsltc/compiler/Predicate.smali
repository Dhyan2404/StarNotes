.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;


# instance fields
.field private _canOptimize:Z

.field private _className:Ljava/lang/String;

.field private _closureVars:Ljava/util/ArrayList;

.field private _exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

.field private _nthDescendant:Z

.field private _nthPositionFilter:Z

.field private _parentClosure:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

.field _ptype:I

.field private _step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

.field private _value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_canOptimize:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_nthPositionFilter:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_nthDescendant:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_ptype:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_className:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_closureVars:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_parentClosure:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    return-void
.end method

.method private compileFilter(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getHelperClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_className:Ljava/lang/String;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/FilterGenerator;

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_className:Ljava/lang/String;

    const-string v4, "java.lang.Object"

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x21

    const-string v2, "com.sun.org.apache.xalan.internal.xsltc.dom.CurrentNodeListFilter"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object v8

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/FilterGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v2

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_closureVars:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    iget-object v6, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_closureVars:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->getVariable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    move-result-object v6

    new-instance v13, Lcom/sun/org/apache/bcel/internal/classfile/Field;

    const/4 v8, 0x1

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getEscapedName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v12

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/sun/org/apache/bcel/internal/classfile/Field;-><init>(III[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    invoke-virtual {v1, v13}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;

    const/16 v10, 0x11

    sget-object v11, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/4 v6, 0x6

    new-array v12, v6, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    sget-object v6, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    aput-object v6, v12, v4

    const/4 v4, 0x1

    aput-object v6, v12, v4

    const/4 v7, 0x2

    aput-object v6, v12, v7

    const/4 v7, 0x3

    aput-object v6, v12, v7

    const-string v6, "Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;"

    invoke-static {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v12, v7

    const-string v6, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-static {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v12, v7

    const-string v13, "node"

    const-string v14, "position"

    const-string v15, "last"

    const-string v16, "current"

    const-string v17, "translet"

    const-string v18, "iterator"

    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    move-result-object v13

    const-string v14, "test"

    iget-object v15, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_className:Ljava/lang/String;

    move-object v9, v5

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    invoke-direct/range {v9 .. v17}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    const-string v6, "document"

    const-string v7, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    invoke-static {v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v8, v9, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/FilterGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v9, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;

    invoke-virtual {v2, v8}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;-><init>(I)V

    invoke-virtual {v3, v9}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v9, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    const-string v10, "_dom"

    invoke-virtual {v2, v8, v10, v7}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v9, v2}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {v3, v9}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v7

    invoke-direct {v2, v7}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->setDomIndex(I)V

    iget-object v2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v2, v1, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IRETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v5, v4}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->stripAttributes(Z)V

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->removeNOPs()V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addEmptyConstructor(I)V

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getJavaClass()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->dumpClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    return-void
.end method


# virtual methods
.method public addVariable(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_closureVars:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_closureVars:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_closureVars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_closureVars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->getParentClosure()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;->addVariable(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;)V

    :cond_1
    return-void
.end method

.method public dontOptimize()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_canOptimize:Z

    return-void
.end method

.method public getCompareValue()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    instance-of v2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;->getLeft()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;->getRight()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v0

    instance-of v3, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;

    if-eqz v3, :cond_2

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    return-object v2

    :cond_2
    instance-of v3, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v3

    sget-object v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-ne v3, v4, :cond_3

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    return-object v2

    :cond_3
    instance-of v2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;

    if-eqz v2, :cond_4

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    return-object v0

    :cond_4
    instance-of v2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v2

    sget-object v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-ne v2, v3, :cond_5

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    return-object v0

    :cond_5
    return-object v1
.end method

.method public getExpr()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    return-object p0
.end method

.method public getInnerClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_className:Ljava/lang/String;

    return-object p0
.end method

.method public getParentClosure()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_parentClosure:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_parentClosure:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_parentClosure:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    return-object p0
.end method

.method public getPosType()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_ptype:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->getNodeType()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_ptype:I

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AbsoluteLocationPath;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AbsoluteLocationPath;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AbsoluteLocationPath;->getPath()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->getNodeType()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_ptype:I

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->getVariable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getExpression()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->getNodeType()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_ptype:I

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->getNodeType()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_ptype:I

    :cond_3
    :goto_0
    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_ptype:I

    return p0
.end method

.method public getStep()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;->getLeft()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;->getRight()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v0

    instance-of v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->getExpr()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v1

    :cond_2
    instance-of v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    :cond_3
    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->getExpr()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v0

    :cond_4
    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    :cond_5
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    return-object p0
.end method

.method public hasLastCall()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->hasLastCall()Z

    move-result p0

    return p0
.end method

.method public hasPositionCall()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->hasPositionCall()Z

    move-result p0

    return p0
.end method

.method public inInnerClass()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_className:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBooleanTest()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    instance-of p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanExpr;

    return p0
.end method

.method public isNodeValueTest()Z
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_canOptimize:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->getStep()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->getCompareValue()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isNthDescendant()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_nthDescendant:Z

    return p0
.end method

.method public isNthPositionFilter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_nthPositionFilter:Z

    return p0
.end method

.method public parentIsPattern()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p0

    instance-of p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    return p0
.end method

.method public setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pred("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_nthPositionFilter:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_nthDescendant:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->isNodeValueTest()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v2

    instance-of v2, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;

    const-string p2, "java.lang.String"

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;->getOp()Z

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Z)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->translateFilter(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :goto_1
    return-void
.end method

.method public translateFilter(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 8

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->compileFilter(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_className:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_className:Ljava/lang/String;

    const-string v2, "<init>"

    const-string v3, "()V"

    invoke-virtual {v0, p2, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_closureVars:Ljava/util/ArrayList;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge p2, p1, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_closureVars:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->getVariable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v3

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_parentClosure:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;->inInnerClass()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;->getParentClosure()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    move-result-object v4

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ALOAD_0:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    invoke-interface {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;->getInnerClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getEscapedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v6, v7}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v5, v4}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->loadInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_3
    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_className:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getEscapedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v4, v2}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ReferenceType;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Real:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-object v0, v2

    :cond_0
    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ResultTreeType;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Real:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    :cond_1
    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NumberType;

    if-eqz v1, :cond_7

    instance-of v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/IntType;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Int:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_2
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_canOptimize:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->hasLastCall()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->hasPositionCall()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_nthPositionFilter:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p1

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p1

    instance-of p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AbsoluteLocationPath;

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_nthDescendant:Z

    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1

    :cond_5
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_nthDescendant:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_nthPositionFilter:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v0

    const-string v2, "position"

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/PositionCall;

    invoke-direct {v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/PositionCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    invoke-virtual {v2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;-><init>(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p1

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-eq p1, v0, :cond_6

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-direct {p1, v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_6
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object v0

    :cond_7
    instance-of p1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;

    if-nez p1, :cond_8

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->_exp:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_8
    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1
.end method
