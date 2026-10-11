.class public Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static ih_list:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;


# instance fields
.field private attributes:Ljava/util/HashMap;

.field protected i_position:I

.field instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

.field prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

.field private targeters:Ljava/util/HashSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->i_position:I

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->setInstruction(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V

    return-void
.end method

.method public static final getInstructionHandle(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 2

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->ih_list:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;-><init>(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V

    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sput-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->ih_list:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->setInstruction(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V

    return-void
.end method

.method public addAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->attributes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->attributes:Ljava/util/HashMap;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->attributes:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addHandle()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->ih_list:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sput-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->ih_list:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public addTargeter(Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->targeters:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->targeters:Ljava/util/HashSet;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->targeters:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispose()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->dispose()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->i_position:I

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->attributes:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->removeAllTargeters()V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->addHandle()V

    return-void
.end method

.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->attributes:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributes()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->attributes:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public final getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->i_position:I

    return p0
.end method

.method public final getPrev()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method

.method public getTargeters()[Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->hasTargeters()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->targeters:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->targeters:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public hasTargeters()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->targeters:Ljava/util/HashSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeAllTargeters()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->targeters:Ljava/util/HashSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    :cond_0
    return-void
.end method

.method public removeAttribute(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->attributes:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeTargeter(Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->targeters:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInstruction(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V
    .locals 2

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    if-eq v0, v1, :cond_1

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Assigning branch instruction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to plain handle"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->dispose()V

    :cond_2
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-void

    :cond_3
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    const-string p1, "Assigning null to handle"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->i_position:I

    return-void
.end method

.method public swapInstruction(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->i_position:I

    const/4 v2, 0x0

    const/16 v3, 0x20

    const/4 v4, 0x4

    invoke-static {v1, v4, v2, v3}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->format(IIZC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updatePosition(II)I
    .locals 0

    iget p2, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->i_position:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->i_position:I

    const/4 p0, 0x0

    return p0
.end method
