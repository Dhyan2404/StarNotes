.class public interface abstract Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract contains(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Z
.end method

.method public abstract getAccessedLocalsIndices()[I
.end method

.method public abstract getEnteringJsrInstructions()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
.end method

.method public abstract getInstructions()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
.end method

.method public abstract getLeavingRET()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
.end method

.method public abstract getRecursivelyAccessedLocalsIndices()[I
.end method

.method public abstract subSubs()[Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;
.end method
