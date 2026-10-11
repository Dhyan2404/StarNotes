.class public final Lcom/onyx/galaxy/note/category/view/SlideLayout$animator$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/SlideLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/category/view/SlideLayout$animator$1$2",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationStart",
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


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/SlideLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/SlideLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$animator$1$2;->e:Lcom/onyx/galaxy/note/category/view/SlideLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$animator$1$2;->e:Lcom/onyx/galaxy/note/category/view/SlideLayout;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->access$endTransientState(Lcom/onyx/galaxy/note/category/view/SlideLayout;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$animator$1$2;->e:Lcom/onyx/galaxy/note/category/view/SlideLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->access$getListener$p(Lcom/onyx/galaxy/note/category/view/SlideLayout;)Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$animator$1$2;->e:Lcom/onyx/galaxy/note/category/view/SlideLayout;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->access$startTransientState(Lcom/onyx/galaxy/note/category/view/SlideLayout;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$animator$1$2;->e:Lcom/onyx/galaxy/note/category/view/SlideLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->access$getListener$p(Lcom/onyx/galaxy/note/category/view/SlideLayout;)Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;->onAnimationStart()V

    :cond_0
    return-void
.end method
