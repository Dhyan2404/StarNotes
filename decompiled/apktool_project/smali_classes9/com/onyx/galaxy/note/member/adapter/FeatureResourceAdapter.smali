.class public final Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$Companion;,
        Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/galaxy/note/member/data/FeatureResource;",
        "Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeatureResourceAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeatureResourceAdapter.kt\ncom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,215:1\n256#2,2:216\n256#2,2:218\n256#2,2:221\n256#2,2:223\n256#2,2:225\n256#2,2:227\n1#3:220\n*S KotlinDebug\n*F\n+ 1 FeatureResourceAdapter.kt\ncom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter\n*L\n55#1:216,2\n56#1:218,2\n135#1:221,2\n136#1:223,2\n198#1:225,2\n128#1:227,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\t\u0018\u0000 52\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u000256B\u0007\u00a2\u0006\u0004\u00083\u00104J&\u0010\t\u001a\u00020\u00082\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u000f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014J\u000e\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0008J\u0006\u0010\u0014\u001a\u00020\u0008J\u001c\u0010\u0017\u001a\u00020\u00082\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0014\u0010\u0018\u001a\u00020\u00082\n\u0010\u0004\u001a\u00060\u0003R\u00020\u0000H\u0002J$\u0010\u001b\u001a\u00020\u00082\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u001c\u0010\u001c\u001a\u00020\u00082\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u001c\u0010\u001d\u001a\u00020\u00082\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u001c\u0010\u001e\u001a\u00020\u00082\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0008\u0010 \u001a\u00020\u001fH\u0002J\u0008\u0010\"\u001a\u00020!H\u0002R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u00100\u001a\u00020.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010/R\u0016\u00102\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u00101\u00a8\u00067"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/galaxy/note/member/data/FeatureResource;",
        "Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;",
        "holder",
        "",
        "position",
        "item",
        "",
        "onBindViewHolder",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "Lcom/onyx/galaxy/note/member/data/Feature;",
        "feature",
        "updateFeatureResource",
        "pausePlayer",
        "stopPlayer",
        "",
        "url",
        "q",
        "w",
        "Lcom/google/android/exoplayer2/Player;",
        "player",
        "p",
        "x",
        "y",
        "u",
        "Lcom/google/android/exoplayer2/ExoPlayer;",
        "o",
        "",
        "v",
        "Lcom/google/android/exoplayer2/Player$Listener;",
        "r",
        "Lcom/google/android/exoplayer2/Player$Listener;",
        "playerListener",
        "s",
        "Lcom/google/android/exoplayer2/ExoPlayer;",
        "exoPlayer",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "t",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "timerDisposable",
        "",
        "J",
        "lastTouchControlTime",
        "Ljava/lang/String;",
        "resourceType",
        "<init>",
        "()V",
        "Companion",
        "ItemViewHolder",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFeatureResourceAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeatureResourceAdapter.kt\ncom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,215:1\n256#2,2:216\n256#2,2:218\n256#2,2:221\n256#2,2:223\n256#2,2:225\n256#2,2:227\n1#3:220\n*S KotlinDebug\n*F\n+ 1 FeatureResourceAdapter.kt\ncom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter\n*L\n55#1:216,2\n56#1:218,2\n135#1:221,2\n136#1:223,2\n198#1:225,2\n128#1:227,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PLAYER_CONTROL_SHOW_TIME:I = 0x1388

.field public static final TYPE_VIDEO:Ljava/lang/String; = "video"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public r:Lcom/google/android/exoplayer2/Player$Listener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Lcom/google/android/exoplayer2/ExoPlayer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:J

