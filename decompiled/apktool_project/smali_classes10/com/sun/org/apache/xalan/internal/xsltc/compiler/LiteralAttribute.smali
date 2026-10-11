.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;
.source "SourceFile"


# instance fields
.field private final _name:Ljava/lang/String;

.field private final _value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;->_name:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-static {p0, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;->create(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    return-void
.end method

.method private hasBadChars(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-char v2, p0, v1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7e

    if-lt v3, v2, :cond_1

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x26

    if-eq v2, v3, :cond_1

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public contextDependent()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->contextDependent()Z

    move-result p0

    return p0
.end method

.method public display(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->indent(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LiteralAttribute name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;->_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;->_name:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;->_name:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p1

    instance-of v2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->allAttributesUnique()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->getElemDesc()Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;->_name:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {p1, v3, v4}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->isAttrFlagSet(Ljava/lang/String;I)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    move v4, v5

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;->_name:Ljava/lang/String;

    invoke-virtual {p1, v3, v5}, Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;->isAttrFlagSet(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    instance-of v3, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SimpleAttributeValue;

    if-eqz v3, :cond_2

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SimpleAttributeValue;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SimpleAttributeValue;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;->hasBadChars(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    if-nez v2, :cond_2

    or-int/lit8 v4, v4, 0x1

    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {p0, v0, v4}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->uniqueAttribute()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->attribute()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_1
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->typeCheckContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
