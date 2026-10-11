.class public final synthetic Lcom/sunia/HTREnginev2/tkn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/flwor/OperandProcessor;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/trace/TraceCodeInjector;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/trace/TraceCodeInjector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tkn;->a:Lnet/sf/saxon/trace/TraceCodeInjector;

    return-void
.end method


# virtual methods
.method public final processOperand(Lnet/sf/saxon/expr/Operand;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tkn;->a:Lnet/sf/saxon/trace/TraceCodeInjector;

    invoke-static {p0, p1}, Lnet/sf/saxon/trace/TraceCodeInjector;->a(Lnet/sf/saxon/trace/TraceCodeInjector;Lnet/sf/saxon/expr/Operand;)V

    return-void
.end method
