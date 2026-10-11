.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;
.source "SourceFile"


# static fields
.field private static final AttributeSetPrefix:Ljava/lang/String; = "$as$"


# instance fields
.field private _ignore:Z

.field private _mergeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;

.field private _method:Ljava/lang/String;

.field private _name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

.field private _useSets:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->_ignore:Z

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->_method:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    return-object p0
.end method

.method public ignore()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->_ignore:Z

    return-void
.end method

.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 6

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidQName(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "INVALID_QNAME_ERR"

    const/4 v3, 0x3

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v1, v2, v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p1, v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_0
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "UNNAMED_ATTRIBSET_ERR"

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p1, v3, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_2
    const-string v0, "use-attribute-sets"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->isValidQNames(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v1, v2, v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p1, v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_3
    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;

    invoke-direct {v1, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->_useSets:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;

    :cond_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getContents()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    instance-of v5, v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->setCurrentNode(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {v4, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    goto :goto_1

    :cond_5
    instance-of v4, v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v5, "ILLEGAL_CHILD_ERR"

    invoke-direct {v4, v5, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p1, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->setCurrentNode(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "attribute-set: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 5

    iget-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->_ignore:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/AttributeSetMethodGenerator;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->_method:Ljava/lang/String;

    invoke-direct {p2, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/AttributeSetMethodGenerator;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->_mergeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->_mergeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I)V"

    invoke-virtual {v0, v3, v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    invoke-direct {v2, v0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->_useSets:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p0

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->RETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->stripAttributes(Z)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->removeNOPs()V

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->_ignore:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addAttributeSet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->_mergeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$as$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->nextAttributeSetSerial()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->_method:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->_useSets:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->typeCheckContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
