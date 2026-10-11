.class public final Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->p(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Lcom/google/android/exoplayer2/Player;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeatureResourceAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeatureResourceAdapter.kt\ncom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,215:1\n256#2,2:216\n256#2,2:218\n*S KotlinDebug\n*F\n+ 1 FeatureResourceAdapter.kt\ncom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1\n*L\n154#1:216,2\n155#1:218,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1",
        "Lcom/google/android/exoplayer2/Player$Listener;",
        "onIsPlayingChanged",
        "",
        "isPlaying",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFeatureResourceAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeatureResourceAdapter.kt\ncom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,215:1\n256#2,2:216\n256#2,2:218\n*S KotlinDebug\n*F\n+ 1 FeatureResourceAdapter.kt\ncom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1\n*L\n154#1:216,2\n155#1:218,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

.field public final synthetic f:Lcom/google/android/exoplayer2/Player;

.field public final synthetic g:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

.field public final synthetic h:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;Lcom/google/android/exoplayer2/Player;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1;->e:Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    iput-object p2, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1;->f:Lcom/google/android/exoplayer2/Player;

    iput-object p3, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1;->g:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

    iput-object p4, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1;->h:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsPlayingChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onIsPlayingChanged(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1;->e:Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->playerTimeBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    iget-object v1, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1;->f:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setDuration(J)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1;->e:Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->playerTimeBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    iget-object v1, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1;->f:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setPosition(J)V

    if-eqz p1, :cond_0

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->ic_player_pause:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/onyx/galaxy/note/R$drawable;->ic_player_play:I

    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1;->e:Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->ivPlay:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1;->e:Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->tvDuration:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvDuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1;->e:Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->ivPlayerVolume:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivPlayerVolume"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1;->g:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1;->h:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1;->f:Lcom/google/android/exoplayer2/Player;

    invoke-static {p1, v0, p0}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->access$updateVolumeIcon(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method
