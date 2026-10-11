.class public Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;
.implements Lcom/sun/org/apache/bcel/internal/generic/NamedAndTyped;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field private end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

.field private index:I

.field private name:Ljava/lang/String;

.field private start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

.field private type:Lcom/sun/org/apache/bcel/internal/generic/Type;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->index:I

    invoke-virtual {p0, p4}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->setStart(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {p0, p5}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->setEnd(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid index index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public containsTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    iget v0, p1, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->index:I

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->index:I

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->index:I

    return p0
.end method

.method public getLocalVariable(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;
    .locals 8

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPosition()I

    move-result v2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPosition()I

    move-result v0

    sub-int/2addr v0, v2

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    move v3, v0

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v5

    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    iget v6, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->index:I

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;-><init>(IIIIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method

.method public getType()Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-object p0
.end method

.method public setEnd(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-static {v0, p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->notifyTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->index:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->name:Ljava/lang/String;

    return-void
.end method

.method public setStart(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-static {v0, p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->notifyTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public setType(Lcom/sun/org/apache/bcel/internal/generic/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalVariableGen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->setStart(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->setEnd(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not targeting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but {"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
