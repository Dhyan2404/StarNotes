.class public interface abstract Ljava/backport/function/LongConsumer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic a(Ljava/backport/function/LongConsumer;Ljava/backport/function/LongConsumer;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/backport/function/LongConsumer;->lambda$andThen$0(Ljava/backport/function/LongConsumer;J)V

    return-void
.end method

.method private synthetic lambda$andThen$0(Ljava/backport/function/LongConsumer;J)V
    .locals 0

    invoke-interface {p0, p2, p3}, Ljava/backport/function/LongConsumer;->accept(J)V

    invoke-interface {p1, p2, p3}, Ljava/backport/function/LongConsumer;->accept(J)V

    return-void
.end method


# virtual methods
.method public abstract accept(J)V
.end method

.method public andThen(Ljava/backport/function/LongConsumer;)Ljava/backport/function/LongConsumer;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/f5j;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/f5j;-><init>(Ljava/backport/function/LongConsumer;Ljava/backport/function/LongConsumer;)V

    return-object v0
.end method
