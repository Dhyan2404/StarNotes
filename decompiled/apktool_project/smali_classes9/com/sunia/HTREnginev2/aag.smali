.class public final synthetic Lcom/sunia/HTREnginev2/aag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/ExoPlayer;

.field public final synthetic f:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

.field public final synthetic g:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayer;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/aag;->e:Lcom/google/android/exoplayer2/ExoPlayer;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/aag;->f:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/aag;->g:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/aag;->e:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/aag;->f:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/aag;->g:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->l(Lcom/google/android/exoplayer2/ExoPlayer;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter$ItemViewHolder;Landroid/view/View;)V

    return-void
.end method
