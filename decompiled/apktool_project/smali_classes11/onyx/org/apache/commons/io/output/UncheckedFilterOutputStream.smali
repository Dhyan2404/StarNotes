.class public final Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/OutputStream;Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static synthetic H(Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;->f0([B)V

    return-void
.end method

.method public static synthetic I(Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;->h0(I)V

    return-void
.end method

.method private synthetic M()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    return-void
.end method

.method public static builder()Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream$Builder;-><init>()V

    return-object v0
.end method

.method private synthetic e0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    return-void
.end method

.method public static synthetic f(Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;)V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;->e0()V

    return-void
.end method

.method private synthetic f0([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write([B)V

    return-void
.end method

.method private synthetic g0([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V

    return-void
.end method

.method private synthetic h0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    return-void
.end method

.method public static synthetic j(Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;)V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;->M()V

    return-void
.end method

.method public static synthetic w(Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;->g0([BII)V

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

    new-instance v0, Lcom/sunia/HTREnginev2/zqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/zqn;-><init>(Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->run(Lonyx/org/apache/commons/io/function/IORunnable;)V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/xqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/xqn;-><init>(Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->run(Lonyx/org/apache/commons/io/function/IORunnable;)V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/arn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/arn;-><init>(Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->accept(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/wqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/wqn;-><init>(Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;)V

    invoke-static {v0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->accept(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/yqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/yqn;-><init>(Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p1, p0, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->accept(Lonyx/org/apache/commons/io/function/IOTriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
