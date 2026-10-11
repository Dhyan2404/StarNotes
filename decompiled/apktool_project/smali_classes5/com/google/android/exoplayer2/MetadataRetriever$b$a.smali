.class public final Lcom/google/android/exoplayer2/MetadataRetriever$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MetadataRetriever$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;
    }
.end annotation


# static fields
.field public static final i:I = 0x64


# instance fields
.field public final e:Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;

.field public f:Lcom/google/android/exoplayer2/source/MediaSource;

.field public g:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field public final synthetic h:Lcom/google/android/exoplayer2/MetadataRetriever$b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MetadataRetriever$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->h:Lcom/google/android/exoplayer2/MetadataRetriever$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;-><init>(Lcom/google/android/exoplayer2/MetadataRetriever$b$a;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->e:Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/MetadataRetriever$b$a;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->g:Lcom/google/android/exoplayer2/source/MediaPeriod;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/MetadataRetriever$b$a;Lcom/google/android/exoplayer2/source/MediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->g:Lcom/google/android/exoplayer2/source/MediaPeriod;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const/4 p1, 0x3

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->g:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->f:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->g:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->f:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->e:Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->h:Lcom/google/android/exoplayer2/MetadataRetriever$b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/MetadataRetriever$b;->b(Lcom/google/android/exoplayer2/MetadataRetriever$b;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->h:Lcom/google/android/exoplayer2/MetadataRetriever$b;

    invoke-static {p0}, Lcom/google/android/exoplayer2/MetadataRetriever$b;->d(Lcom/google/android/exoplayer2/MetadataRetriever$b;)Landroid/os/HandlerThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return v2

    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->g:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    return v2

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->g:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->f:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->h:Lcom/google/android/exoplayer2/MetadataRetriever$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/MetadataRetriever$b;->b(Lcom/google/android/exoplayer2/MetadataRetriever$b;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessageDelayed(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->h:Lcom/google/android/exoplayer2/MetadataRetriever$b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/MetadataRetriever$b;->c(Lcom/google/android/exoplayer2/MetadataRetriever$b;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->h:Lcom/google/android/exoplayer2/MetadataRetriever$b;

    invoke-static {p0}, Lcom/google/android/exoplayer2/MetadataRetriever$b;->b(Lcom/google/android/exoplayer2/MetadataRetriever$b;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    :goto_1
    return v2

    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/MediaItem;

    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->h:Lcom/google/android/exoplayer2/MetadataRetriever$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/MetadataRetriever$b;->a(Lcom/google/android/exoplayer2/MetadataRetriever$b;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->f:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->e:Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;

    sget-object v3, Lcom/google/android/exoplayer2/analytics/PlayerId;->UNSET:Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-interface {p1, v0, v1, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->h:Lcom/google/android/exoplayer2/MetadataRetriever$b;

    invoke-static {p0}, Lcom/google/android/exoplayer2/MetadataRetriever$b;->b(Lcom/google/android/exoplayer2/MetadataRetriever$b;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return v2
.end method
