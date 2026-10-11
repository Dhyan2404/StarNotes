.class public Lcom/sun/org/apache/bcel/internal/generic/DUP;
.super Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/PushInstruction;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;-><init>(S)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackProducer(Lcom/sun/org/apache/bcel/internal/generic/StackProducer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitPushInstruction(Lcom/sun/org/apache/bcel/internal/generic/PushInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackInstruction(Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitDUP(Lcom/sun/org/apache/bcel/internal/generic/DUP;)V

    return-void
.end method
