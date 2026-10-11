.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;
    }
.end annotation


# static fields
.field public static final PRESERVE_SPACE:I = 0x2

.field public static final RULE_ALL:I = 0x3

.field public static final RULE_ELEMENT:I = 0x1

.field public static final RULE_NAMESPACE:I = 0x2

.field public static final RULE_NONE:I = 0x0

.field public static final STRIP_SPACE:I = 0x1

.field public static final USE_PREDICATE:I


# instance fields
.field private _action:I

.field private _elementList:Ljava/lang/String;

.field private _importPrecedence:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;-><init>()V

    return-void
.end method

.method private static compileDefault(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V
    .locals 12

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v8

    new-instance v9, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v9}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    new-instance v10, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;

    const/16 v1, 0x11

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/4 v0, 0x3

    new-array v3, v0, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    const-string v0, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/4 v11, 0x1

    aput-object v0, v3, v11

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const-string v0, "node"

    const-string v4, "type"

    const-string v5, "dom"

    filled-new-array {v5, v0, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "stripSpace"

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getClassName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v10

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    const-string v0, "com/sun/org/apache/xalan/internal/xsltc/StripFilter"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addInterface(Ljava/lang/String;)V

    if-ne p0, v11, :cond_0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ICONST_1:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v9, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ICONST_0:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v9, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IRETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v9, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v10, v11}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->stripAttributes(Z)V

    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->removeNOPs()V

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    return-void
.end method

