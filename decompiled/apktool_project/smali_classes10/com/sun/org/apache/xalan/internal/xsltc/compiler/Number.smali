.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;


# static fields
.field private static final ClassNames:[Ljava/lang/String;

.field private static final FieldNames:[Ljava/lang/String;

.field private static final LEVEL_ANY:I = 0x2

.field private static final LEVEL_MULTIPLE:I = 0x1

.field private static final LEVEL_SINGLE:I


# instance fields
.field private _className:Ljava/lang/String;

.field private _closureVars:Ljava/util/ArrayList;

.field private _count:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

.field private _format:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

.field private _formatNeeded:Z

.field private _from:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

.field private _groupingSeparator:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

.field private _groupingSize:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

.field private _lang:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

.field private _letterValue:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

.field private _level:I

.field private _value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "com.sun.org.apache.xalan.internal.xsltc.dom.MultipleNodeCounter"

    const-string v1, "com.sun.org.apache.xalan.internal.xsltc.dom.AnyNodeCounter"

    const-string v2, "com.sun.org.apache.xalan.internal.xsltc.dom.SingleNodeCounter"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->ClassNames:[Ljava/lang/String;

    const-string v0, "___multiple_node_counter"

    const-string v1, "___any_node_counter"

    const-string v2, "___single_node_counter"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->FieldNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_from:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_count:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_lang:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_format:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_letterValue:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_groupingSeparator:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_groupingSize:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_level:I

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_formatNeeded:Z

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_className:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_closureVars:Ljava/util/ArrayList;

    return-void
.end method

.method private compileConstructor(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V
    .locals 14

    new-instance v9, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v9}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v10

    new-instance v11, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/4 v12, 0x3

    new-array v3, v12, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    const-string v0, "Lcom/sun/org/apache/xalan/internal/xsltc/Translet;"

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    const/4 v13, 0x1

    aput-object v0, v3, v13

    const-string v0, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const-string v0, "translet"

    const-string v4, "iterator"

    const-string v5, "dom"

    filled-new-array {v5, v0, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "<init>"

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_className:Ljava/lang/String;

    move-object v0, v11

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ALOAD_0:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    invoke-virtual {v9, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ALOAD_1:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    invoke-virtual {v9, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ALOAD_2:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    invoke-virtual {v9, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-direct {v0, v12}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v9, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->ClassNames:[Ljava/lang/String;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_level:I

    aget-object p0, v0, p0

    const-string v0, "<init>"

    const-string v1, "(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V"

    invoke-virtual {v10, p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v9, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->RETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v9, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v11, v13}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->stripAttributes(Z)V

    invoke-virtual {v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    return-void
.end method

.method private compileDefault(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 12

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getNumberFieldIndexes()[I

    move-result-object v2

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_level:I

    aget v4, v2, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    new-instance v4, Lcom/sun/org/apache/bcel/internal/classfile/Field;

    const/4 v7, 0x2

    sget-object v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->FieldNames:[Ljava/lang/String;

    aget-object v3, v5, v3

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v8

    const-string v3, "Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v11

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/sun/org/apache/bcel/internal/classfile/Field;-><init>(III[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V

    iget v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_level:I

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_level:I

    aget-object v5, v5, v7

    invoke-virtual {v0, v6, v5, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v4

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    iget v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_level:I

    aget v4, v2, v4

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/IFNONNULL;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/IFNONNULL;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v3

    sget-object v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->ClassNames:[Ljava/lang/String;

    iget v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_level:I

    aget-object v5, v5, v6

    const-string v6, "getDefaultNodeCounter"

    const-string v7, "(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;"

    invoke-virtual {v0, v5, v6, v7}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;

    invoke-direct {p2, v0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;-><init>(I)V

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SWAP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_level:I

    aget v0, v2, v0

    invoke-direct {p2, v0}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/GOTO;

    invoke-direct {p2, v4}, Lcom/sun/org/apache/bcel/internal/generic/GOTO;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_level:I

    aget p0, v2, p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void
.end method

.method private compileLocals(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeCounterGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MatchGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    const-string v1, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    const-string v3, "iterator"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v2, v4, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v2

    const-string v3, "_iterator"

    const-string v5, "com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter"

    invoke-virtual {v0, v5, v3, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ALOAD_0:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    invoke-virtual {p3, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    invoke-direct {v6, v1}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {p3, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v6

    invoke-direct {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {p3, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MatchGenerator;->setIteratorIndex(I)V

    const-string v1, "Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;"

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    const-string v2, "translet"

    invoke-virtual {p2, v2, v1, v4, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v1

    const-string v2, "_translet"

    const-string v6, "Lcom/sun/org/apache/xalan/internal/xsltc/Translet;"

    invoke-virtual {v0, v5, v2, v6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    invoke-direct {v5, v2}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {p3, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;

    const-string v5, "com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet"

    invoke-virtual {v0, v5}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v5}, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;-><init>(I)V

    invoke-virtual {p3, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v5

    invoke-direct {v2, v5}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {p3, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeCounterGenerator;->setTransletIndex(I)V

    const-string p1, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    const-string v2, "document"

    invoke-virtual {p2, v2, v1, v4, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_className:Ljava/lang/String;

    const-string v2, "_document"

    invoke-virtual {v0, p0, v2, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {p3, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {p3, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MatchGenerator;->setDomIndex(I)V

    return-void
.end method

.method private compilePatterns(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getHelperClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_className:Ljava/lang/String;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeCounterGenerator;

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_className:Ljava/lang/String;

    sget-object v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->ClassNames:[Ljava/lang/String;

    iget v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_level:I

    aget-object v4, v2, v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x21

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object v8

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeCounterGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v2

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_closureVars:Ljava/util/ArrayList;

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

    iget-object v6, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_closureVars:Ljava/util/ArrayList;

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
    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->compileConstructor(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V

    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_from:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    const-string v6, "node"

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    new-instance v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MatchGenerator;

    const/16 v10, 0x11

    sget-object v11, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    new-array v12, v7, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    sget-object v9, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    aput-object v9, v12, v4

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v13

    const-string v14, "matchesFrom"

    iget-object v15, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_className:Ljava/lang/String;

    move-object v9, v8

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    invoke-direct/range {v9 .. v17}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MatchGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    invoke-direct {v0, v1, v8, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->compileLocals(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeCounterGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MatchGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadContextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v9, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_from:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {v9, v1, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v9, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_from:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {v9, v1, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->synthesize(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    sget-object v9, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IRETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v5, v9}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v8, v7}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->stripAttributes(Z)V

    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->removeNOPs()V

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    :cond_2
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_count:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    if-eqz v5, :cond_3

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    new-instance v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MatchGenerator;

    const/16 v10, 0x11

    sget-object v11, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    new-array v12, v7, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    sget-object v9, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    aput-object v9, v12, v4

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v13

    const-string v14, "matchesCount"

    iget-object v15, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_className:Ljava/lang/String;

    move-object v9, v8

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    invoke-direct/range {v9 .. v17}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MatchGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    invoke-direct {v0, v1, v8, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->compileLocals(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeCounterGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MatchGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadContextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_count:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {v2, v1, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_count:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {v2, v1, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->synthesize(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IRETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v5, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v8, v7}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->stripAttributes(Z)V

    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->removeNOPs()V

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getJavaClass()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->dumpClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v2

    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_className:Ljava/lang/String;

    const-string v6, "<init>"

    const-string v7, "(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V"

    invoke-virtual {v1, v5, v6, v7}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    iget-object v7, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_className:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    invoke-virtual {v2, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v6, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v2, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    invoke-direct {v6, v5}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v2, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_2
    if-ge v4, v3, :cond_4

    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_closureVars:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->getVariable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v6

    sget-object v7, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v2, v7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->loadInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v7, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    iget-object v8, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_className:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getEscapedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v8, v5, v6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-direct {v7, v5}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {v2, v7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public addVariable(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_closureVars:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_closureVars:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_closureVars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_closureVars:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public getInnerClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_className:Ljava/lang/String;

    return-object p0
.end method

.method public getParentClosure()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasValue()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public inInnerClass()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_className:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDefault()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_from:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_count:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_b

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->getQName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {p1, p0, v3, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->parseExpression(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    goto/16 :goto_1

    :cond_0
    const-string v5, "count"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, p0, v3, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->parsePattern(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_count:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    goto/16 :goto_1

    :cond_1
    const-string v5, "from"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, p0, v3, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->parsePattern(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_from:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    goto/16 :goto_1

    :cond_2
    const-string v5, "level"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    const-string v3, "single"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_level:I

    goto/16 :goto_1

    :cond_3
    const-string v3, "multiple"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_level:I

    goto :goto_1

    :cond_4
    const-string v3, "any"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x2

    iput v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_level:I

    goto :goto_1

    :cond_5
    const-string v5, "format"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    invoke-direct {v3, v4, p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_format:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    iput-boolean v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_formatNeeded:Z

    goto :goto_1

    :cond_6
    const-string v5, "lang"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    invoke-direct {v3, v4, p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_lang:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    iput-boolean v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_formatNeeded:Z

    goto :goto_1

    :cond_7
    const-string v5, "letter-value"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    invoke-direct {v3, v4, p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_letterValue:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    iput-boolean v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_formatNeeded:Z

    goto :goto_1

    :cond_8
    const-string v5, "grouping-separator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    invoke-direct {v3, v4, p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_groupingSeparator:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    iput-boolean v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_formatNeeded:Z

    goto :goto_1

    :cond_9
    const-string v5, "grouping-size"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    invoke-direct {v3, v4, p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_groupingSize:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    iput-boolean v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_formatNeeded:Z

    :cond_a
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->hasValue()Z

    move-result v2

    const-string v3, "com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter"

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->compileDefault(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-direct {v2, v0, v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;D)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DADD:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string v2, "floor"

    const-string v4, "(D)D"

    const-string v5, "java.lang.Math"

    invoke-virtual {v0, v5, v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;

    invoke-direct {v4, v2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string v2, "setValue"

    const-string v4, "(D)Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;"

    invoke-virtual {v0, v3, v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v4, v2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->compileDefault(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->compilePatterns(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->hasValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadContextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string v2, "setStartNode"

    const-string v4, "(I)Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;"

    invoke-virtual {v0, v3, v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v4, v2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_2
    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_formatNeeded:Z

    const-string v4, "getCounter"

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_format:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    const-string v5, "1"

    invoke-direct {v2, v0, v5}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_1
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_lang:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    const-string v5, "en"

    invoke-direct {v2, v0, v5}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_2
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_letterValue:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    const-string v5, ""

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto :goto_3

    :cond_5
    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v2, v0, v5}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_3
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_groupingSeparator:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto :goto_4

    :cond_6
    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v2, v0, v5}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_4
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_groupingSize:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto :goto_5

    :cond_7
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    const-string p1, "0"

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_5
    const-string p0, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    invoke-virtual {v0, v3, v4, p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_6

    :cond_8
    const-string p0, "setDefaultFormatting"

    const-string p1, "()Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;"

    invoke-virtual {v0, v3, p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string p0, "()Ljava/lang/String;"

    invoke-virtual {v0, v3, v4, p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_6
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string p0, "characters"

    const-string p1, "(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V"

    const-string p2, "com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet"

    invoke-virtual {v0, p2, p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Real:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_count:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_from:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_format:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_lang:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_letterValue:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_groupingSeparator:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :cond_6
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;->_groupingSize:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :cond_7
    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
