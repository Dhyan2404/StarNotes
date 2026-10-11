.class public Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private maxStack:I

.field private stack:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    .line 3
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->maxStack:I

    return-void
.end method

.method public constructor <init>(ILcom/sun/org/apache/bcel/internal/generic/ObjectType;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    .line 6
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->maxStack:I

    .line 7
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->maxStack:I

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;-><init>(I)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    iput-object p0, v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getClone()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    return-object p0
.end method

.method public initializeObject(Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;->getInitialized()Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public maxStack()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->maxStack:I

    return p0
.end method

.method public merge(Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v1

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->size()I

    move-result v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    const-string v2, "Backwards branch with an uninitialized object on the stack detected."

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;->getInitialized()Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    iget-object v3, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;->getFirstCommonSuperclass(Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot merge stacks of different types:\nStack A:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\nStack B:\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void

    :cond_8
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot merge stacks of different size:\nOperandStack A:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\nOperandStack B:\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    return-object p0
.end method

.method public peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->size()I

    move-result p0

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-object p0
.end method

.method public pop()Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-object p0
.end method

.method public pop(I)Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V
    .locals 2

    if-eqz p1, :cond_2

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v0

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->maxStack:I

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperandStack too small, should have thrown proper Exception elsewhere. Stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The OperandStack does not know about \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'; use Type.INT instead."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "Cannot push NULL onto OperandStack."

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public slotsUsed()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slots used: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " MaxStack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->maxStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (Size: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
