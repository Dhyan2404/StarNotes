.class public Lcom/sun/org/apache/bcel/internal/generic/DUP_X2;
.super Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x5b

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;-><init>(S)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackInstruction(Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitDUP_X2(Lcom/sun/org/apache/bcel/internal/generic/DUP_X2;)V

    return-void
.end method
