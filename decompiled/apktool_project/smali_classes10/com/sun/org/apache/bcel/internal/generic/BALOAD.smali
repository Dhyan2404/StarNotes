.class public Lcom/sun/org/apache/bcel/internal/generic/BALOAD;
.super Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/StackProducer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x33

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;-><init>(S)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackProducer(Lcom/sun/org/apache/bcel/internal/generic/StackProducer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitExceptionThrower(Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitTypedInstruction(Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitArrayInstruction(Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitBALOAD(Lcom/sun/org/apache/bcel/internal/generic/BALOAD;)V

    return-void
.end method
