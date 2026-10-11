.class public Lcom/google/android/exoplayer2/ui/b$i;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/ui/b;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/ui/b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/b$i;->e:Lcom/google/android/exoplayer2/ui/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/b$i;->e:Lcom/google/android/exoplayer2/ui/b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/b;->w(Lcom/google/android/exoplayer2/ui/b;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/b$i;->e:Lcom/google/android/exoplayer2/ui/b;

    invoke-static {p0}, Lcom/google/android/exoplayer2/ui/b;->w(Lcom/google/android/exoplayer2/ui/b;)Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/b$i;->e:Lcom/google/android/exoplayer2/ui/b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/b;->x(Lcom/google/android/exoplayer2/ui/b;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/b$i;->e:Lcom/google/android/exoplayer2/ui/b;

    invoke-static {p0}, Lcom/google/android/exoplayer2/ui/b;->x(Lcom/google/android/exoplayer2/ui/b;)Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
