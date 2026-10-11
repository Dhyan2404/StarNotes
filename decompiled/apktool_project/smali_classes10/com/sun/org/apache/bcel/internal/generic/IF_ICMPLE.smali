.class public Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPLE;
.super Lcom/sun/org/apache/bcel/internal/generic/IfInstruction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/IfInstruction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    const/16 v0, 0xa4

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/IfInstruction;-><init>(SLcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackConsumer(Lcom/sun/org/apache/bcel/internal/generic/StackConsumer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitBranchInstruction(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitIfInstruction(Lcom/sun/org/apache/bcel/internal/generic/IfInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitIF_ICMPLE(Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPLE;)V

    return-void
.end method

.method public negate()Lcom/sun/org/apache/bcel/internal/generic/IfInstruction;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPGT;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPGT;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object v0
.end method
