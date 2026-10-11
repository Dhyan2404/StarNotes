.class public final Lcom/google/android/exoplayer2/source/rtsp/b$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/rtsp/b$d;

.field public final b:Lcom/google/android/exoplayer2/upstream/Loader;

.field public final c:Lcom/google/android/exoplayer2/source/SampleQueue;

.field public d:Z

.field public e:Z

.field public final synthetic f:Lcom/google/android/exoplayer2/source/rtsp/b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/b;Lcom/google/android/exoplayer2/source/rtsp/c;ILcom/google/android/exoplayer2/source/rtsp/RtpDataChannel$Factory;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->f:Lcom/google/android/exoplayer2/source/rtsp/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/b$d;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/rtsp/b$d;-><init>(Lcom/google/android/exoplayer2/source/rtsp/b;Lcom/google/android/exoplayer2/source/rtsp/c;ILcom/google/android/exoplayer2/source/rtsp/RtpDataChannel$Factory;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->a:Lcom/google/android/exoplayer2/source/rtsp/b$d;

    new-instance p2, Lcom/google/android/exoplayer2/upstream/Loader;

    new-instance p4, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ExoPlayer:RtspMediaPeriod:RtspLoaderWrapper "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/b;->r(Lcom/google/android/exoplayer2/source/rtsp/b;)Lcom/google/android/exoplayer2/upstream/Allocator;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->createWithoutDrm(Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/SampleQueue;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->c:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/b;->s(Lcom/google/android/exoplayer2/source/rtsp/b;)Lcom/google/android/exoplayer2/source/rtsp/b$b;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/source/rtsp/b$e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->d:Z

    return p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/source/rtsp/b$e;)Lcom/google/android/exoplayer2/source/SampleQueue;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->c:Lcom/google/android/exoplayer2/source/SampleQueue;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->a:Lcom/google/android/exoplayer2/source/rtsp/b$d;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/b$d;->b(Lcom/google/android/exoplayer2/source/rtsp/b$d;)Lcom/google/android/exoplayer2/source/rtsp/RtpDataLoadable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtpDataLoadable;->cancelLoad()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->d:Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->f:Lcom/google/android/exoplayer2/source/rtsp/b;

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/rtsp/b;->t(Lcom/google/android/exoplayer2/source/rtsp/b;)V

    :cond_0
    return-void
.end method

.method public d()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->c:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->c:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->d:Z

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->isReady(Z)Z

    move-result p0

    return p0
.end method

.method public f(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->c:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->d:Z

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    move-result p0

    return p0
.end method

.method public g()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->release()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->c:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->release()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->e:Z

    return-void
.end method

.method public h(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->a:Lcom/google/android/exoplayer2/source/rtsp/b$d;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/b$d;->b(Lcom/google/android/exoplayer2/source/rtsp/b$d;)Lcom/google/android/exoplayer2/source/rtsp/RtpDataLoadable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtpDataLoadable;->c()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->c:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->c:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->setStartTimeUs(J)V

    :cond_0
    return-void
.end method

.method public i(J)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->c:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->d:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getSkipCount(JZ)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->c:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->skip(I)V

    return p1
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->a:Lcom/google/android/exoplayer2/source/rtsp/b$d;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/b$d;->b(Lcom/google/android/exoplayer2/source/rtsp/b$d;)Lcom/google/android/exoplayer2/source/rtsp/RtpDataLoadable;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/b$e;->f:Lcom/google/android/exoplayer2/source/rtsp/b;

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/rtsp/b;->s(Lcom/google/android/exoplayer2/source/rtsp/b;)Lcom/google/android/exoplayer2/source/rtsp/b$b;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    return-void
.end method
