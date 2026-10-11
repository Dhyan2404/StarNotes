.class public Lnet/sf/saxon/expr/LocalVariableReference;
.super Lnet/sf/saxon/expr/VariableReference;
.source "SourceFile"


# instance fields
.field public s:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/LocalBinding;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/VariableReference;-><init>(Lnet/sf/saxon/expr/Binding;)V

    const/16 p1, -0x3e7

    .line 4
    iput p1, p0, Lnet/sf/saxon/expr/LocalVariableReference;->s:I

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/VariableReference;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    const/16 p1, -0x3e7

    .line 2
    iput p1, p0, Lnet/sf/saxon/expr/LocalVariableReference;->s:I

    return-void
.end method


# virtual methods
.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    if-eqz v0, :cond_1

    new-instance v0, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getVariableName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/VariableReference;->copyFrom(Lnet/sf/saxon/expr/VariableReference;)V

    iget v1, p0, Lnet/sf/saxon/expr/LocalVariableReference;->s:I

    iput v1, v0, Lnet/sf/saxon/expr/LocalVariableReference;->s:I

    iget-object v1, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/parser/RebindingMap;->get(Lnet/sf/saxon/expr/Binding;)Lnet/sf/saxon/expr/Binding;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, v0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    :cond_0
    iget-object p1, v0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->isInLoop()Z

    move-result p0

    invoke-interface {p1, v0, p0}, Lnet/sf/saxon/expr/Binding;->addReference(Lnet/sf/saxon/expr/VariableReference;Z)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot copy a variable reference whose binding is unknown"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getStackFrame()Lnet/sf/saxon/expr/StackFrame;

    move-result-object v0

    iget-object v0, v0, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    iget v1, p0, Lnet/sf/saxon/expr/LocalVariableReference;->s:I

    aget-object p0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget v0, p0, Lnet/sf/saxon/expr/LocalVariableReference;->s:I

    const/16 v1, -0x3e7

    const-string v2, "Local variable $"

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/LocalVariableReference;->getBinding()Lnet/sf/saxon/expr/LocalBinding;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/expr/LocalBinding;->getLocalSlotNumber()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/expr/LocalVariableReference;->s:I

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getStackFrame()Lnet/sf/saxon/expr/StackFrame;

    move-result-object p1

    iget-object p1, p1, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    iget v0, p0, Lnet/sf/saxon/expr/LocalVariableReference;->s:I

    aget-object p0, p1, v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has not been allocated a stack frame slot"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getStackFrame()Lnet/sf/saxon/expr/StackFrame;

    move-result-object v0

    iget-object v0, v0, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    array-length v0, v0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uses slot "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/expr/LocalVariableReference;->s:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    const-string p0, "no"

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "only "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getStackFrame()Lnet/sf/saxon/expr/StackFrame;

    move-result-object p1

    iget-object p1, p1, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " slots are allocated on the stack frame"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic getBinding()Lnet/sf/saxon/expr/Binding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/LocalVariableReference;->getBinding()Lnet/sf/saxon/expr/LocalBinding;

    move-result-object p0

    return-object p0
.end method

.method public getBinding()Lnet/sf/saxon/expr/LocalBinding;
    .locals 0

    .line 2
    invoke-super {p0}, Lnet/sf/saxon/expr/VariableReference;->getBinding()Lnet/sf/saxon/expr/Binding;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/LocalBinding;

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "locVarRef"

    return-object p0
.end method

.method public getSlotNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/LocalVariableReference;->s:I

    return p0
.end method

.method public setBinding(Lnet/sf/saxon/expr/LocalBinding;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/VariableReference;->binding:Lnet/sf/saxon/expr/Binding;

    return-void
.end method

.method public setSlotNumber(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/LocalVariableReference;->s:I

    return-void
.end method
