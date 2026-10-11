.class public final Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field private catch_type:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

.field private end_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

.field private handler_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

.field private start_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->setStartPC(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->setEndPC(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->setHandlerPC(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    iput-object p4, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->catch_type:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    return-void
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

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->start_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->end_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->handler_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

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

.method public getCatchType()Lcom/sun/org/apache/bcel/internal/generic/ObjectType;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->catch_type:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    return-object p0
.end method

.method public getCodeException(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/classfile/CodeException;
    .locals 4

    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->start_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->end_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->end_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getLength()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->handler_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPosition()I

    move-result v3

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->catch_type:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)I

    move-result p0

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;-><init>(IIII)V

    return-object v0
.end method

.method public getEndPC()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->end_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method

.method public getHandlerPC()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->handler_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method

.method public getStartPC()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->start_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method

.method public setCatchType(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->catch_type:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    return-void
.end method

.method public setEndPC(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->end_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-static {v0, p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->notifyTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->end_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public setHandlerPC(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->handler_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-static {v0, p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->notifyTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->handler_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public setStartPC(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->start_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-static {v0, p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->notifyTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->start_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CodeExceptionGen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->start_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->end_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->handler_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->start_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->setStartPC(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->end_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->setEndPC(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->handler_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-ne v2, p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->setHandlerPC(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    return-void

    :cond_3
    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not targeting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but {"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->start_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->end_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->handler_pc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
