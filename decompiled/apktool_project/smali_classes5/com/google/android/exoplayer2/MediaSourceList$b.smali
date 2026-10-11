.class public final Lcom/google/android/exoplayer2/MediaSourceList$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/MediaSource;

.field public final b:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

.field public final c:Lcom/google/android/exoplayer2/MediaSourceList$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/MediaSourceList$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$b;->a:Lcom/google/android/exoplayer2/source/MediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$b;->b:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaSourceList$b;->c:Lcom/google/android/exoplayer2/MediaSourceList$a;

    return-void
.end method
