.class public Lonyx/org/apache/commons/io/output/FilterCollectionWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field protected final EMPTY_WRITERS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/io/Writer;",
            ">;"
        }
    .end annotation
.end field

.field protected final writers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/io/Writer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/Writer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->EMPTY_WRITERS:Ljava/util/Collection;

    if-nez p1, :cond_0

    move-object p1, v0

    .line 3
    :cond_0
    iput-object p1, p0, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    return-void
.end method

.method public varargs constructor <init>([Ljava/io/Writer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->EMPTY_WRITERS:Ljava/util/Collection;

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    return-void
.end method

.method public static synthetic H([CLjava/io/Writer;)V
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->k0([CLjava/io/Writer;)V

    return-void
.end method

.method public static synthetic I(Ljava/lang/String;IILjava/io/Writer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->o0(Ljava/lang/String;IILjava/io/Writer;)V

    return-void
.end method

.method public static synthetic M(CLjava/io/Writer;)V
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->h0(CLjava/io/Writer;)V

    return-void
.end method

.method public static synthetic e0(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->i0(Ljava/lang/CharSequence;Ljava/io/Writer;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/CharSequence;IILjava/io/Writer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->j0(Ljava/lang/CharSequence;IILjava/io/Writer;)V

    return-void
.end method

.method public static synthetic f0(ILjava/io/Writer;)V
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->m0(ILjava/io/Writer;)V

    return-void
.end method

.method public static synthetic h0(CLjava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    return-void
.end method

.method public static synthetic i0(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void
.end method

.method public static synthetic j(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->n0(Ljava/lang/String;Ljava/io/Writer;)V

    return-void
.end method

.method public static synthetic j0(Ljava/lang/CharSequence;IILjava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3, p0, p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    return-void
.end method

.method public static synthetic k0([CLjava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write([C)V

    return-void
.end method

.method public static synthetic l0([CIILjava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3, p0, p1, p2}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

.method public static synthetic m0(ILjava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public static synthetic n0(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic o0(Ljava/lang/String;IILjava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3, p0, p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic w([CIILjava/io/Writer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->l0([CIILjava/io/Writer;)V

    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/sunia/HTREnginev2/ylg;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/ylg;-><init>(C)V

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->g0(Lonyx/org/apache/commons/io/function/IOConsumer;)Lonyx/org/apache/commons/io/output/FilterCollectionWriter;

    move-result-object p0

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/sunia/HTREnginev2/qlg;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/qlg;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->g0(Lonyx/org/apache/commons/io/function/IOConsumer;)Lonyx/org/apache/commons/io/output/FilterCollectionWriter;

    move-result-object p0

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/sunia/HTREnginev2/vlg;

    invoke-direct {v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/vlg;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->g0(Lonyx/org/apache/commons/io/function/IOConsumer;)Lonyx/org/apache/commons/io/output/FilterCollectionWriter;

    move-result-object p0

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
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->append(C)Ljava/io/Writer;

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
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

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
    invoke-virtual {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/slg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/slg;-><init>()V

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->g0(Lonyx/org/apache/commons/io/function/IOConsumer;)Lonyx/org/apache/commons/io/output/FilterCollectionWriter;

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/tlg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/tlg;-><init>()V

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->g0(Lonyx/org/apache/commons/io/function/IOConsumer;)Lonyx/org/apache/commons/io/output/FilterCollectionWriter;

    return-void
.end method

.method public final g0(Lonyx/org/apache/commons/io/function/IOConsumer;)Lonyx/org/apache/commons/io/output/FilterCollectionWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "Ljava/io/Writer;",
            ">;)",
            "Lonyx/org/apache/commons/io/output/FilterCollectionWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lonyx/org/apache/commons/io/IOExceptionList;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->p0()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1, v0}, Lonyx/org/apache/commons/io/function/IOConsumer;->forAll(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/util/stream/Stream;)V

    return-object p0
.end method

.method public final p0()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/io/Writer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/wlg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/wlg;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/xlg;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/xlg;-><init>(I)V

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->g0(Lonyx/org/apache/commons/io/function/IOConsumer;)Lonyx/org/apache/commons/io/output/FilterCollectionWriter;

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/sunia/HTREnginev2/zlg;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/zlg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->g0(Lonyx/org/apache/commons/io/function/IOConsumer;)Lonyx/org/apache/commons/io/output/FilterCollectionWriter;

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/sunia/HTREnginev2/rlg;

    invoke-direct {v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/rlg;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->g0(Lonyx/org/apache/commons/io/function/IOConsumer;)Lonyx/org/apache/commons/io/output/FilterCollectionWriter;

    return-void
.end method

.method public write([C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/ulg;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/ulg;-><init>([C)V

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->g0(Lonyx/org/apache/commons/io/function/IOConsumer;)Lonyx/org/apache/commons/io/output/FilterCollectionWriter;

    return-void
.end method

.method public write([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/amg;

    invoke-direct {v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/amg;-><init>([CII)V

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->g0(Lonyx/org/apache/commons/io/function/IOConsumer;)Lonyx/org/apache/commons/io/output/FilterCollectionWriter;

    return-void
.end method
