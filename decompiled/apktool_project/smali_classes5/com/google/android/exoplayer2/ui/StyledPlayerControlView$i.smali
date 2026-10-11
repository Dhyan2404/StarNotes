.class public final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/TracksInfo;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/TracksInfo;->getTrackGroupInfos()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;->a:Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    iput p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;->b:I

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;->a:Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    iget p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;->b:I

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->isTrackSelected(I)Z

    move-result p0

    return p0
.end method
