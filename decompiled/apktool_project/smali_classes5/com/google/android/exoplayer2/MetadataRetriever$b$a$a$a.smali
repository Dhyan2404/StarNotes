.class public final Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a$a;->e:Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;Lcom/google/android/exoplayer2/MetadataRetriever$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a$a;-><init>(Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a$a;->e:Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;->h:Lcom/google/android/exoplayer2/MetadataRetriever$b$a;

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->h:Lcom/google/android/exoplayer2/MetadataRetriever$b;

    invoke-static {p0}, Lcom/google/android/exoplayer2/MetadataRetriever$b;->b(Lcom/google/android/exoplayer2/MetadataRetriever$b;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p0

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a$a;->a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a$a;->e:Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;->h:Lcom/google/android/exoplayer2/MetadataRetriever$b$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->h:Lcom/google/android/exoplayer2/MetadataRetriever$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/MetadataRetriever$b;->c(Lcom/google/android/exoplayer2/MetadataRetriever$b;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a$a;->e:Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;->h:Lcom/google/android/exoplayer2/MetadataRetriever$b$a;

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->h:Lcom/google/android/exoplayer2/MetadataRetriever$b;

    invoke-static {p0}, Lcom/google/android/exoplayer2/MetadataRetriever$b;->b(Lcom/google/android/exoplayer2/MetadataRetriever$b;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p0

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method
