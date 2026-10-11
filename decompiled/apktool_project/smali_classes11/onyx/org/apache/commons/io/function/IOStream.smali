.class public interface abstract Lonyx/org/apache/commons/io/function/IOStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOBaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lonyx/org/apache/commons/io/function/IOBaseStream<",
        "TT;",
        "Lonyx/org/apache/commons/io/function/IOStream<",
        "TT;>;",
        "Ljava/util/stream/Stream<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public static synthetic A(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/LongStream;
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Erase;->d(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/LongStream;

    return-object p0
.end method

.method public static synthetic B(Lonyx/org/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/Erase;->e(Lonyx/org/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic C(Lonyx/org/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOStream;->Y(Lonyx/org/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic D(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/LongStream;
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/IOStream;->A(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Ljava/lang/Integer;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/IOStream;->W(Ljava/lang/Integer;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Erase;->h(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic J(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Erase;->b(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic K(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Erase;->h(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic L(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Erase;->f(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/DoubleStream;
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Erase;->d(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/DoubleStream;

    return-object p0
.end method

.method public static synthetic O(Lonyx/org/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/Erase;->c(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/IOStream;->K(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Q(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lonyx/org/apache/commons/io/function/IOStream;->b(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic R(Lonyx/org/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOStream;->B(Lonyx/org/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic S(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/DoubleStream;
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/IOStream;->N(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Lonyx/org/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/Erase;->e(Lonyx/org/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic U(Lonyx/org/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/Erase;->c(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V(Lonyx/org/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/Erase;->a(Lonyx/org/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic W(Ljava/lang/Integer;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    return-object p1
.end method

.method public static synthetic X(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/IOStream;->a(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Y(Lonyx/org/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/Erase;->a(Lonyx/org/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic Z(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/IOStream;->x(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Erase;->h(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a0(Lonyx/org/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/Erase;->c(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sunia/HTREnginev2/cfi;->adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;)V
    .locals 0

    :try_start_0
    invoke-interface {p0, p4}, Lonyx/org/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_0

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4, p0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static synthetic b0(Lonyx/org/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/Erase;->e(Lonyx/org/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Erase;->b(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c0(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/IOStream;->r(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/IOStream;->p(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d0(Lonyx/org/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOStream;->V(Lonyx/org/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Lonyx/org/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOStream;->a0(Lonyx/org/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lonyx/org/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/cfi;->adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/IntStream;
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/IOStream;->t(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOStream;->L(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/IOStream;->G(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static iterate(Ljava/lang/Object;Lonyx/org/apache/commons/io/function/IOUnaryOperator;)Lonyx/org/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lonyx/org/apache/commons/io/function/IOUnaryOperator<",
            "TT;>;)",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lonyx/org/apache/commons/io/function/IOStream$a;

    invoke-direct {v0, p0, p1}, Lonyx/org/apache/commons/io/function/IOStream$a;-><init>(Ljava/lang/Object;Lonyx/org/apache/commons/io/function/IOUnaryOperator;)V

    const/16 p0, 0x410

    invoke-static {v0, p0}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/IOStream;->l(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Erase;->d(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOStream;->o(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lonyx/org/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOStream;->U(Lonyx/org/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/Erase;->c(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Iterable;)Lonyx/org/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lonyx/org/apache/commons/io/function/IOStream;->empty()Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static of(Ljava/lang/Object;)Lonyx/org/apache/commons/io/function/IOStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([Ljava/lang/Object;)Lonyx/org/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    if-eqz p0, :cond_1

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lonyx/org/apache/commons/io/function/IOStream;->empty()Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static synthetic p(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Erase;->h(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/IOStream;->c(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic r(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Erase;->d(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/function/IOStream;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    return-object p0
.end method

.method public static synthetic s(Lonyx/org/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOStream;->O(Lonyx/org/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/IntStream;
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Erase;->d(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/IntStream;

    return-object p0
.end method

.method public static synthetic u(Lonyx/org/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOStream;->T(Lonyx/org/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic v(Lonyx/org/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOStream;->b0(Lonyx/org/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic x(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Erase;->b(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic y(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/IOStream;->J(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public allMatch(Lonyx/org/apache/commons/io/function/IOPredicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOPredicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/qei;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/qei;-><init>(Lonyx/org/apache/commons/io/function/IOPredicate;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public anyMatch(Lonyx/org/apache/commons/io/function/IOPredicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOPredicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/sei;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/sei;-><init>(Lonyx/org/apache/commons/io/function/IOPredicate;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public collect(Ljava/util/stream/Collector;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public collect(Lonyx/org/apache/commons/io/function/IOSupplier;Lonyx/org/apache/commons/io/function/IOBiConsumer;Lonyx/org/apache/commons/io/function/IOBiConsumer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/function/IOSupplier<",
            "TR;>;",
            "Lonyx/org/apache/commons/io/function/IOBiConsumer<",
            "TR;-TT;>;",
            "Lonyx/org/apache/commons/io/function/IOBiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/bfi;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/bfi;-><init>(Lonyx/org/apache/commons/io/function/IOSupplier;)V

    new-instance p1, Lcom/sunia/HTREnginev2/fei;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/fei;-><init>(Lonyx/org/apache/commons/io/function/IOBiConsumer;)V

    new-instance p2, Lcom/sunia/HTREnginev2/gei;

    invoke-direct {p2, p3}, Lcom/sunia/HTREnginev2/gei;-><init>(Lonyx/org/apache/commons/io/function/IOBiConsumer;)V

    invoke-interface {p0, v0, p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public count()J
    .locals 2

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public distinct()Lonyx/org/apache/commons/io/function/IOStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    return-object p0
.end method

.method public filter(Lonyx/org/apache/commons/io/function/IOPredicate;)Lonyx/org/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOPredicate<",
            "-TT;>;)",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/yei;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/yei;-><init>(Lonyx/org/apache/commons/io/function/IOPredicate;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    return-object p0
.end method

.method public findAny()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public findFirst()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public flatMap(Lonyx/org/apache/commons/io/function/IOFunction;)Lonyx/org/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/function/IOFunction<",
            "-TT;+",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "+TR;>;>;)",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/rei;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/rei;-><init>(Lonyx/org/apache/commons/io/function/IOFunction;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    return-object p0
.end method

.method public flatMapToDouble(Lonyx/org/apache/commons/io/function/IOFunction;)Ljava/util/stream/DoubleStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOFunction<",
            "-TT;+",
            "Ljava/util/stream/DoubleStream;",
            ">;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/oei;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/oei;-><init>(Lonyx/org/apache/commons/io/function/IOFunction;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMapToDouble(Ljava/util/function/Function;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public flatMapToInt(Lonyx/org/apache/commons/io/function/IOFunction;)Ljava/util/stream/IntStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOFunction<",
            "-TT;+",
            "Ljava/util/stream/IntStream;",
            ">;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/lei;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/lei;-><init>(Lonyx/org/apache/commons/io/function/IOFunction;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMapToInt(Ljava/util/function/Function;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public flatMapToLong(Lonyx/org/apache/commons/io/function/IOFunction;)Ljava/util/stream/LongStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOFunction<",
            "-TT;+",
            "Ljava/util/stream/LongStream;",
            ">;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/hei;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/hei;-><init>(Lonyx/org/apache/commons/io/function/IOFunction;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMapToLong(Ljava/util/function/Function;)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public forAll(Lonyx/org/apache/commons/io/function/IOConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lonyx/org/apache/commons/io/IOExceptionList;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/uei;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/uei;-><init>()V

    invoke-interface {p0, p1, v0}, Lonyx/org/apache/commons/io/function/IOStream;->forAll(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public forAll(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/util/function/BiFunction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "TT;>;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Ljava/io/IOException;",
            "Ljava/io/IOException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lonyx/org/apache/commons/io/IOExceptionList;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/sunia/HTREnginev2/ffi;->k(Lonyx/org/apache/commons/io/function/IOConsumer;)Lonyx/org/apache/commons/io/function/IOConsumer;

    move-result-object p1

    .line 5
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v2, Lcom/sunia/HTREnginev2/mei;

    invoke-direct {v2, p1, v0, p2, v1}, Lcom/sunia/HTREnginev2/mei;-><init>(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/IOExceptionList;->checkEmpty(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public forEach(Lonyx/org/apache/commons/io/function/IOConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/zei;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/zei;-><init>(Lonyx/org/apache/commons/io/function/IOConsumer;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachOrdered(Lonyx/org/apache/commons/io/function/IOConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/xei;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/xei;-><init>(Lonyx/org/apache/commons/io/function/IOConsumer;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public limit(J)Lonyx/org/apache/commons/io/function/IOStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    return-object p0
.end method

.method public map(Lonyx/org/apache/commons/io/function/IOFunction;)Lonyx/org/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/function/IOFunction<",
            "-TT;+TR;>;)",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/pei;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/pei;-><init>(Lonyx/org/apache/commons/io/function/IOFunction;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    return-object p0
.end method

.method public mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public max(Lonyx/org/apache/commons/io/function/IOComparator;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOComparator<",
            "-TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/vei;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/vei;-><init>(Lonyx/org/apache/commons/io/function/IOComparator;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public min(Lonyx/org/apache/commons/io/function/IOComparator;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOComparator<",
            "-TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/eei;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/eei;-><init>(Lonyx/org/apache/commons/io/function/IOComparator;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public noneMatch(Lonyx/org/apache/commons/io/function/IOPredicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOPredicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/wei;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/wei;-><init>(Lonyx/org/apache/commons/io/function/IOPredicate;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public peek(Lonyx/org/apache/commons/io/function/IOConsumer;)Lonyx/org/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "-TT;>;)",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/tei;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/tei;-><init>(Lonyx/org/apache/commons/io/function/IOConsumer;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    return-object p0
.end method

.method public reduce(Ljava/lang/Object;Lonyx/org/apache/commons/io/function/IOBiFunction;Lonyx/org/apache/commons/io/function/IOBinaryOperator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lonyx/org/apache/commons/io/function/IOBiFunction<",
            "TU;-TT;TU;>;",
            "Lonyx/org/apache/commons/io/function/IOBinaryOperator<",
            "TU;>;)TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/jei;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/jei;-><init>(Lonyx/org/apache/commons/io/function/IOBiFunction;)V

    new-instance p2, Lcom/sunia/HTREnginev2/kei;

    invoke-direct {p2, p3}, Lcom/sunia/HTREnginev2/kei;-><init>(Lonyx/org/apache/commons/io/function/IOBinaryOperator;)V

    invoke-interface {p0, p1, v0, p2}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public reduce(Ljava/lang/Object;Lonyx/org/apache/commons/io/function/IOBinaryOperator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lonyx/org/apache/commons/io/function/IOBinaryOperator<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/afi;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/afi;-><init>(Lonyx/org/apache/commons/io/function/IOBinaryOperator;)V

    invoke-interface {p0, p1, v0}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public reduce(Lonyx/org/apache/commons/io/function/IOBinaryOperator;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOBinaryOperator<",
            "TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/iei;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/iei;-><init>(Lonyx/org/apache/commons/io/function/IOBinaryOperator;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public skip(J)Lonyx/org/apache/commons/io/function/IOStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    return-object p0
.end method

.method public sorted()Lonyx/org/apache/commons/io/function/IOStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    return-object p0
.end method

.method public sorted(Lonyx/org/apache/commons/io/function/IOComparator;)Lonyx/org/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOComparator<",
            "-TT;>;)",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/nei;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/nei;-><init>(Lonyx/org/apache/commons/io/function/IOComparator;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    return-object p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "[TA;>;)[TA;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
