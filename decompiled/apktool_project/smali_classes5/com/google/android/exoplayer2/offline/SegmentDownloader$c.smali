.class public final Lcom/google/android/exoplayer2/offline/SegmentDownloader$c;
.super Lcom/google/android/exoplayer2/util/RunnableFutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
        "Ljava/lang/Void;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field public final l:Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

.field public final m:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

.field public final n:Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final o:[B

.field public final p:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;[B)V
    .locals 1
    .param p3    # Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$c;->l:Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$c;->m:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$c;->n:Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;

    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$c;->o:[B

    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v0, p2, p1, p4, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;-><init>(Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;[BLcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$c;->p:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$c;->p:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$c;->n:Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;->b()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public cancelWork()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$c;->p:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cancel()V

    return-void
.end method

.method public bridge synthetic doWork()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$c;->b()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
