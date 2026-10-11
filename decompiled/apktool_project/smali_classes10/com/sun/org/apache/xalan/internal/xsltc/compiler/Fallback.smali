.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Fallback;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;
.source "SourceFile"


# instance fields
.field private _active:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Fallback;->_active:Z

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Fallback;->_active:Z

    return-void
.end method

.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Fallback;->_active:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->parseChildren(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "fallback"

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Fallback;->_active:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->translateContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :cond_0
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Fallback;->_active:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->typeCheckContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
