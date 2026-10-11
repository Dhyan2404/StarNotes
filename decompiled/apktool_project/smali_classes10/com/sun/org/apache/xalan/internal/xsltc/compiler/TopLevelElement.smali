.class Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;
.source "SourceFile"


# instance fields
.field protected _dependencies:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;->_dependencies:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addDependency(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;->_dependencies:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;->_dependencies:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;->_dependencies:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;->_dependencies:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;
    .locals 2

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setInstructionList(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setInstructionList(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    return-object v1
.end method

.method public display(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->indent(I)V

    const-string v0, "TopLevelElement"

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->displayContents(I)V

    return-void
.end method

.method public getDependencies()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;->_dependencies:Ljava/util/Vector;

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 1

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "NOT_IMPLEMENTED_ERR"

    invoke-direct {p1, v0, p2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p0

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->typeCheckContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p0

    return-object p0
.end method
