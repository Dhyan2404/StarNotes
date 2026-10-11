.class public Lcom/sun/org/apache/bcel/internal/generic/L2D;
.super Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8a

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;-><init>(S)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitTypedInstruction(Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackProducer(Lcom/sun/org/apache/bcel/internal/generic/StackProducer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackConsumer(Lcom/sun/org/apache/bcel/internal/generic/StackConsumer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitConversionInstruction(Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitL2D(Lcom/sun/org/apache/bcel/internal/generic/L2D;)V

    return-void
.end method
