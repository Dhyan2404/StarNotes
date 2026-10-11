.class public final Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;
.super Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;
    }
.end annotation


# instance fields
.field code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

.field instructionList:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

.field private method_no:I

.field private myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/verifier/Verifier;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    iput p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->method_no:I

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;)I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->method_no:I

    return p0
.end method

.method private static contains([II)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private delayedPass2Checks()V
    .locals 14

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->instructionList:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getInstructionPositions()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getCode()[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getLineNumberTable()Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;

    move-result-object v2

    const-string v3, "\' referring to a code offset (\'"

    const-string v4, "\') that does not exist."

    const/4 v5, 0x0

    const-string v6, "Code attribute \'"

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->getLineNumberTable()[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    move-result-object v2

    new-instance v7, Lcom/sun/org/apache/bcel/internal/verifier/statics/IntList;

    invoke-direct {v7}, Lcom/sun/org/apache/bcel/internal/verifier/statics/IntList;-><init>()V

    move v8, v5

    :goto_0
    array-length v9, v2

    if-ge v8, v9, :cond_3

    move v9, v5

    :goto_1
    array-length v10, v0

    if-ge v9, v10, :cond_2

    aget-object v10, v2, v8

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->getStartPC()I

    move-result v10

    aget v11, v0, v9

    if-ne v11, v10, :cond_1

    invoke-virtual {v7, v10}, Lcom/sun/org/apache/bcel/internal/verifier/statics/IntList;->contains(I)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LineNumberTable attribute \'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getLineNumberTable()Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "\' refers to the same code offset (\'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "\') more than once which is violating the semantics [but is sometimes produced by IBM\'s \'jikes\' compiler]."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v7, v10}, Lcom/sun/org/apache/bcel/internal/verifier/statics/IntList;->add(I)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\' has a LineNumberTable attribute \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getLineNumberTable()Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v2, v8

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->getStartPC()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v2

    move v7, v5

    :goto_3
    array-length v8, v2

    if-ge v7, v8, :cond_8

    aget-object v8, v2, v7

    instance-of v9, v8, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    if-eqz v9, :cond_7

    check-cast v8, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->getLocalVariableTable()[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    move-result-object v8

    move v9, v5

    :goto_4
    array-length v10, v8

    if-ge v9, v10, :cond_7

    aget-object v10, v8, v9

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getStartPC()I

    move-result v10

    aget-object v11, v8, v9

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getLength()I

    move-result v11

    invoke-static {v0, v10}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->contains([II)Z

    move-result v12

    const-string v13, "\' has a LocalVariableTable attribute \'"

    if-eqz v12, :cond_6

    add-int/2addr v10, v11

    invoke-static {v0, v10}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->contains([II)Z

    move-result v11

    if-nez v11, :cond_5

    if-ne v10, v1, :cond_4

    goto :goto_5

    :cond_4
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getLocalVariableTable()Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' referring to a code offset start_pc+length (\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getLocalVariableTable()Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_8
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getExceptionTable()[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    move-result-object v2

    :goto_6
    array-length v3, v2

    if-ge v5, v3, :cond_e

    aget-object v3, v2, v5

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getStartPC()I

    move-result v3

    aget-object v4, v2, v5

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getEndPC()I

    move-result v4

    aget-object v7, v2, v5

    invoke-virtual {v7}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getHandlerPC()I

    move-result v7

    const-string v8, "\')."

    const-string v9, "\' has an exception_table entry \'"

    if-ge v3, v4, :cond_d

    invoke-static {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->contains([II)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {v0, v4}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->contains([II)Z

    move-result v10

    if-nez v10, :cond_a

    if-ne v4, v1, :cond_9

    goto :goto_7

    :cond_9
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v2, v5

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' that has a non-existant bytecode offset as its end_pc (\'"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\') [that is also not equal to code_length (\'"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\')]."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_7
    invoke-static {v0, v7}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v2, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' that has a non-existant bytecode offset as its handler_pc (\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v2, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' that has a non-existant bytecode offset as its start_pc (\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v2, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' that has its start_pc (\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\') not smaller than its end_pc (\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method private pass3StaticInstructionChecks()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getCode()[B

    move-result-object v0

    array-length v0, v0

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->instructionList:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/generic/IMPDEP1;

    if-nez v2, :cond_2

    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/generic/IMPDEP2;

    if-nez v2, :cond_1

    instance-of v1, v1, Lcom/sun/org/apache/bcel/internal/generic/BREAKPOINT;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeInstructionConstraintException;

    const-string v0, "BREAKPOINT must not be in the code, it is an illegal instruction for _internal_ JVM use!"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeInstructionConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeInstructionConstraintException;

    const-string v0, "IMPDEP2 must not be in the code, it is an illegal instruction for _internal_ JVM use!"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeInstructionConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeInstructionConstraintException;

    const-string v0, "IMPDEP1 must not be in the code, it is an illegal instruction for _internal_ JVM use!"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeInstructionConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->instructionList:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    instance-of v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    if-nez v0, :cond_5

    instance-of v0, p0, Lcom/sun/org/apache/bcel/internal/generic/RET;

    if-nez v0, :cond_5

    instance-of v0, p0, Lcom/sun/org/apache/bcel/internal/generic/GotoInstruction;

    if-nez v0, :cond_5

    instance-of p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ATHROW;

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeInstructionConstraintException;

    const-string v0, "Execution must not fall off the bottom of the code array. This constraint is enforced statically as some existing verifiers do - so it may be a false alarm if the last instruction is not reachable."

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeInstructionConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    return-void

    :cond_6
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeInstructionConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code array in code attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' too big: must be smaller than 65536 bytes."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeInstructionConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private pass3StaticInstructionOperandsChecks()V
    .locals 4

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;-><init>(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->instructionList:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    instance-of v3, v2, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->instructionList:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    if-eq v2, v3, :cond_1

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    instance-of v3, v3, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeInstructionOperandConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Due to JustIce\'s clear definition of subroutines, no JSR or JSR_W may target anything else than an ASTORE instruction. Instruction \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' targets \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeInstructionOperandConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeInstructionOperandConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Due to JustIce\'s clear definition of subroutines, no JSR or JSR_W may have a top-level instruction (such as the very first instruction, which is targeted by instruction \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' as its target."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeInstructionOperandConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public do_verify()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass2()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->method_no:I

    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Method;->getCode()Lcom/sun/org/apache/bcel/internal/classfile/Code;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->code:Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isAbstract()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isNative()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    :try_start_0
    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Method;->getCode()Lcom/sun/org/apache/bcel/internal/classfile/Code;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getCode()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>([B)V

    iput-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->instructionList:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->setPositions(Z)V

    :try_start_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->delayedPass2Checks()V
    :try_end_1
    .catch Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->pass3StaticInstructionChecks()V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->pass3StaticInstructionOperandsChecks()V
    :try_end_2
    .catch Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeConstraintException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v1

    :catch_1
    move-exception p0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    return-object v0

    :catch_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad bytecode in the code array of the Code attribute of method \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/InvalidMethodException;

    const-string v0, "METHOD DOES NOT EXIST!"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/InvalidMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sget-object p0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_NOTYET:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    return-object p0
.end method

.method public getMethodNo()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->method_no:I

    return p0
.end method