.field public v:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->Companion:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->v:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$hidePlayerVideoControl(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->u(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method public static final synthetic access$updateVolumeIcon(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->y(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method public static synthetic l(Lcom/google/android/exoplayer2/ExoPlayer;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->s(Lcom/google/android/exoplayer2/ExoPlayer;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/google/android/exoplayer2/ExoPlayer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->r(Lcom/google/android/exoplayer2/ExoPlayer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->t(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;Landroid/view/View;)V

    return-void
.end method

.method public static final r(Lcom/google/android/exoplayer2/ExoPlayer;Landroid/view/View;)V
    .locals 2

    const-string p1, "$player"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->pause()V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->play()V

    :goto_0
    return-void
.end method

.method public static final s(Lcom/google/android/exoplayer2/ExoPlayer;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 1

    const-string p3, "$player"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getVolume()F

    move-result p3

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-interface {p0, p3}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    goto :goto_1

    :cond_1
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    :goto_1
    invoke-virtual {p1, p2, p0}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->y(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$binding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->u:J

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->clyControl:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string p1, "clyControl"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final o()Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->s:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/source/MediaSource$Factory;)V

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->s:Lcom/google/android/exoplayer2/ExoPlayer;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/member/data/FeatureResource;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;ILcom/onyx/galaxy/note/member/data/FeatureResource;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;ILcom/onyx/galaxy/note/member/data/FeatureResource;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/member/data/FeatureResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/onyx/galaxy/note/member/data/FeatureResource;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    const-string p2, ""

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->v()Z

    move-result p3

    .line 4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->flyPlayer:Landroid/widget/FrameLayout;

    const-string v1, "flyPlayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 5
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->ivResource:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v3, "ivResource"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 7
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->v()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->q(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->ivResource:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/glide/GlideApp;->with(Landroid/view/View;)Lcom/onyx/galaxy/note/common/glide/GlideRequests;

    move-result-object p0

    .line 11
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/glide/GlideRequests;->load(Ljava/lang/String;)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p0

    .line 12
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->ivResource:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "parent"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;-><init>(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;)V

    return-object p2
.end method

.method public final p(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Lcom/google/android/exoplayer2/Player;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1;

    invoke-direct {v1, v0, p2, p0, p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handlePlayer$listener$1;-><init>(Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;Lcom/google/android/exoplayer2/Player;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->r:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const-string v2, "playerView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    invoke-static {p3}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/google/android/exoplayer2/Player;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    invoke-interface {p2, v1}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    invoke-interface {p2}, Lcom/google/android/exoplayer2/Player;->prepare()V

    invoke-interface {p2}, Lcom/google/android/exoplayer2/Player;->play()V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->x(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method public final pausePlayer()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->s:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->pause()V

    :cond_0
    return-void
.end method

.method public final q(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->o()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v3

    iget-object v4, v2, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->playerTimeBar:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    new-instance v5, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handleVideo$1;

    invoke-direct {v5, v3}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$handleVideo$1;-><init>(Lcom/google/android/exoplayer2/ExoPlayer;)V

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->addListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V

    iget-object v6, v2, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->ivPlay:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v4, "ivPlay"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    new-instance v9, Lcom/sunia/HTREnginev2/z9g;

    invoke-direct {v9, v3}, Lcom/sunia/HTREnginev2/z9g;-><init>(Lcom/google/android/exoplayer2/ExoPlayer;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v12, v2, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->ivPlayerVolume:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v4, "ivPlayerVolume"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v13, 0x0

    new-instance v15, Lcom/sunia/HTREnginev2/aag;

    invoke-direct {v15, v3, v0, v1}, Lcom/sunia/HTREnginev2/aag;-><init>(Lcom/google/android/exoplayer2/ExoPlayer;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;)V

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v4, v2, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->flyPlayer:Landroid/widget/FrameLayout;

    const-string v5, "flyPlayer"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/sunia/HTREnginev2/bag;

    invoke-direct {v7, v0, v2}, Lcom/sunia/HTREnginev2/bag;-><init>(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->w(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;)V

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v3, v2}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->p(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Lcom/google/android/exoplayer2/Player;Ljava/lang/String;)V

    return-void
.end method

.method public final stopPlayer()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->r:Lcom/google/android/exoplayer2/Player$Listener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->s:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->s:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->t:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_2
    return-void
.end method

.method public final u(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Lcom/google/android/exoplayer2/Player;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->u:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    invoke-interface {p2}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->clyControl:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string p1, "clyControl"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateFeatureResource(Lcom/onyx/galaxy/note/member/data/Feature;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/member/data/Feature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "feature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->stopPlayer()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/data/Feature;->getResourceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->v:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/data/Feature;->getResources()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final v()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->v:Ljava/lang/String;

    const-string v0, "video"

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final w(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->tvDuration:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "tvDuration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->ivPlayerVolume:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivPlayerVolume"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->u:J

    return-void
.end method

.method public final x(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Lcom/google/android/exoplayer2/Player;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->t:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2, v1, v2, v0}, Lio/reactivex/rxjava3/core/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$a;

    invoke-direct {v1, p1, p2, p0}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$a;-><init>(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Lcom/google/android/exoplayer2/Player;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->t:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final y(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    invoke-interface {p2}, Lcom/google/android/exoplayer2/Player;->getVolume()F

    move-result p0

    const/4 p2, 0x0

    cmpg-float p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ic_player_volume_off:I

    goto :goto_1

    :cond_1
    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ic_player_volume_up:I

    :goto_1
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;->ivPlayerVolume:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    return-void
.end method
