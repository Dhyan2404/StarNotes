.class public final synthetic Lcom/sunia/HTREnginev2/iff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/backport/function/DoubleConsumer;


# instance fields
.field public final synthetic a:Ljava/backport/function/DoubleConsumer;

.field public final synthetic b:Ljava/backport/function/DoubleConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/backport/function/DoubleConsumer;Ljava/backport/function/DoubleConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/iff;->a:Ljava/backport/function/DoubleConsumer;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/iff;->b:Ljava/backport/function/DoubleConsumer;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/iff;->a:Ljava/backport/function/DoubleConsumer;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iff;->b:Ljava/backport/function/DoubleConsumer;

    invoke-static {v0, p0, p1, p2}, Ljava/backport/function/DoubleConsumer;->a(Ljava/backport/function/DoubleConsumer;Ljava/backport/function/DoubleConsumer;D)V

    return-void
.end method
