.class public final Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public static synthetic H(Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;)V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;->g0()V

    return-void
.end method

.method public static synthetic I(Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;[B)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;->i0([B)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;J)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;->l0(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static builder()Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream$Builder;-><init>()V

    return-object v0
.end method

.method public static synthetic e0(Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;)V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;->k0()V

    return-void
.end method

.method public static synthetic f(Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;->f0()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic f0()Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic g0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void
.end method

.method private synthetic h0()Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic i0([B)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;[BII)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;->j0([BII)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic j0([BII)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic k0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    return-void
.end method

.method private synthetic l0(J)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;->h0()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/sqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/sqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->get(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/tqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/tqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->run(Lonyx/org/apache/commons/io/function/IORunnable;)V

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/uqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/uqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->get(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/pqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/pqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;)V

    invoke-static {v0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/rqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/rqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p1, p0, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sunia/HTREnginev2/oqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/oqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->run(Lonyx/org/apache/commons/io/function/IORunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/qqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/qqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedFilterInputStream;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method
