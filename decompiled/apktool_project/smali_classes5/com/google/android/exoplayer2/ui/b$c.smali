.class public Lcom/google/android/exoplayer2/ui/b$c;
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
.field public final synthetic e:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

.field public final synthetic f:Lcom/google/android/exoplayer2/ui/b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/b;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/b$c;->f:Lcom/google/android/exoplayer2/ui/b;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/b$c;->e:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/b$c;->f:Lcom/google/android/exoplayer2/ui/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/b;->s(Lcom/google/android/exoplayer2/ui/b;I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/b$c;->f:Lcom/google/android/exoplayer2/ui/b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/b;->t(Lcom/google/android/exoplayer2/ui/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/b$c;->e:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/b$c;->f:Lcom/google/android/exoplayer2/ui/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/b;->v(Lcom/google/android/exoplayer2/ui/b;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/b$c;->f:Lcom/google/android/exoplayer2/ui/b;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/b;->u(Lcom/google/android/exoplayer2/ui/b;Z)Z

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/b$c;->f:Lcom/google/android/exoplayer2/ui/b;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/b;->s(Lcom/google/android/exoplayer2/ui/b;I)V

    return-void
.end method
