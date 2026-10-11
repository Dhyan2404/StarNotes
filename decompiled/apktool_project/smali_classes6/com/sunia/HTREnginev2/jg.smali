.class public final synthetic Lcom/sunia/HTREnginev2/jg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field public final synthetic a:Ljava/util/function/DoubleBinaryOperator;

.field public final synthetic b:D


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/DoubleBinaryOperator;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jg;->a:Ljava/util/function/DoubleBinaryOperator;

    iput-wide p2, p0, Lcom/sunia/HTREnginev2/jg;->b:D

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jg;->a:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/jg;->b:D

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/common/util/concurrent/AtomicDoubleArray;->b(Ljava/util/function/DoubleBinaryOperator;DD)D

    move-result-wide p0

    return-wide p0
.end method
