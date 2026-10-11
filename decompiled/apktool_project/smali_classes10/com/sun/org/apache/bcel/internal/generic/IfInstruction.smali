.class public abstract Lcom/sun/org/apache/bcel/internal/generic/IfInstruction;
.super Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/StackConsumer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;-><init>()V

    return-void
.end method

.method public constructor <init>(SLcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;-><init>(SLcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void
.end method


# virtual methods
.method public abstract negate()Lcom/sun/org/apache/bcel/internal/generic/IfInstruction;
.end method
