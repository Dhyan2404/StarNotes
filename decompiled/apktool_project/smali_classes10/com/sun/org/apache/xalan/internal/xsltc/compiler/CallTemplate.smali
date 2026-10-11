.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;
.source "SourceFile"


# instance fields
.field private _calleeTemplate:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

.field private _name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

.field private _parameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_parameters:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_calleeTemplate:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    return-void
.end method

.method private buildParameterList()V
    .locals 10

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_calleeTemplate:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->getParameters()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_parameters:[Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_parameters:[Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementCount()I

    move-result v0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/WithParam;

    if-eqz v5, :cond_3

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/WithParam;

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/WithParam;->getName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    move v6, v2

    :goto_2
    if-ge v6, v1, :cond_3

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_parameters:[Ljava/lang/Object;

    aget-object v7, v7, v6

    instance-of v8, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    move-object v8, v7

    check-cast v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;

    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v8

    if-ne v8, v5, :cond_1

    invoke-virtual {v4, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/WithParam;->setDoParameterOptimization(Z)V

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_parameters:[Ljava/lang/Object;

    aput-object v4, v5, v6

    goto :goto_3

    :cond_1
    instance-of v8, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/WithParam;

    if-eqz v8, :cond_2

    check-cast v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/WithParam;

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/WithParam;->getName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v7

    if-ne v7, v5, :cond_2

    invoke-virtual {v4, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/WithParam;->setDoParameterOptimization(Z)V

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_parameters:[Ljava/lang/Object;

    aput-object v4, v5, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public display(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->indent(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "CallTemplate"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->displayContents(I)V

    return-void
.end method

.method public getCalleeTemplate()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->lookupTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->isSimpleNamedTemplate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public hasWithParams()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 3

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidQName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v2, "INVALID_QNAME_ERR"

    invoke-direct {v0, v2, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_0
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    goto :goto_0

    :cond_1
    const-string v1, "REQUIRED_ATTR_ERR"

    invoke-virtual {p0, p0, p1, v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->reportError(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->parseChildren(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    return-void
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 12

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->hasLocalParams()Z

    move-result v3

    const-string v4, "()V"

    const-string v5, "com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet"

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->hasContents()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->getCalleeTemplate()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_calleeTemplate:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->buildParameterList()V

    goto :goto_0

    :cond_1
    const-string v3, "pushParamFrame"

    invoke-virtual {v1, v5, v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v6, v3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v2, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->translateContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_calleeTemplate:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->getParameters()Ljava/util/Vector;

    iget-object v8, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_parameters:[Ljava/lang/Object;

    array-length v8, v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_4

    iget-object v10, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_parameters:[Ljava/lang/Object;

    aget-object v10, v10, v9

    check-cast v10, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    const-string v11, "Ljava/lang/Object;"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v11, v10, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;

    if-eqz v11, :cond_3

    sget-object v10, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ACONST_NULL:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v2, v10}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_2

    :cond_3
    invoke-virtual {v10, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    const-string p2, ")V"

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v6, v7}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p2, v3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v2, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_calleeTemplate:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    if-nez p2, :cond_6

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->hasLocalParams()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->hasContents()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const-string p0, "popParamFrame"

    invoke-virtual {v1, v5, p0, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_6
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->lookupTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->typeCheckContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0

    :cond_0
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v0, "TEMPLATE_UNDEF_ERR"

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-direct {p1, v0, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    throw p0
.end method
