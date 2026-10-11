.class public Lcom/sun/org/apache/bcel/internal/generic/LLOAD;
.super Lcom/sun/org/apache/bcel/internal/generic/LoadInstruction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x16

    const/16 v1, 0x1e

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/LoadInstruction;-><init>(SS)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/16 v0, 0x16

    const/16 v1, 0x1e

    .line 2
    invoke-direct {p0, v0, v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/LoadInstruction;-><init>(SSI)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/LoadInstruction;->accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitLLOAD(Lcom/sun/org/apache/bcel/internal/generic/LLOAD;)V

    return-void
.end method
