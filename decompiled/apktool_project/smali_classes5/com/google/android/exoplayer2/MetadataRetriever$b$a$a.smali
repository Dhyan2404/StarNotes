.class public final Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MetadataRetriever$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a$a;
    }
.end annotation


# instance fields
.field public final e:Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a$a;

.field public final f:Lcom/google/android/exoplayer2/upstream/Allocator;

.field public g:Z

.field public final synthetic h:Lcom/google/android/exoplayer2/MetadataRetriever$b$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MetadataRetriever$b$a;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;->h:Lcom/google/android/exoplayer2/MetadataRetriever$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a$a;-><init>(Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;Lcom/google/android/exoplayer2/MetadataRetriever$a;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;->e:Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a$a;

    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/4 v0, 0x1

    const/high16 v1, 0x10000

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;->f:Lcom/google/android/exoplayer2/upstream/Allocator;

    return-void
.end method


# virtual methods
.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;->g:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;->h:Lcom/google/android/exoplayer2/MetadataRetriever$b$a;

    new-instance v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;->f:Lcom/google/android/exoplayer2/upstream/Allocator;

    const-wide/16 v2, 0x0

    invoke-interface {p1, v1, p2, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->b(Lcom/google/android/exoplayer2/MetadataRetriever$b$a;Lcom/google/android/exoplayer2/source/MediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;->h:Lcom/google/android/exoplayer2/MetadataRetriever$b$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/MetadataRetriever$b$a;->a(Lcom/google/android/exoplayer2/MetadataRetriever$b$a;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a;->e:Lcom/google/android/exoplayer2/MetadataRetriever$b$a$a$a;

    invoke-interface {p1, p0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    return-void
.end method
