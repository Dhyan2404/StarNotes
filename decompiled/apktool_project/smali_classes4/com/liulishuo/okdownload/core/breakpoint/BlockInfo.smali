.class public Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field

.field public final b:J
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(JJ)V
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;-><init>(JJJ)V

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 4
    .param p5    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p3, v0

    if-gez v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_1

    :cond_0
    cmp-long v0, p5, v0

    if-ltz v0, :cond_1

    .line 3
    iput-wide p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->a:J

    .line 4
    iput-wide p3, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->b:J

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1, p5, p6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->c:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public copy()Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;
    .locals 8

    new-instance v7, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    iget-wide v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->a:J

    iget-wide v3, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->b:J

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;-><init>(JJJ)V

    return-object v7
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->b:J

    return-wide v0
.end method

.method public getCurrentOffset()J
    .locals 2

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRangeLeft()J
    .locals 4

    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->a:J

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getRangeRight()J
    .locals 4

    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->a:J

    iget-wide v2, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->b:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getStartOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->a:J

    return-wide v0
.end method

.method public increaseCurrentOffset(J)V
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public resetBlock()V
    .locals 2

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->getRangeRight()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")-current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
