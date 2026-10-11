.class public final Lcom/google/android/exoplayer2/MetadataRetriever$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MetadataRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MetadataRetriever$b$a;
    }
.end annotation


# static fields
.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

.field public final b:Landroid/os/HandlerThread;

.field public final c:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field public final d:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/util/Clock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b;->a:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ExoPlayer:MetadataRetriever"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b;->b:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;-><init>(Lcom/google/android/exoplayer2/MetadataRetriever$b;)V

    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b;->c:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b;->d:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/MetadataRetriever$b;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b;->a:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/MetadataRetriever$b;)Lcom/google/android/exoplayer2/util/HandlerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b;->c:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/MetadataRetriever$b;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b;->d:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/MetadataRetriever$b;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b;->b:Landroid/os/HandlerThread;

    return-object p0
.end method


# virtual methods
.method public e(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b;->c:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b;->d:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p0
.end method
