.class public Lonyx/org/apache/commons/io/input/SequenceReader;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field public e:Ljava/io/Reader;

.field public final f:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/io/Reader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/io/Reader;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const-string v0, "readers"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/SequenceReader;->f:Ljava/util/Iterator;

    .line 3
    new-instance p1, Lcom/sunia/HTREnginev2/ygm;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/ygm;-><init>(Lonyx/org/apache/commons/io/input/SequenceReader;)V

    invoke-static {p1}, Lonyx/org/apache/commons/io/function/Uncheck;->get(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Reader;

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/SequenceReader;->e:Ljava/io/Reader;

    return-void
.end method

.method public varargs constructor <init>([Ljava/io/Reader;)V
    .locals 0

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/input/SequenceReader;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic f(Lonyx/org/apache/commons/io/input/SequenceReader;)Ljava/io/Reader;
    .locals 0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/SequenceReader;->j()Ljava/io/Reader;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/SequenceReader;->j()Ljava/io/Reader;

    move-result-object v0

    if-nez v0, :cond_0

    return-void
.end method

.method public final j()Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/SequenceReader;->e:Ljava/io/Reader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/SequenceReader;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/SequenceReader;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/SequenceReader;->e:Ljava/io/Reader;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/SequenceReader;->e:Ljava/io/Reader;

    :goto_0
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/SequenceReader;->e:Ljava/io/Reader;

    return-object p0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lonyx/org/apache/commons/io/input/SequenceReader;->e:Ljava/io/Reader;

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v1

    if-eq v1, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/SequenceReader;->j()Ljava/io/Reader;

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public read([CII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "cbuf"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p3, :cond_4

    if-ltz p2, :cond_4

    add-int v0, p2, p3

    .line 5
    array-length v1, p1

    if-gt v0, v1, :cond_4

    const/4 v0, 0x0

    .line 6
    :cond_0
    :goto_0
    iget-object v1, p0, Lonyx/org/apache/commons/io/input/SequenceReader;->e:Ljava/io/Reader;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 8
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/SequenceReader;->j()Ljava/io/Reader;

    goto :goto_0

    :cond_1
    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    if-gtz p3, :cond_0

    :cond_2
    if-lez v0, :cond_3

    return v0

    :cond_3
    return v2

    .line 9
    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array Size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", offset="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", length="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
