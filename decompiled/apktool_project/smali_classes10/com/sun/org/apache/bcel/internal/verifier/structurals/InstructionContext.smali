.class public interface abstract Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract execute(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;Ljava/util/ArrayList;Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;)Z
.end method

.method public abstract getExceptionHandlers()[Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;
.end method

.method public abstract getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
.end method

.method public abstract getOutFrame(Ljava/util/ArrayList;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;
.end method

.method public abstract getSuccessors()[Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;
.end method

.method public abstract getTag()I
.end method

.method public abstract setTag(I)V
.end method
