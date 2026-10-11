.class public final synthetic Lcom/sunia/HTREnginev2/wmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/backport/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:Ljava/backport/function/IntUnaryOperator;

.field public final synthetic b:Ljava/backport/function/IntUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/backport/function/IntUnaryOperator;Ljava/backport/function/IntUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wmi;->a:Ljava/backport/function/IntUnaryOperator;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/wmi;->b:Ljava/backport/function/IntUnaryOperator;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wmi;->a:Ljava/backport/function/IntUnaryOperator;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wmi;->b:Ljava/backport/function/IntUnaryOperator;

    invoke-static {v0, p0, p1}, Ljava/backport/function/IntUnaryOperator;->a(Ljava/backport/function/IntUnaryOperator;Ljava/backport/function/IntUnaryOperator;I)I

    move-result p0

    return p0
.end method
