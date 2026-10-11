.class public final Lonyx/org/apache/commons/io/input/UncheckedFilterReader;
.super Ljava/io/FilterReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/input/UncheckedFilterReader$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/Reader;Lonyx/org/apache/commons/io/input/UncheckedFilterReader$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/input/UncheckedFilterReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public static synthetic H(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/UncheckedFilterReader;->n0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/UncheckedFilterReader;->j0()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;)V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/UncheckedFilterReader;->o0()V

    return-void
.end method

.method public static builder()Lonyx/org/apache/commons/io/input/UncheckedFilterReader$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/UncheckedFilterReader$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/UncheckedFilterReader$Builder;-><init>()V

    return-object v0
.end method

.method public static synthetic e0(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;I)V
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/input/UncheckedFilterReader;->i0(I)V

    return-void
.end method

.method public static synthetic f(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;)V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/UncheckedFilterReader;->h0()V

    return-void
.end method

.method public static synthetic f0(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;J)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/input/UncheckedFilterReader;->p0(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;Ljava/nio/CharBuffer;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/input/UncheckedFilterReader;->m0(Ljava/nio/CharBuffer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic h0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterReader;->close()V

    return-void
.end method

.method private synthetic i0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/FilterReader;->mark(I)V

    return-void
.end method

.method public static synthetic j(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;[CII)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/input/UncheckedFilterReader;->l0([CII)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic j0()Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterReader;->read()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic k0([C)Ljava/lang/Integer;
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

.method private synthetic l0([CII)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterReader;->read([CII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic m0(Ljava/nio/CharBuffer;)Ljava/lang/Integer;
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

.method private synthetic n0()Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterReader;->ready()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic o0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterReader;->reset()V

    return-void
.end method

.method private synthetic p0(J)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava/io/FilterReader;->skip(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;[C)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/input/UncheckedFilterReader;->k0([C)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/drn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/drn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;)V

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

    new-instance v0, Lcom/sunia/HTREnginev2/irn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/irn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;)V

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
    new-instance v0, Lcom/sunia/HTREnginev2/brn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/brn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;)V

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
    new-instance v0, Lcom/sunia/HTREnginev2/hrn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/hrn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;)V

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
    new-instance v0, Lcom/sunia/HTREnginev2/jrn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/jrn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;)V

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
    new-instance v0, Lcom/sunia/HTREnginev2/ern;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ern;-><init>(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;)V

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

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/grn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/grn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;)V

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

    new-instance v0, Lcom/sunia/HTREnginev2/crn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/crn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;)V

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

    new-instance v0, Lcom/sunia/HTREnginev2/frn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/frn;-><init>(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method
