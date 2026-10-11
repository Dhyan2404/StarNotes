.class public Lnet/sf/saxon/trace/ContextStackFrame$VariableEvaluation;
.super Lnet/sf/saxon/trace/ContextStackFrame;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/trace/ContextStackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VariableEvaluation"
.end annotation


# instance fields
.field public d:Lnet/sf/saxon/om/StructuredQName;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/trace/ContextStackFrame;-><init>()V

    return-void
.end method


# virtual methods
.method public getVariableName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trace/ContextStackFrame$VariableEvaluation;->d:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public print(Lnet/sf/saxon/lib/Logger;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/trace/ContextStackFrame;->getContainer()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/trace/ContextStackFrame;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/trace/ContextStackFrame;->showLocation()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public setVariableName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trace/ContextStackFrame$VariableEvaluation;->d:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method
