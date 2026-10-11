.class public final synthetic Lcom/sunia/HTREnginev2/z9g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/ExoPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/z9g;->e:Lcom/google/android/exoplayer2/ExoPlayer;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/z9g;->e:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->m(Lcom/google/android/exoplayer2/ExoPlayer;Landroid/view/View;)V

    return-void
.end method
