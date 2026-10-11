.class public Lcom/sun/org/apache/bcel/internal/generic/BREAKPOINT;
.super Lcom/sun/org/apache/bcel/internal/generic/Instruction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xca

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>(SS)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitBREAKPOINT(Lcom/sun/org/apache/bcel/internal/generic/BREAKPOINT;)V

    return-void
.end method
