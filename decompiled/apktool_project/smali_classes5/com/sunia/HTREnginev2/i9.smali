.class public final synthetic Lcom/sunia/HTREnginev2/i9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

.field public final synthetic f:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/i9;->e:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/i9;->f:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/i9;->e:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i9;->f:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->a(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    return-void
.end method
