.class public final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;->b:J

    iput-wide p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;->c:J

    iput-boolean p6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;->d:Z

    iput-boolean p7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;->e:Z

    iput-boolean p8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$e;->f:Z

    return-void
.end method
