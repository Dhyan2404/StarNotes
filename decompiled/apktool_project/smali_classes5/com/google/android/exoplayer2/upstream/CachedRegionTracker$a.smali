.class public Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$a;",
        ">;"
    }
.end annotation


# instance fields
.field public e:J

.field public f:J

.field public g:I


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$a;->e:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$a;->f:J

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$a;)I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$a;->e:J

    iget-wide p0, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$a;->e:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/exoplayer2/util/Util;->compareLong(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$a;->a(Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$a;)I

    move-result p0

    return p0
.end method
