.class public Lorg/apache/commons/collections4/iterators/SkippingIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final f:J

.field public g:J


# direct methods
.method public constructor <init>(Ljava/util/Iterator;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TE;>;J)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    iput-wide p2, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->f:J

    iput-wide v0, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->g:J

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/SkippingIterator;->a()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offset parameter must not be negative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    :goto_0
    iget-wide v0, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->g:J

    iget-wide v2, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->f:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/SkippingIterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->g:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->g:J

    return-object v0
.end method

.method public remove()V
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->g:J

    iget-wide v2, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;->remove()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "remove() can not be called before calling next()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
