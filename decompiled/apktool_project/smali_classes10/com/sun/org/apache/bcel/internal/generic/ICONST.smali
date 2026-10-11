.class public Lcom/sun/org/apache/bcel/internal/generic/ICONST;
.super Lcom/sun/org/apache/bcel/internal/generic/Instruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/ConstantPushInstruction;
.implements Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;


# instance fields
.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>(SS)V

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x3

    int-to-short v0, v0

    .line 3
    iput-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    .line 4
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ICONST;->value:I

    return-void

    .line 5
    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ICONST can be used only for value between -1 and 5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitICONST(Lcom/sun/org/apache/bcel/internal/generic/ICONST;)V

    return-void
.end method

.method public getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0
.end method

.method public getValue()Ljava/lang/Number;
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ICONST;->value:I

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method
