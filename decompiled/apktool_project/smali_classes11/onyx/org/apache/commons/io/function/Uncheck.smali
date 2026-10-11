.class public final Lonyx/org/apache/commons/io/function/Uncheck;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/IOException;)Ljava/io/UncheckedIOException;
    .locals 1

    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    return-object v0
.end method

.method public static accept(Lonyx/org/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/function/IOBiConsumer<",
            "TT;TU;>;TT;TU;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Uncheck;->a(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static accept(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-interface {p0, p1}, Lonyx/org/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Uncheck;->a(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static accept(Lonyx/org/apache/commons/io/function/IOTriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/function/IOTriConsumer<",
            "TT;TU;TV;>;TT;TU;TV;)V"
        }
    .end annotation

    .line 5
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/function/IOTriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Uncheck;->a(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/function/IOBiFunction<",
            "TT;TU;TR;>;TT;TU;)TR;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Uncheck;->a(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/function/IOFunction<",
            "TT;TR;>;TT;)TR;"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-interface {p0, p1}, Lonyx/org/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Uncheck;->a(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static apply(Lonyx/org/apache/commons/io/function/IOQuadFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "W:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/function/IOQuadFunction<",
            "TT;TU;TV;TW;TR;>;TT;TU;TV;TW;)TR;"
        }
    .end annotation

    .line 5
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lonyx/org/apache/commons/io/function/IOQuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Uncheck;->a(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/function/IOTriFunction<",
            "TT;TU;TV;TR;>;TT;TU;TV;)TR;"
        }
    .end annotation

    .line 7
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/function/IOTriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Uncheck;->a(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static b(Ljava/io/IOException;Ljava/util/function/Supplier;)Ljava/io/UncheckedIOException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/IOException;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/UncheckedIOException;"
        }
    .end annotation

    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    return-object v0
.end method

.method public static compare(Lonyx/org/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/function/IOComparator<",
            "TT;>;TT;TT;)I"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Uncheck;->a(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static get(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/function/IOSupplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOSupplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Uncheck;->a(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static get(Lonyx/org/apache/commons/io/function/IOSupplier;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/function/IOSupplier<",
            "TT;>;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOSupplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->b(Ljava/io/IOException;Ljava/util/function/Supplier;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static getAsInt(Lonyx/org/apache/commons/io/function/IOIntSupplier;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOIntSupplier;->getAsInt()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Uncheck;->a(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static getAsInt(Lonyx/org/apache/commons/io/function/IOIntSupplier;Ljava/util/function/Supplier;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOIntSupplier;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOIntSupplier;->getAsInt()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->b(Ljava/io/IOException;Ljava/util/function/Supplier;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static getAsLong(Lonyx/org/apache/commons/io/function/IOLongSupplier;)J
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOLongSupplier;->getAsLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Uncheck;->a(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static getAsLong(Lonyx/org/apache/commons/io/function/IOLongSupplier;Ljava/util/function/Supplier;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOLongSupplier;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOLongSupplier;->getAsLong()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->b(Ljava/io/IOException;Ljava/util/function/Supplier;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static run(Lonyx/org/apache/commons/io/function/IORunnable;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IORunnable;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Uncheck;->a(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static run(Lonyx/org/apache/commons/io/function/IORunnable;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IORunnable;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IORunnable;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->b(Ljava/io/IOException;Ljava/util/function/Supplier;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static test(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/function/IOPredicate<",
            "TT;>;TT;)Z"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1}, Lonyx/org/apache/commons/io/function/IOPredicate;->test(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Uncheck;->a(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method
