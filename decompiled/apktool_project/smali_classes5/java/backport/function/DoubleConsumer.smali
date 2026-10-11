.class public interface abstract Ljava/backport/function/DoubleConsumer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic a(Ljava/backport/function/DoubleConsumer;Ljava/backport/function/DoubleConsumer;D)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/backport/function/DoubleConsumer;->lambda$andThen$0(Ljava/backport/function/DoubleConsumer;D)V

    return-void
.end method

.method private synthetic lambda$andThen$0(Ljava/backport/function/DoubleConsumer;D)V
    .locals 0

    invoke-interface {p0, p2, p3}, Ljava/backport/function/DoubleConsumer;->accept(D)V

    invoke-interface {p1, p2, p3}, Ljava/backport/function/DoubleConsumer;->accept(D)V

    return-void
.end method


# virtual methods
.method public abstract accept(D)V
.end method

.method public andThen(Ljava/backport/function/DoubleConsumer;)Ljava/backport/function/DoubleConsumer;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/iff;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/iff;-><init>(Ljava/backport/function/DoubleConsumer;Ljava/backport/function/DoubleConsumer;)V

    return-object v0
.end method
