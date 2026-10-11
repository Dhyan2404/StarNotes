.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilteredAbsoluteLocationPath;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
.source "SourceFile"


# instance fields
.field private _path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilteredAbsoluteLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilteredAbsoluteLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPath()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilteredAbsoluteLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    return-object p0
.end method

.method public setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilteredAbsoluteLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilteredAbsoluteLocationPath("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilteredAbsoluteLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 8

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilteredAbsoluteLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-eqz v2, :cond_0

    const-string v2, "<init>"

    const-string v3, "(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V"

    const-string v4, "com.sun.org.apache.xalan.internal.xsltc.dom.DupFilterIterator"

    invoke-virtual {v0, v4, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "filtered_absolute_location_path_tmp"

    invoke-virtual {p2, v7, v3, v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v3

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilteredAbsoluteLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_0
    const-string p0, "getIterator"

    const-string p1, "()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    const-string v2, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    invoke-virtual {v0, v2, p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilteredAbsoluteLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p1

    instance-of p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilteredAbsoluteLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilteredAbsoluteLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_0
    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1
.end method
