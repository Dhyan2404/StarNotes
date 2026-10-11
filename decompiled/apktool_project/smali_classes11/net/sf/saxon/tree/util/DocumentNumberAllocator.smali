.class public Lnet/sf/saxon/tree/util/DocumentNumberAllocator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/sf/saxon/tree/util/DocumentNumberAllocator;->a:J

    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lnet/sf/saxon/tree/util/DocumentNumberAllocator;->b:J

    return-void
.end method


# virtual methods
.method public declared-synchronized allocateDocumentNumber()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lnet/sf/saxon/tree/util/DocumentNumberAllocator;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnet/sf/saxon/tree/util/DocumentNumberAllocator;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized allocateStreamedDocumentNumber()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lnet/sf/saxon/tree/util/DocumentNumberAllocator;->b:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lnet/sf/saxon/tree/util/DocumentNumberAllocator;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
