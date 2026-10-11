.class public Lcom/sun/org/apache/bcel/internal/generic/InstructionList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private byte_positions:[I

.field private end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

.field private length:I

.field private observers:Ljava/util/ArrayList;

.field private start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    .line 11
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    .line 15
    invoke-interface {p1}, Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    .line 7
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 9

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    .line 19
    new-instance v1, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;

    invoke-direct {v1, p1}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;-><init>([B)V

    .line 20
    array-length v2, p1

    new-array v2, v2, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 21
    array-length p1, p1

    new-array p1, p1, [I

    move v3, v0

    .line 22
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    if-lez v4, :cond_1

    .line 23
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->getIndex()I

    move-result v4

    .line 24
    aput v4, p1, v3

    .line 25
    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->readInstruction(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;)Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    .line 26
    instance-of v6, v5, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    if-eqz v6, :cond_0

    .line 27
    check-cast v5, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v5

    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p0, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v5

    .line 29
    :goto_1
    invoke-virtual {v5, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->setPosition(I)V

    .line 30
    aput-object v5, v2, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    :cond_1
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->byte_positions:[I

    .line 32
    invoke-static {p1, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p0, v0

    :goto_2
    if-ge p0, v3, :cond_5

    .line 33
    aget-object v1, v2, p0

    instance-of v4, v1, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    if-eqz v4, :cond_4

    .line 34
    iget-object v1, v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    .line 35
    iget v4, v1, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->position:I

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getIndex()I

    move-result v5

    add-int/2addr v4, v5

    .line 36
    invoke-static {v2, p1, v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->findHandle([Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;[III)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 37
    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    .line 38
    instance-of v4, v1, Lcom/sun/org/apache/bcel/internal/generic/Select;

    if-eqz v4, :cond_4

    .line 39
    move-object v4, v1

    check-cast v4, Lcom/sun/org/apache/bcel/internal/generic/Select;

    .line 40
    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/Select;->getIndices()[I

    move-result-object v5

    move v6, v0

    .line 41
    :goto_3
    array-length v7, v5

    if-ge v6, v7, :cond_4

    .line 42
    iget v7, v1, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->position:I

    aget v8, v5, v6

    add-int/2addr v7, v8

    .line 43
    invoke-static {v2, p1, v3, v7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->findHandle([Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;[III)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 44
    invoke-virtual {v4, v6, v7}, Lcom/sun/org/apache/bcel/internal/generic/Select;->setTarget(ILcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 45
    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t find target for switch: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_3
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t find target for branch: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_5
    return-void

    :catch_0
    move-exception p0

    .line 47
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method

.method private append(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 24
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 25
    iput-object v1, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v1, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object p1, v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 27
    iput-object v0, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 28
    iput-object v1, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 29
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 30
    :goto_0
    iget p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    return-void
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    return-void
.end method

.method public static findHandle([Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;[III)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 3

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    :cond_0
    add-int v1, v0, p2

    .line 1
    div-int/lit8 v1, v1, 0x2

    .line 2
    aget v2, p1, v1

    if-ne v2, p3, :cond_1

    .line 3
    aget-object p0, p0, v1

    return-object p0

    :cond_1
    if-ge p3, v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    move p2, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_0
    if-le v0, p2, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method private findInstruction1(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private findInstruction2(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 2

    .line 15
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 16
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 17
    iput-object v1, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v1, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object p1, v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 19
    iput-object v0, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 20
    iput-object v1, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 21
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 22
    :goto_0
    iget p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    return-void
.end method

.method private remove(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/bcel/internal/generic/TargetLostException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-object p2, p1

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object p2, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-object p1, v1

    goto :goto_1

    :cond_2
    iget-object v2, p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object p1, p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-object p1, v1

    move-object p2, v2

    :goto_1
    iput-object v0, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v0, p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->dispose()V

    iget-object v1, v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "{ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_3
    if-eqz p1, :cond_5

    iget-object v2, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget v3, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->hasTargeters()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iput-object v0, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v0, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->dispose()V

    :goto_4
    move-object p1, v2

    goto :goto_3

    :cond_5
    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/TargetLostException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/TargetLostException;-><init>([Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addObserver(Lcom/sun/org/apache/bcel/internal/generic/InstructionListObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->observers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->observers:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->observers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;
    .locals 0

    .line 33
    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->getBranchHandle(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p1
.end method

.method public append(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;
    .locals 1

    .line 40
    invoke-static {p2}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->getBranchHandle(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p2

    .line 41
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    .line 42
    invoke-direct {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p2
.end method

.method public append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    .line 37
    invoke-interface {p1}, Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0
.end method

.method public append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    .line 31
    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstructionHandle(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p1
.end method

.method public append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    .line 36
    invoke-interface {p2}, Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0
.end method

.method public append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 1

    .line 35
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0
.end method

.method public append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->findInstruction2(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0

    .line 13
    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Instruction "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not contained in this list."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public append(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    .line 38
    invoke-interface {p2}, Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0
.end method

.method public append(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 1

    .line 39
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0
.end method

.method public append(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 2

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v1, p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 3
    iput-object v1, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 4
    iput-object p1, v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 5
    iget-object p1, p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v0, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-eqz v0, :cond_1

    .line 6
    iput-object p1, v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    .line 7
    :cond_1
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 8
    :goto_0
    iget p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    iget v0, p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    .line 9
    invoke-direct {p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->clear()V

    return-object v1

    .line 10
    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    const-string p1, "Appending null InstructionList"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 17
    iget-object v0, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 18
    iget v0, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    .line 19
    invoke-direct {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->clear()V

    .line 20
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0

    .line 22
    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    const-string p1, "Appending null InstructionList"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public contains(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->findInstruction1(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public contains(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    if-eqz p0, :cond_2

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_2
    return v0
.end method

.method public copy()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->copy()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    instance-of v4, v3, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v2, v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v2, v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_2
    if-eqz p0, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    iget-object v4, v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    instance-of v5, v3, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    if-eqz v5, :cond_2

    check-cast v3, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    check-cast v4, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    instance-of v5, v3, Lcom/sun/org/apache/bcel/internal/generic/Select;

    if-eqz v5, :cond_2

    check-cast v3, Lcom/sun/org/apache/bcel/internal/generic/Select;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/Select;->getTargets()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    check-cast v4, Lcom/sun/org/apache/bcel/internal/generic/Select;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/Select;->getTargets()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    const/4 v5, 0x0

    :goto_3
    array-length v6, v3

    if-ge v5, v6, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v2, v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method public delete(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/bcel/internal/generic/TargetLostException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->findInstruction1(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->delete(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instruction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not contained in this list."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public delete(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/bcel/internal/generic/TargetLostException;
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->findInstruction1(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    const-string v1, " is not contained in this list."

    const-string v2, "Instruction "

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->findInstruction2(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->delete(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void

    .line 9
    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public delete(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/bcel/internal/generic/TargetLostException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->remove(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void
.end method

.method public delete(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/bcel/internal/generic/TargetLostException;
        }
    .end annotation

    .line 5
    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object p2, p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->remove(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->dispose()V

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->clear()V

    return-void
.end method

.method public findHandle(I)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getInstructionHandles()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->byte_positions:[I

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    invoke-static {v0, v1, p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->findHandle([Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;[III)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0
.end method

.method public getByteCode()[B
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->setPositions()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->dump(Ljava/io/DataOutputStream;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method

.method public getInstructionHandles()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    if-ge v2, v3, :cond_0

    aput-object v1, v0, v2

    iget-object v1, v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getInstructionPositions()[I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->byte_positions:[I

    return-object p0
.end method

.method public getInstructions()[Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getByteCode()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;-><init>([B)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->readInstruction(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;)Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    return p0
.end method

.method public getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method

.method public insert(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;
    .locals 0

    .line 28
    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->getBranchHandle(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p1
.end method

.method public insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;
    .locals 1

    .line 35
    invoke-static {p2}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->getBranchHandle(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p2

    .line 36
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    .line 37
    invoke-direct {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p2
.end method

.method public insert(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    .line 32
    invoke-interface {p1}, Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0
.end method

.method public insert(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstructionHandle(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p1
.end method

.method public insert(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    .line 31
    invoke-interface {p2}, Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->insert(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0
.end method

.method public insert(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 1

    .line 30
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->insert(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0
.end method

.method public insert(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->findInstruction1(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0

    .line 25
    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Instruction "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not contained in this list."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    .line 34
    invoke-interface {p2}, Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0
.end method

.method public insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 1

    .line 33
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0
.end method

.method public insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 3

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v1, p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 3
    iget-object v2, p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v2, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 4
    iput-object p1, v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 5
    iput-object v0, v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-eqz v0, :cond_1

    .line 6
    iput-object v1, v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    .line 7
    :cond_1
    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 8
    :goto_0
    iget p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    iget v0, p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    .line 9
    invoke-direct {p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->clear()V

    return-object v1

    .line 10
    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    const-string p1, "Inserting null InstructionList"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 13
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList$1;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList$1;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    return-object v0
.end method

.method public move(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->move(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void
.end method

.method public move(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 5

    const-string v0, " to "

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    const-string v1, " contains target "

    const-string v2, "Invalid range: From "

    if-eq p3, p1, :cond_7

    if-eq p3, p2, :cond_7

    move-object v3, p1

    .line 1
    :goto_0
    iget-object v4, p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_1

    if-eq v3, p3, :cond_0

    iget-object v3, v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    iget-object v0, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-eqz v0, :cond_3

    .line 5
    iput-object v4, v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_1

    .line 6
    :cond_3
    iput-object v4, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_1
    if-eqz v4, :cond_4

    .line 7
    iput-object v0, v4, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_2

    .line 8
    :cond_4
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->end:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_2
    const/4 v0, 0x0

    .line 9
    iput-object v0, p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v0, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-nez p3, :cond_5

    .line 10
    iget-object p3, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object p3, p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 11
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_3

    .line 12
    :cond_5
    iget-object p0, p3, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 13
    iput-object p1, p3, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 14
    iput-object p3, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 15
    iput-object p0, p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-eqz p0, :cond_6

    .line 16
    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->prev:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_6
    :goto_3
    return-void

    .line 17
    :cond_7
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_8
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid null handle: From "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public redirectBranches(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 4

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :cond_0
    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/Select;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/Select;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Select;->getTargets()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    if-ne v3, p1, :cond_1

    invoke-virtual {v0, v2, p2}, Lcom/sun/org/apache/bcel/internal/generic/Select;->setTarget(ILcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public redirectExceptionHandlers([Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_3

    aget-object v0, p1, p0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getStartPC()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    if-ne v0, p2, :cond_0

    aget-object v0, p1, p0

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->setStartPC(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :cond_0
    aget-object v0, p1, p0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getEndPC()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    if-ne v0, p2, :cond_1

    aget-object v0, p1, p0

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->setEndPC(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :cond_1
    aget-object v0, p1, p0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getHandlerPC()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    if-ne v0, p2, :cond_2

    aget-object v0, p1, p0

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->setHandlerPC(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public redirectLocalVariables([Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 2

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_2

    aget-object v0, p1, p0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    aget-object v1, p1, p0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    if-ne v0, p2, :cond_0

    aget-object v0, p1, p0

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->setStart(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :cond_0
    if-ne v1, p2, :cond_1

    aget-object v0, p1, p0

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->setEnd(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeObserver(Lcom/sun/org/apache/bcel/internal/generic/InstructionListObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->observers:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public replaceConstantPool(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addConstant(Lcom/sun/org/apache/bcel/internal/classfile/Constant;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->setIndex(I)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPositions()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->setPositions(Z)V

    return-void
.end method

.method public setPositions(Z)V
    .locals 10

    .line 2
    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 3
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    if-eqz p1, :cond_5

    .line 4
    iget-object v2, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    .line 5
    instance-of v3, v2, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    if-eqz v3, :cond_4

    .line 6
    move-object v3, v2

    check-cast v3, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    iget-object v3, v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    .line 7
    invoke-virtual {p0, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->contains(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Z

    move-result v4

    const-string v5, " not in instruction list"

    const-string v6, "Branch target of "

    const-string v7, ":"

    if-eqz v4, :cond_3

    .line 8
    instance-of v4, v2, Lcom/sun/org/apache/bcel/internal/generic/Select;

    if-eqz v4, :cond_1

    .line 9
    move-object v4, v2

    check-cast v4, Lcom/sun/org/apache/bcel/internal/generic/Select;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/Select;->getTargets()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    move v8, v1

    .line 10
    :goto_1
    array-length v9, v4

    if-ge v8, v9, :cond_1

    .line 11
    aget-object v3, v4, v8

    iget-object v3, v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    .line 12
    invoke-virtual {p0, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->contains(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 13
    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sun/org/apache/bcel/internal/Constants;->OPCODE_NAMES:[Ljava/lang/String;

    iget-short v1, v2, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_1
    instance-of v4, p1, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    if-eqz v4, :cond_2

    goto :goto_2

    .line 15
    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Branch instruction "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sun/org/apache/bcel/internal/Constants;->OPCODE_NAMES:[Ljava/lang/String;

    iget-short v1, v2, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not contained in BranchHandle."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_3
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sun/org/apache/bcel/internal/Constants;->OPCODE_NAMES:[Ljava/lang/String;

    iget-short v1, v2, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_4
    :goto_2
    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto/16 :goto_0

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_3
    if-eqz p1, :cond_6

    .line 19
    iget-object v5, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    .line 20
    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->setPosition(I)V

    add-int/lit8 v6, v3, 0x1

    .line 21
    aput v2, v0, v3

    .line 22
    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getOpcode()S

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_4

    :pswitch_1
    add-int/lit8 v4, v4, 0x3

    goto :goto_4

    :pswitch_2
    add-int/lit8 v4, v4, 0x2

    .line 23
    :goto_4
    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getLength()I

    move-result v3

    add-int/2addr v2, v3

    .line 24
    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move v3, v6

    goto :goto_3

    .line 25
    :cond_6
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move v2, v1

    :goto_5
    if-eqz p1, :cond_7

    .line 26
    invoke-virtual {p1, v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->updatePosition(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 27
    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_5

    .line 28
    :cond_7
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move v2, v1

    move v3, v2

    :goto_6
    if-eqz p1, :cond_8

    .line 29
    iget-object v4, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    .line 30
    invoke-virtual {p1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->setPosition(I)V

    add-int/lit8 v5, v2, 0x1

    .line 31
    aput v3, v0, v2

    .line 32
    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getLength()I

    move-result v2

    add-int/2addr v3, v2

    .line 33
    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move v2, v5

    goto :goto_6

    .line 34
    :cond_8
    new-array p1, v2, [I

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->byte_positions:[I

    .line 35
    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :pswitch_data_0
    .packed-switch 0xa7
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->length:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    if-eqz p0, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->observers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionListObserver;

    invoke-interface {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionListObserver;->notify(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    goto :goto_0

    :cond_0
    return-void
.end method
