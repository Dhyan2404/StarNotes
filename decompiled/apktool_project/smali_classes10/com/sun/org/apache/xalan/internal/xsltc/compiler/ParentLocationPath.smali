.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;
.source "SourceFile"


# instance fields
.field private _axisMismatch:Z

.field private _orderNodes:Z

.field private final _path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

.field private _step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

.field private stype:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_orderNodes:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_axisMismatch:Z

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    instance-of p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->checkAxisMismatch()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_axisMismatch:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public checkAxisMismatch()Z
    .locals 11

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;->getAxis()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->getAxis()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/16 v5, 0xc

    const/16 v6, 0xa

    const/16 v7, 0xb

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    if-ne v0, v8, :cond_1

    :cond_0
    if-eq v1, v4, :cond_a

    if-eq v1, v3, :cond_a

    if-eq v1, v2, :cond_a

    if-eq v1, v6, :cond_a

    if-eq v1, v7, :cond_a

    if-ne v1, v5, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    if-eqz v1, :cond_a

    :cond_2
    if-eq v1, v8, :cond_a

    if-eq v1, v6, :cond_a

    if-ne v1, v7, :cond_3

    goto :goto_0

    :cond_3
    if-eq v0, v3, :cond_a

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v9, 0x7

    const/4 v10, 0x6

    if-eq v0, v10, :cond_5

    if-ne v0, v9, :cond_6

    :cond_5
    if-eq v1, v10, :cond_a

    if-eq v1, v6, :cond_a

    if-eq v1, v7, :cond_a

    if-ne v1, v5, :cond_6

    goto :goto_0

    :cond_6
    if-eq v0, v7, :cond_7

    if-ne v0, v5, :cond_8

    :cond_7
    if-eq v1, v3, :cond_a

    if-eq v1, v2, :cond_a

    if-eq v1, v10, :cond_a

    if-eq v1, v9, :cond_a

    if-eq v1, v6, :cond_a

    if-eq v1, v7, :cond_a

    if-ne v1, v5, :cond_8

    goto :goto_0

    :cond_8
    if-ne v1, v10, :cond_9

    if-ne v0, v4, :cond_9

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->getNodeType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    return v8

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_0
    return v8
.end method

.method public enableNodeOrdering()V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->enableNodeOrdering()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_orderNodes:Z

    :goto_0
    return-void
.end method

.method public getAxis()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;->getAxis()I

    move-result p0

    return p0
.end method

.method public getPath()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    return-object p0
.end method

.method public getStep()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    return-object p0
.end method

.method public setAxis(I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;->setAxis(I)V

    return-void
.end method

.method public setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParentLocationPath("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    const-string v2, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    const-string v5, "parent_location_path_tmp1"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v3, v4, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v3

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v4, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    const-string v4, "parent_location_path_tmp2"

    invoke-virtual {p2, v4, p1, v2, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object p1

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string v2, "<init>"

    const-string v4, "(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V"

    const-string v5, "com.sun.org.apache.xalan.internal.xsltc.dom.StepIterator"

    invoke-virtual {v0, v5, v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    invoke-virtual {v0, v5}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v3

    invoke-direct {v4, v3}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result p1

    invoke-direct {v3, p1}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    invoke-direct {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    instance-of v2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->getStep()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object p1

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    instance-of v3, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    const/4 v4, 0x3

    if-eqz v3, :cond_3

    instance-of v3, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->getAxis()I

    move-result v2

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->getAxis()I

    move-result p1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    if-eq p1, v4, :cond_2

    :cond_1
    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    const/16 v2, 0xa

    if-ne p1, v2, :cond_3

    :cond_2
    const-string p1, "includeSelf"

    const-string v2, "()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    const-string v3, "com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase"

    invoke-virtual {v0, v3, p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v2, p1}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_3
    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_orderNodes:Z

    if-eqz p0, :cond_4

    const-string p0, "orderNodes"

    const-string p1, "(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    const-string v2, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    invoke-virtual {v0, v2, p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SWAP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadContextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {p1, p0, v4}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_4
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_step:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->stype:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_path:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->_axisMismatch:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;->enableNodeOrdering()V

    :cond_0
    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1
.end method
