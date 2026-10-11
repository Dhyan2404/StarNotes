.class public interface abstract Ljava/backport/function/Consumer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic a(Ljava/backport/function/Consumer;Ljava/backport/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/backport/function/Consumer;->lambda$andThen$0(Ljava/backport/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$andThen$0(Ljava/backport/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2}, Ljava/backport/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/backport/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public andThen(Ljava/backport/function/Consumer;)Ljava/backport/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/backport/function/Consumer<",
            "-TT;>;)",
            "Ljava/backport/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/kae;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/kae;-><init>(Ljava/backport/function/Consumer;Ljava/backport/function/Consumer;)V

    return-object v0
.end method
