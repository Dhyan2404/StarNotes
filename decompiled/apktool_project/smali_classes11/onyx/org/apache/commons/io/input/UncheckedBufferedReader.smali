.class public final Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;
.super Ljava/io/BufferedReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/input/UncheckedBufferedReader$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/Reader;ILonyx/org/apache/commons/io/input/UncheckedBufferedReader$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public static synthetic H(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;->p0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;I)V
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;->j0(I)V

    return-void
.end method

.method public static synthetic M(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;[CII)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;->m0([CII)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static builder()Lonyx/org/apache/commons/io/input/UncheckedBufferedReader$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/UncheckedBufferedReader$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/UncheckedBufferedReader$Builder;-><init>()V

    return-object v0
.end method

.method public static synthetic e0(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;Ljava/nio/CharBuffer;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;->n0(Ljava/nio/CharBuffer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;[C)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;->l0([C)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;J)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;->r0(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;->o0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;->i0()V

    return-void
.end method

.method private synthetic i0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method

.method public static synthetic j(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;->k0()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic j0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/BufferedReader;->mark(I)V

    return-void
.end method

.method private synthetic k0()Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic l0([C)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/Reader;->read([C)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic m0([CII)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read([CII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic n0(Ljava/nio/CharBuffer;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/Reader;->read(Ljava/nio/CharBuffer;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic o0()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic p0()Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/BufferedReader;->ready()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic q0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/BufferedReader;->reset()V

    return-void
.end method

.method private synthetic r0(J)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava/io/BufferedReader;->skip(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;->q0()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/gqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/gqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->run(Lonyx/org/apache/commons/io/function/IORunnable;)V

    return-void
.end method

.method public mark(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/fqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/fqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->accept(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

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
    new-instance v0, Lcom/sunia/HTREnginev2/hqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/hqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->get(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/sunia/HTREnginev2/mqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/mqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public read([C)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/lqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/lqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public read([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/eqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/eqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)V

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

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/iqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/iqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->get(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/kqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/kqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->get(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/dqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/dqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->run(Lonyx/org/apache/commons/io/function/IORunnable;)V

    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/jqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/jqn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method
