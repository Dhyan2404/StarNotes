.class public abstract Lcom/sun/org/apache/bcel/internal/generic/LoadInstruction;
.super Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/PushInstruction;


# direct methods
.method public constructor <init>(SS)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;-><init>(SS)V

    return-void
.end method

.method public constructor <init>(SSI)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;-><init>(SSI)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackProducer(Lcom/sun/org/apache/bcel/internal/generic/StackProducer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitPushInstruction(Lcom/sun/org/apache/bcel/internal/generic/PushInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitTypedInstruction(Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitLocalVariableInstruction(Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitLoadInstruction(Lcom/sun/org/apache/bcel/internal/generic/LoadInstruction;)V

    return-void
.end method
