.class public final synthetic Lcom/sunia/HTREnginev2/llj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/b;

.field public final synthetic f:Lcom/google/common/collect/ImmutableList$Builder;

.field public final synthetic g:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/b;Lcom/google/common/collect/ImmutableList$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/llj;->e:Lcom/google/android/exoplayer2/b;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/llj;->f:Lcom/google/common/collect/ImmutableList$Builder;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/llj;->g:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/llj;->e:Lcom/google/android/exoplayer2/b;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/llj;->f:Lcom/google/common/collect/ImmutableList$Builder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/llj;->g:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-static {v0, v1, p0}, Lcom/google/android/exoplayer2/b;->a(Lcom/google/android/exoplayer2/b;Lcom/google/common/collect/ImmutableList$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method
