.class public final synthetic Lcom/sunia/HTREnginev2/pff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/backport/function/DoubleUnaryOperator;


# instance fields
.field public final synthetic a:Ljava/backport/function/DoubleUnaryOperator;

.field public final synthetic b:Ljava/backport/function/DoubleUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/backport/function/DoubleUnaryOperator;Ljava/backport/function/DoubleUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pff;->a:Ljava/backport/function/DoubleUnaryOperator;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/pff;->b:Ljava/backport/function/DoubleUnaryOperator;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pff;->a:Ljava/backport/function/DoubleUnaryOperator;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pff;->b:Ljava/backport/function/DoubleUnaryOperator;

    invoke-static {v0, p0, p1, p2}, Ljava/backport/function/DoubleUnaryOperator;->b(Ljava/backport/function/DoubleUnaryOperator;Ljava/backport/function/DoubleUnaryOperator;D)D

    move-result-wide p0

    return-wide p0
.end method
