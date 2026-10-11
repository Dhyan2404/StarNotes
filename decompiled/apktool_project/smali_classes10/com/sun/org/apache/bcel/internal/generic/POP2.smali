.class public Lcom/sun/org/apache/bcel/internal/generic/POP2;
.super Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/PopInstruction;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;-><init>(S)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackConsumer(Lcom/sun/org/apache/bcel/internal/generic/StackConsumer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitPopInstruction(Lcom/sun/org/apache/bcel/internal/generic/PopInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackInstruction(Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitPOP2(Lcom/sun/org/apache/bcel/internal/generic/POP2;)V

    return-void
.end method
