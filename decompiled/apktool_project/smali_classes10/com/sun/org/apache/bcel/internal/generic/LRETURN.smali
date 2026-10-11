.class public Lcom/sun/org/apache/bcel/internal/generic/LRETURN;
.super Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xad

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;-><init>(S)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitExceptionThrower(Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitTypedInstruction(Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackConsumer(Lcom/sun/org/apache/bcel/internal/generic/StackConsumer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitReturnInstruction(Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitLRETURN(Lcom/sun/org/apache/bcel/internal/generic/LRETURN;)V

    return-void
.end method
