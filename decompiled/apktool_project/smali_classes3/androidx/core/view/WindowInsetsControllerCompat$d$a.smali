.class public Landroidx/core/view/WindowInsetsControllerCompat$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/WindowInsetsControllerCompat$d;->b(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroidx/core/view/WindowInsetsAnimationControllerCompat;

.field public final synthetic b:Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

.field public final synthetic c:Landroidx/core/view/WindowInsetsControllerCompat$d;


# direct methods
.method public constructor <init>(Landroidx/core/view/WindowInsetsControllerCompat$d;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d$a;->c:Landroidx/core/view/WindowInsetsControllerCompat$d;

    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$d$a;->b:Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d$a;->a:Landroidx/core/view/WindowInsetsAnimationControllerCompat;

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1
    .param p1    # Landroid/view/WindowInsetsAnimationController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d$a;->b:Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d$a;->a:Landroidx/core/view/WindowInsetsAnimationControllerCompat;

    :goto_0
    invoke-interface {v0, p0}, Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;->onCancelled(Landroidx/core/view/WindowInsetsAnimationControllerCompat;)V

    return-void
.end method

.method public onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0
    .param p1    # Landroid/view/WindowInsetsAnimationController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d$a;->b:Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    iget-object p0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d$a;->a:Landroidx/core/view/WindowInsetsAnimationControllerCompat;

    invoke-interface {p1, p0}, Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;->onFinished(Landroidx/core/view/WindowInsetsAnimationControllerCompat;)V

    return-void
.end method

.method public onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 1
    .param p1    # Landroid/view/WindowInsetsAnimationController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsAnimationControllerCompat;-><init>(Landroid/view/WindowInsetsAnimationController;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d$a;->a:Landroidx/core/view/WindowInsetsAnimationControllerCompat;

    iget-object p0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d$a;->b:Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    invoke-interface {p0, v0, p2}, Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;->onReady(Landroidx/core/view/WindowInsetsAnimationControllerCompat;I)V

    return-void
.end method
