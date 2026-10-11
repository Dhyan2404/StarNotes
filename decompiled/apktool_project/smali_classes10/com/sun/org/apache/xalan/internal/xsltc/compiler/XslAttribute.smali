.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;
.source "SourceFile"


# instance fields
.field private _ignore:Z

.field private _isLiteral:Z

.field private _name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

.field private _namespace:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

.field private _prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_namespace:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_ignore:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_isLiteral:Z

    return-void
.end method


# virtual methods
.method public display(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->indent(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->displayContents(I)V

    return-void
.end method

.method public getName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    return-object p0
.end method

.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 11

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "namespace"

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;Z)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getPrefix()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ILLEGAL_ATTR_NAME_ERR"

    const-string v7, "xmlns"

    if-eqz v5, :cond_0

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    invoke-virtual {p0, p0, p1, v6, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->reportError(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->isLiteral(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_isLiteral:Z

    if-eqz v7, :cond_3

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidQName(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p0, p0, p1, v6, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->reportError(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getContents()Ljava/util/Vector;

    move-result-object v7

    move v8, v3

    :goto_0
    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementCount()I

    move-result v9

    if-ge v8, v9, :cond_d

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    if-ne v9, p0, :cond_4

    goto :goto_2

    :cond_4
    instance-of v10, v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;

    if-eqz v10, :cond_5

    goto :goto_1

    :cond_5
    instance-of v10, v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;

    if-eqz v10, :cond_6

    goto :goto_1

    :cond_6
    instance-of v10, v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;

    if-eqz v10, :cond_7

    goto :goto_1

    :cond_7
    instance-of v10, v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    if-eqz v10, :cond_8

    goto :goto_1

    :cond_8
    instance-of v10, v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/If;

    if-eqz v10, :cond_9

    goto :goto_1

    :cond_9
    instance-of v10, v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Choose;

    if-eqz v10, :cond_a

    goto :goto_1

    :cond_a
    instance-of v10, v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CopyOf;

    if-eqz v10, :cond_b

    goto :goto_1

    :cond_b
    instance-of v9, v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    if-eqz v9, :cond_c

    goto :goto_1

    :cond_c
    const-string v9, "STRAY_ATTRIBUTE_ERR"

    invoke-virtual {p0, p0, p1, v9, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->reportWarning(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_d
    :goto_2
    const-string v7, ""

    if-eqz v2, :cond_e

    if-eq v2, v7, :cond_e

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_prefix:Ljava/lang/String;

    new-instance v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    invoke-direct {v8, v2, p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    iput-object v8, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_namespace:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    goto :goto_3

    :cond_e
    if-eqz v5, :cond_f

    if-eq v5, v7, :cond_f

    iput-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_prefix:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    new-instance v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    invoke-direct {v8, v2, p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    iput-object v8, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_namespace:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    :cond_f
    :goto_3
    iget-object v8, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_namespace:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    if-eqz v8, :cond_15

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_prefix:Ljava/lang/String;

    if-eqz v1, :cond_11

    if-ne v1, v7, :cond_10

    goto :goto_4

    :cond_10
    if-eqz v5, :cond_12

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iput-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_prefix:Ljava/lang/String;

    goto :goto_5

    :cond_11
    :goto_4
    if-eqz v5, :cond_13

    iput-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_prefix:Ljava/lang/String;

    :cond_12
    :goto_5
    move v1, v3

    goto :goto_6

    :cond_13
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->generateNamespacePrefix()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_prefix:Ljava/lang/String;

    const/4 v1, 0x1

    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_prefix:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    instance-of v5, v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    if-eqz v5, :cond_14

    if-nez v1, :cond_14

    move-object v1, v6

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_prefix:Ljava/lang/String;

    invoke-virtual {v1, v5, v2, v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->registerNamespace(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;Z)V

    :cond_14
    move-object v1, v4

    :cond_15
    instance-of v0, v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    if-eqz v0, :cond_16

    check-cast v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    invoke-virtual {v6, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->addAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    :cond_16
    invoke-static {p0, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;->create(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->parseChildren(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    return-void
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_ignore:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_ignore:Z

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_namespace:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_prefix:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_namespace:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    invoke-virtual {v3, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->namespace()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_1
    iget-boolean v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_isLiteral:Z

    if-nez v3, :cond_2

    const-string v3, "Ljava/lang/String;"

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    const-string v5, "nameValue"

    invoke-virtual {p2, v5, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable2(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    invoke-virtual {v4, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string v4, "checkAttribQName"

    const-string v5, "(Ljava/lang/String;)V"

    const-string v6, "com.sun.org.apache.xalan.internal.xsltc.runtime.BasisLibrary"

    invoke-virtual {v0, v6, v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;

    invoke-direct {v5, v4}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;-><init>(I)V

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v3

    invoke-direct {v4, v3}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    invoke-virtual {v3, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementCount()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_3

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    if-eqz v2, :cond_3

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    const-string v3, "stringValueHandler"

    const-string v5, "Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;"

    const-string v6, "com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet"

    invoke-virtual {v0, v6, v3, v5}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->translateContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    const-string v2, "getValue"

    const-string v3, "()Ljava/lang/String;"

    const-string v5, "com.sun.org.apache.xalan.internal.xsltc.runtime.StringValueHandler"

    invoke-virtual {v0, v5, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p1

    instance-of v2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    if-eqz v2, :cond_6

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->allAttributesUnique()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->getElemDesc()Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    instance-of v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SimpleAttributeValue;

    if-eqz v2, :cond_5

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SimpleAttributeValue;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SimpleAttributeValue;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    invoke-virtual {p1, p0, v2}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->isAttrFlagSet(Ljava/lang/String;I)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    invoke-virtual {p1, p0, v5}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->isAttrFlagSet(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_5

    move v4, v2

    :cond_5
    :goto_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {p0, v0, v4}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->uniqueAttribute()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->attribute()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_3
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_ignore:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->_namespace:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->typeCheckContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :cond_1
    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
