.class public Lcom/sun/org/apache/bcel/internal/generic/SWAP;
.super Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/StackConsumer;
.implements Lcom/sun/org/apache/bcel/internal/generic/StackProducer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x5f

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;-><init>(S)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackConsumer(Lcom/sun/org/apache/bcel/internal/generic/StackConsumer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackProducer(Lcom/sun/org/apache/bcel/internal/generic/StackProducer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackInstruction(Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitSWAP(Lcom/sun/org/apache/bcel/internal/generic/SWAP;)V

    return-void
.end method
