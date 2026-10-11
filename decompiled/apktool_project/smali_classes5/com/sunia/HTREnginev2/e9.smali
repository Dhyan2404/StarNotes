.class public final synthetic Lcom/sunia/HTREnginev2/e9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

.field public final synthetic f:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e9;->e:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/e9;->f:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/e9;->e:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e9;->f:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->d(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V

    return-void
.end method
