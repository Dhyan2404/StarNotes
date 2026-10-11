.class public interface abstract Ljava/backport/function/IntConsumer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic a(Ljava/backport/function/IntConsumer;Ljava/backport/function/IntConsumer;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/backport/function/IntConsumer;->lambda$andThen$0(Ljava/backport/function/IntConsumer;I)V

    return-void
.end method

.method private synthetic lambda$andThen$0(Ljava/backport/function/IntConsumer;I)V
    .locals 0

    invoke-interface {p0, p2}, Ljava/backport/function/IntConsumer;->accept(I)V

    invoke-interface {p1, p2}, Ljava/backport/function/IntConsumer;->accept(I)V

    return-void
.end method


# virtual methods
.method public abstract accept(I)V
.end method

.method public andThen(Ljava/backport/function/IntConsumer;)Ljava/backport/function/IntConsumer;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/nmi;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/nmi;-><init>(Ljava/backport/function/IntConsumer;Ljava/backport/function/IntConsumer;)V

    return-object v0
.end method
