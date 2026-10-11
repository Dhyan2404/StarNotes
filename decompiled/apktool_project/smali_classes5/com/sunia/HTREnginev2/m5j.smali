.class public final synthetic Lcom/sunia/HTREnginev2/m5j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/backport/function/LongUnaryOperator;


# instance fields
.field public final synthetic a:Ljava/backport/function/LongUnaryOperator;

.field public final synthetic b:Ljava/backport/function/LongUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/backport/function/LongUnaryOperator;Ljava/backport/function/LongUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/m5j;->a:Ljava/backport/function/LongUnaryOperator;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/m5j;->b:Ljava/backport/function/LongUnaryOperator;

    return-void
.end method


# virtual methods
.method public final applyAsLong(J)J
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/m5j;->a:Ljava/backport/function/LongUnaryOperator;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m5j;->b:Ljava/backport/function/LongUnaryOperator;

    invoke-static {v0, p0, p1, p2}, Ljava/backport/function/LongUnaryOperator;->b(Ljava/backport/function/LongUnaryOperator;Ljava/backport/function/LongUnaryOperator;J)J

    move-result-wide p0

    return-wide p0
.end method
