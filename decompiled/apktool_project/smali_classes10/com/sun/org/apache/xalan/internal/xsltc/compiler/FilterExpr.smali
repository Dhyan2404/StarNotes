.class Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
.source "SourceFile"


# instance fields
.field private final _predicates:Ljava/util/Vector;

.field private _primary:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_primary:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_predicates:Ljava/util/Vector;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    return-void
.end method


# virtual methods
.method public getExpr()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_primary:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->getExpr()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_primary:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_predicates:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_predicates:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    invoke-virtual {v2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filter-expr("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_primary:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_predicates:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_predicates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->translatePredicates(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_primary:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :goto_0
    return-void
.end method

.method public translatePredicates(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 8

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_predicates:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto/16 :goto_0

    :cond_0
    const-string v2, "<init>"

    const-string v3, "(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ZLcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListFilter;ILcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;)V"

    const-string v4, "com.sun.org.apache.xalan.internal.xsltc.dom.CurrentNodeListIterator"

    invoke-virtual {v0, v4, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_predicates:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_predicates:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->translatePredicates(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    const-string p0, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v5

    const-string v6, "filter_expr_tmp1"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, p0, v5, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object p0

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v3, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    const-string v3, "Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListFilter;"

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v5

    const-string v6, "filter_expr_tmp2"

    invoke-virtual {p2, v6, v3, v5, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v3

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v5, v0}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ICONST_1:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_primary:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeSetType;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ReferenceType;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_primary:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_primary:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_predicates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;->_predicates:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->dontOptimize()V

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1
.end method
