.class public Lcom/sun/org/apache/bcel/internal/generic/NOP;
.super Lcom/sun/org/apache/bcel/internal/generic/Instruction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>(SS)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitNOP(Lcom/sun/org/apache/bcel/internal/generic/NOP;)V

    return-void
.end method
