.class public abstract Lcom/sunia/HTREnginev2/vod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/vod$c;,
        Lcom/sunia/HTREnginev2/vod$b;
    }
.end annotation


# static fields
.field public static final g:I = 0xa

.field public static final h:I = 0x2


# instance fields
.field public final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/sunia/HTREnginev2/vod$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/sunia/HTREnginev2/vod$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/sunia/HTREnginev2/vod$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/vod;->a:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sunia/HTREnginev2/vod;->a:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/sunia/HTREnginev2/vod$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sunia/HTREnginev2/vod$b;-><init>(Lcom/sunia/HTREnginev2/vod$a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/vod;->b:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sunia/HTREnginev2/vod;->b:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/sunia/HTREnginev2/vod$c;

    new-instance v3, Lcom/sunia/HTREnginev2/uod;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/uod;-><init>(Lcom/sunia/HTREnginev2/vod;)V

    invoke-direct {v2, v3}, Lcom/sunia/HTREnginev2/vod$c;-><init>(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/vod;->c:Ljava/util/PriorityQueue;

    return-void
.end method


# virtual methods
.method public final a(Lcom/sunia/HTREnginev2/vod$b;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vod;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract createSubtitle()Lcom/google/android/exoplayer2/text/Subtitle;
.end method

.method public abstract decode(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
.end method

.method public dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/vod;->d:Lcom/sunia/HTREnginev2/vod$b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 3
    iget-object v0, p0, Lcom/sunia/HTREnginev2/vod;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/vod;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/vod$b;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/vod;->d:Lcom/sunia/HTREnginev2/vod$b;

    return-object v0
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/vod;->dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    move-result-object p0

    return-object p0
.end method

.method public dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/vod;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/vod;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vod;->c:Ljava/util/PriorityQueue;

    .line 4
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/vod$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/vod$b;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/vod;->e:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/sunia/HTREnginev2/vod;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/vod$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/vod$b;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/Buffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v1, p0, Lcom/sunia/HTREnginev2/vod;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    const/4 v2, 0x4

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/decoder/Buffer;->addFlag(I)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/vod;->a(Lcom/sunia/HTREnginev2/vod$b;)V

    return-object v1

    .line 10
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/vod;->decode(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    .line 11
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/vod;->isNewSubtitleDataAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/vod;->createSubtitle()Lcom/google/android/exoplayer2/text/Subtitle;

    move-result-object v6

    .line 13
    iget-object v1, p0, Lcom/sunia/HTREnginev2/vod;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 14
    iget-wide v4, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->setContent(JLcom/google/android/exoplayer2/text/Subtitle;J)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/vod;->a(Lcom/sunia/HTREnginev2/vod$b;)V

    return-object v1

    .line 16
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/vod;->a(Lcom/sunia/HTREnginev2/vod$b;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/vod;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object p0

    return-object p0
.end method

.method public flush()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/vod;->f:J

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/vod;->e:J

    :goto_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/vod;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vod;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/vod$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/vod$b;

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/vod;->a(Lcom/sunia/HTREnginev2/vod$b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/vod;->d:Lcom/sunia/HTREnginev2/vod$b;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/vod;->a(Lcom/sunia/HTREnginev2/vod$b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/vod;->d:Lcom/sunia/HTREnginev2/vod$b;

    :cond_1
    return-void
.end method

.method public final getAvailableOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vod;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    return-object p0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public final getPositionUs()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/vod;->e:J

    return-wide v0
.end method

.method public abstract isNewSubtitleDataAvailable()Z
.end method

.method public queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/vod;->d:Lcom/sunia/HTREnginev2/vod$b;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 3
    check-cast p1, Lcom/sunia/HTREnginev2/vod$b;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/Buffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/vod;->a(Lcom/sunia/HTREnginev2/vod$b;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/sunia/HTREnginev2/vod;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/sunia/HTREnginev2/vod;->f:J

    invoke-static {p1, v0, v1}, Lcom/sunia/HTREnginev2/vod$b;->b(Lcom/sunia/HTREnginev2/vod$b;J)J

    .line 7
    iget-object v0, p0, Lcom/sunia/HTREnginev2/vod;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/sunia/HTREnginev2/vod;->d:Lcom/sunia/HTREnginev2/vod$b;

    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/vod;->queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public releaseOutputBuffer(Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->clear()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vod;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPositionUs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/vod;->e:J

    return-void
.end method
