.class Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
.source "SourceFile"


# instance fields
.field protected _closure:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

.field protected _variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_closure:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    .line 7
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_closure:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    .line 4
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->addReference(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;)V

    return-void
.end method


# virtual methods
.method public addParentDependency()V
    .locals 3

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    iget-boolean v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_ignore:Z

    if-eqz v2, :cond_2

    instance-of v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object v1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->lookupVariable(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;

    move-result-object v1

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object v1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->lookupParam(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;->addDependency(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;)V

    :cond_3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public getVariable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "variable-ref("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v0

    :cond_1
    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_closure:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_closure:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    if-eqz v0, :cond_4

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;->addVariable(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;)V

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :cond_5
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->addParentDependency()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
