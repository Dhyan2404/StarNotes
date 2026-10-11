.class public Lcom/sun/org/apache/bcel/internal/generic/LCONST;
.super Lcom/sun/org/apache/bcel/internal/generic/Instruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/ConstantPushInstruction;
.implements Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;


# instance fields
.field private value:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x9

    .line 2
    invoke-direct {p0, v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>(SS)V

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 3
    iput-short v1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const/16 v0, 0xa

    .line 4
    iput-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    .line 5
    :goto_0
    iput-wide p1, p0, Lcom/sun/org/apache/bcel/internal/generic/LCONST;->value:J

    return-void

    .line 6
    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCONST can be used only for 0 and 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitPushInstruction(Lcom/sun/org/apache/bcel/internal/generic/PushInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackProducer(Lcom/sun/org/apache/bcel/internal/generic/StackProducer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitTypedInstruction(Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitConstantPushInstruction(Lcom/sun/org/apache/bcel/internal/generic/ConstantPushInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitLCONST(Lcom/sun/org/apache/bcel/internal/generic/LCONST;)V

    return-void
.end method

.method public getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0
.end method

.method public getValue()Ljava/lang/Number;
    .locals 3

    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lcom/sun/org/apache/bcel/internal/generic/LCONST;->value:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method
