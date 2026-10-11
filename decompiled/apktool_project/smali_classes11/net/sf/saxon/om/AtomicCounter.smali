.class public Lnet/sf/saxon/om/AtomicCounter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/AtomicCounter;->a(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lnet/sf/saxon/om/AtomicCounter;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public get()J
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/om/AtomicCounter;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAndIncrement()J
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/om/AtomicCounter;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementAndGet()J
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/om/AtomicCounter;->getAndIncrement()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method
