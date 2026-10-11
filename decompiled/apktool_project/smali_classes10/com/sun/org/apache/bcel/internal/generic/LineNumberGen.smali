.class public Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field private ih:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

.field private src_line:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;->setInstruction(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;->setSourceLine(I)V

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
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;->ih:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;->ih:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method

.method public getLineNumber()Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;->ih:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPosition()I

    move-result v1

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;->src_line:I

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;-><init>(II)V

    return-object v0
.end method

.method public getSourceLine()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;->src_line:I

    return p0
.end method

.method public setInstruction(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;->ih:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-static {v0, p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->notifyTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;->ih:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public setSourceLine(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;->src_line:I

    return-void
.end method

.method public updateTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;->ih:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;->setInstruction(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void

    :cond_0
    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not targeting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;->ih:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