.method private static compilePredicate(Ljava/util/Vector;ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V
    .locals 19

    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v10

    new-instance v11, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v11}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v12

    new-instance v13, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;

    const/16 v2, 0x11

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/4 v1, 0x3

    new-array v4, v1, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    const-string v1, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    const/4 v14, 0x0

    aput-object v1, v4, v14

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/4 v15, 0x1

    aput-object v1, v4, v15

    const/4 v9, 0x2

    aput-object v1, v4, v9

    const-string v8, "dom"

    const-string v7, "node"

    const-string v6, "type"

    filled-new-array {v8, v7, v6}, [Ljava/lang/String;

    move-result-object v5

    const-string v16, "stripSpace"

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getClassName()Ljava/lang/String;

    move-result-object v17

    move-object v1, v13

    move-object v14, v6

    move-object/from16 v6, v16

    move-object v15, v7

    move-object/from16 v7, v17

    move-object/from16 v18, v8

    move-object v8, v11

    move-object/from16 v17, v12

    move v12, v9

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    const-string v1, "com/sun/org/apache/xalan/internal/xsltc/StripFilter"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addInterface(Ljava/lang/String;)V

    move-object/from16 v1, v18

    invoke-virtual {v13, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->getLocalIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->getLocalIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13, v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->getLocalIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v14, v8, :cond_5

    move-object/from16 v8, p0

    invoke-virtual {v8, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;

    const-string v15, "getNamespaceName"

    const-string v12, "(I)Ljava/lang/String;"

    const-string v8, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    invoke-virtual {v10, v8, v15, v12}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const-string v12, "compareTo"

    const-string v15, "(Ljava/lang/String;)I"

    const-string v0, "java/lang/String"

    invoke-virtual {v10, v0, v12, v15}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getStrength()I

    move-result v12

    const/4 v15, 0x2

    if-ne v12, v15, :cond_1

    new-instance v12, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-direct {v12, v1}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v11, v12}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v12, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-direct {v12, v2}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v11, v12}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v12, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {v12, v8, v15}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v11, v12}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v8, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getNamespace()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v10, v12}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v8, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v8, v0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v11, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ICONST_0:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v11, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getAction()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_0

    add-int/lit8 v0, v7, 0x1

    new-instance v8, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPEQ;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPEQ;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v11, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v8

    aput-object v8, v4, v7

    move v7, v0

    goto/16 :goto_2

    :cond_0
    const/4 v9, 0x0

    add-int/lit8 v0, v6, 0x1

    new-instance v8, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPEQ;

    invoke-direct {v8, v9}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPEQ;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v11, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v8

    aput-object v8, v5, v6

    move v6, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getStrength()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v0

    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getNamespace()Ljava/lang/String;

    move-result-object v8

    const-string v12, ""

    if-eq v8, v12, :cond_2

    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getNamespace()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getElement()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    invoke-virtual {v0, v8, v15, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getElement()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    :goto_1
    move-object/from16 v8, v17

    invoke-virtual {v8, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->registerElement(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)I

    move-result v0

    new-instance v12, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-direct {v12, v3}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v11, v12}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v12, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v12, v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v11, v12}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getAction()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_3

    add-int/lit8 v0, v7, 0x1

    new-instance v9, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPEQ;

    const/4 v12, 0x0

    invoke-direct {v9, v12}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPEQ;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v11, v9}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v9

    aput-object v9, v4, v7

    move v7, v0

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    add-int/lit8 v0, v6, 0x1

    new-instance v9, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPEQ;

    invoke-direct {v9, v12}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPEQ;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v11, v9}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v9

    aput-object v9, v5, v6

    move v6, v0

    goto :goto_3

    :cond_4
    :goto_2
    move-object/from16 v8, v17

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    move-object/from16 v17, v8

    const/4 v12, 0x2

    goto/16 :goto_0

    :cond_5
    move/from16 v0, p1

    const/4 v9, 0x1

    if-ne v0, v9, :cond_6

    invoke-static {v4, v7, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->compileStripSpace([Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;ILcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    invoke-static {v5, v6, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->compilePreserveSpace([Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;ILcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    goto :goto_4

    :cond_6
    invoke-static {v5, v6, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->compilePreserveSpace([Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;ILcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    invoke-static {v4, v7, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->compileStripSpace([Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;ILcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    :goto_4
    invoke-virtual {v13, v9}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->stripAttributes(Z)V

    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    invoke-virtual {v13}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    invoke-virtual {v13}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->removeNOPs()V

    invoke-virtual {v13}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    return-void
.end method

.method public static compilePreserveSpace([Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;ILcom/sun/org/apache/bcel/internal/generic/InstructionList;)V
    .locals 2

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ICONST_0:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IRETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v1, p0, p2

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static compileStripSpace([Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;ILcom/sun/org/apache/bcel/internal/generic/InstructionList;)V
    .locals 2

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ICONST_1:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IRETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v1, p0, p2

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static findContradictingRule(Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_5

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;

    if-ne v1, p1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getStrength()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getElement()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getElement()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method private static partition(Ljava/util/Vector;II)I
    .locals 3

    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, 0x1

    :goto_0
    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->compareTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->compareTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;)I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    if-ge p1, p2, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_2
    return p2
.end method

.method private static prioritizeRules(Ljava/util/Vector;)I
    .locals 6

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->quicksort(Ljava/util/Vector;II)V

    move v0, v2

    move v3, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getAction()I

    move-result v4

    if-ne v4, v1, :cond_0

    move v3, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-nez v3, :cond_2

    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    return v0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;

    invoke-static {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->findContradictingRule(Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getStrength()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getAction()I

    move-result v0

    move v3, v2

    :goto_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_7

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_6

    :cond_7
    return v0
.end method

.method private static quicksort(Ljava/util/Vector;II)V
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-static {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->partition(Ljava/util/Vector;II)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->quicksort(Ljava/util/Vector;II)V

    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static translateRules(Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)I
    .locals 2

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->prioritizeRules(Ljava/util/Vector;)I

    move-result v0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->compileDefault(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V

    return v0

    :cond_0
    invoke-static {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->compilePredicate(Ljava/util/Vector;ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getRules()Ljava/util/Vector;
    .locals 6

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->_elementList:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->_action:I

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->_importPrecedence:I

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_qname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "strip-space"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->_action:I

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getCurrentImportPrecedence()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->_importPrecedence:I

    const-string v0, "elements"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->_elementList:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    new-instance p1, Ljava/util/StringTokenizer;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->_elementList:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->_elementList:Ljava/lang/String;

    return-void

    :cond_6
    :goto_3
    const-string v1, "REQUIRED_ATTR_ERR"

    invoke-virtual {p0, p0, p1, v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->reportError(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 0

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
