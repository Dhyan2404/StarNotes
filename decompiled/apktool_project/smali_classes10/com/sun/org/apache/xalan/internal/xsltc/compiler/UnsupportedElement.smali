.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;
.source "SourceFile"


# instance fields
.field private _fallbacks:Ljava/util/Vector;

.field private _isExtension:Z

.field private _message:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;->_fallbacks:Ljava/util/Vector;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;->_message:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    iput-boolean p4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;->_isExtension:Z

    return-void
.end method

.method private processFallbacks(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 5

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getContents()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Fallback;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Fallback;

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Fallback;->activate()V

    invoke-virtual {v4, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Fallback;->parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;->_fallbacks:Ljava/util/Vector;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;->_fallbacks:Ljava/util/Vector;

    :cond_0
    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;->_fallbacks:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public display(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->indent(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported element = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_qname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_qname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->displayContents(I)V

    return-void
.end method

.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;->processFallbacks(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    return-void
.end method

.method public setErrorMessage(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;->_message:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    return-void
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;->_fallbacks:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;->_fallbacks:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Fallback;

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Fallback;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p2

    const-string v0, "unsupported_ElementF"

    const-string v1, "(Ljava/lang/String;Z)V"

    const-string v2, "com.sun.org.apache.xalan.internal.xsltc.runtime.BasisLibrary"

    invoke-virtual {p1, v2, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getQName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;->_isExtension:Z

    invoke-direct {v1, p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Z)V

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;-><init>(I)V

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_1
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;->_fallbacks:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;->_fallbacks:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Fallback;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Fallback;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
