.class public final Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;
.super Ljava/io/FilterWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/output/UncheckedFilterWriter$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/Writer;Lonyx/org/apache/commons/io/output/UncheckedFilterWriter$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method

.method public static synthetic H(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;->q0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic I(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;)V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;->m0()V

    return-void
.end method

.method public static synthetic M(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;->j0(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public static builder()Lonyx/org/apache/commons/io/output/UncheckedFilterWriter$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter$Builder;-><init>()V

    return-object v0
.end method

.method public static synthetic e0(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;[C)V
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;->n0([C)V

    return-void
.end method

.method public static synthetic f(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;)V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;->l0()V

    return-void
.end method

.method public static synthetic f0(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;->p0(I)V

    return-void
.end method

.method public static synthetic g0(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;C)Ljava/io/Writer;
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;->i0(C)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;->k0(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic i0(C)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;->r0(Ljava/lang/String;II)V

    return-void
.end method

.method private synthetic j0(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic k0(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic l0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterWriter;->close()V

    return-void
.end method

.method private synthetic m0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterWriter;->flush()V

    return-void
.end method

.method private synthetic n0([C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/Writer;->write([C)V

    return-void
.end method

.method private synthetic o0([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterWriter;->write([CII)V

    return-void
.end method

.method private synthetic p0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/FilterWriter;->write(I)V

    return-void
.end method

.method private synthetic q0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic r0(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterWriter;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic w(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;[CII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;->o0([CII)V

    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/sunia/HTREnginev2/qrn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/qrn;-><init>(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Writer;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/sunia/HTREnginev2/trn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/trn;-><init>(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {v0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Writer;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/sunia/HTREnginev2/orn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/orn;-><init>(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p1, p0, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Writer;

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;->append(C)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/mrn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/mrn;-><init>(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;)V

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

    new-instance v0, Lcom/sunia/HTREnginev2/prn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/prn;-><init>(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;)V

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
    new-instance v0, Lcom/sunia/HTREnginev2/rrn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/rrn;-><init>(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->accept(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/sunia/HTREnginev2/urn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/urn;-><init>(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {v0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->accept(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/sunia/HTREnginev2/srn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/srn;-><init>(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p1, p0, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->accept(Lonyx/org/apache/commons/io/function/IOTriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public write([C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/lrn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/lrn;-><init>(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {v0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->accept(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public write([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/nrn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/nrn;-><init>(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p1, p0, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->accept(Lonyx/org/apache/commons/io/function/IOTriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
