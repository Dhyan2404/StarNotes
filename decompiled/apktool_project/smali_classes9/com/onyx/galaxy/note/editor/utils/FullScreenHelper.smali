.class public final Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFullScreenHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullScreenHelper.kt\ncom/onyx/galaxy/note/editor/utils/FullScreenHelper\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,180:1\n41#2:181\n91#2,14:182\n30#2:196\n91#2,14:197\n30#2:211\n91#2,14:212\n256#3,2:226\n254#3:228\n256#3,2:229\n254#3:231\n*S KotlinDebug\n*F\n+ 1 FullScreenHelper.kt\ncom/onyx/galaxy/note/editor/utils/FullScreenHelper\n*L\n56#1:181\n56#1:182,14\n59#1:196\n59#1:197,14\n114#1:211\n114#1:212,14\n140#1:226,2\n145#1:228\n146#1:229,2\n151#1:231\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u0018\u00a2\u0006\u0004\u00083\u00104J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u000b\u001a\u00020\tH\u0002J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u000e\u001a\u00020\tH\u0002J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0012\u001a\u00020\u0004H\u0002J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002J\u0008\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0017\u001a\u00020\u0004H\u0002R\u0017\u0010\u001d\u001a\u00020\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010$\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010#R\u0018\u0010\'\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010&R\u001b\u0010+\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010(\u001a\u0004\u0008)\u0010*R\u001b\u0010-\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010(\u001a\u0004\u0008,\u0010*R\u001b\u00102\u001a\u00020.8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u0010(\u001a\u0004\u00080\u00101\u00a8\u00065"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenEvent;",
        "event",
        "",
        "onFullScreen",
        "",
        "isSupportTouchEdit",
        "",
        "Landroid/animation/Animator;",
        "p",
        "d",
        "h",
        "q",
        "e",
        "f",
        "o",
        "t",
        "k",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "j",
        "r",
        "s",
        "c",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "a",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "getScribbleFragment",
        "()Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "scribbleFragment",
        "",
        "b",
        "J",
        "animatorDuration",
        "",
        "I",
        "titleHeight",
        "Landroid/animation/AnimatorSet;",
        "Landroid/animation/AnimatorSet;",
        "fullScreenAnimator",
        "Lkotlin/Lazy;",
        "m",
        "()I",
        "fullScreenSize",
        "l",
        "fullScreenMargin",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;",
        "g",
        "n",
        "()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;",
        "toolDragView",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V",
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
        "SMAP\nFullScreenHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullScreenHelper.kt\ncom/onyx/galaxy/note/editor/utils/FullScreenHelper\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,180:1\n41#2:181\n91#2,14:182\n30#2:196\n91#2,14:197\n30#2:211\n91#2,14:212\n256#3,2:226\n254#3:228\n256#3,2:229\n254#3:231\n*S KotlinDebug\n*F\n+ 1 FullScreenHelper.kt\ncom/onyx/galaxy/note/editor/utils/FullScreenHelper\n*L\n56#1:181\n56#1:182,14\n59#1:196\n59#1:197,14\n114#1:211\n114#1:212,14\n140#1:226,2\n145#1:228\n146#1:229,2\n151#1:231\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:J

.field public c:I

.field public d:Landroid/animation/AnimatorSet;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "scribbleFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->b:J

    sget-object p1, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper$fullScreenSize$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper$fullScreenSize$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->e:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper$fullScreenMargin$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper$fullScreenMargin$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->f:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper$toolDragView$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper$toolDragView$2;-><init>(Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->g:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->g(Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$onFullScreenAnimationBegin(Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->r()V

    return-void
.end method

.method public static final synthetic access$onFullScreenAnimationEnd(Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->s(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->i(Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->n()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->updateFullScreenVisible(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->n()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->isDragging()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->n()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->flushUI()V

    :cond_1
    return-void
.end method

.method public static final i(Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->n()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->updateFullScreenVisible(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->n()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->isDragging()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->n()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->flushUI()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->d:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public final d()Landroid/animation/Animator;
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->editTitleLayout:Landroid/widget/LinearLayout;

    const-string v1, "editTitleLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->c:I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/onyx/galaxy/note/editor/utils/ViewAnimatorExtensionsKt;->heightAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final e()Landroid/animation/Animator;
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->editTitleLayout:Landroid/widget/LinearLayout;

    const-string v1, "editTitleLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->c:I

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/utils/ViewAnimatorExtensionsKt;->heightAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper$createTitleExpandAnimator$lambda$9$$inlined$doOnEnd$1;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper$createTitleExpandAnimator$lambda$9$$inlined$doOnEnd$1;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {p0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method

.method public final f()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->n()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->ivFullScreen:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivFullScreen"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/onyx/galaxy/note/editor/utils/MarginDirection;->RIGHT:Lcom/onyx/galaxy/note/editor/utils/MarginDirection;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->l()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/onyx/galaxy/note/editor/utils/ViewAnimatorExtensionsKt;->marginAnimator(Landroid/view/View;Lcom/onyx/galaxy/note/editor/utils/MarginDirection;II)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->m()I

    move-result v2

    invoke-static {v0, v2, v4}, Lcom/onyx/galaxy/note/editor/utils/ViewAnimatorExtensionsKt;->resizeAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/owg;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/owg;-><init>(Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final getScribbleFragment()Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    return-object p0
.end method

.method public final h()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->n()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->ivFullScreen:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivFullScreen"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/onyx/galaxy/note/editor/utils/MarginDirection;->RIGHT:Lcom/onyx/galaxy/note/editor/utils/MarginDirection;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->l()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Lcom/onyx/galaxy/note/editor/utils/ViewAnimatorExtensionsKt;->marginAnimator(Landroid/view/View;Lcom/onyx/galaxy/note/editor/utils/MarginDirection;II)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->m()I

    move-result v2

    invoke-static {v0, v4, v2}, Lcom/onyx/galaxy/note/editor/utils/ViewAnimatorExtensionsKt;->resizeAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/nwg;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/nwg;-><init>(Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final j()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    return-object p0
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->editTitleLayout:Landroid/widget/LinearLayout;

    const-string v1, "editTitleLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->editTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->editTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->c:I

    :cond_1
    return-void
.end method

.method public final l()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final m()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final n()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    return-object p0
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->n()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->n()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->n()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onFullScreen(Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->k()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->c()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->Companion:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;->getCurrentTouchModeFeature()Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;->supportEdit()Z

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenEvent;->isEnter()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->p(Z)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->q(Z)Ljava/util/List;

    move-result-object p1

    :goto_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-wide v2, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->b:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->d:Landroid/animation/AnimatorSet;

    new-instance p1, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper$onFullScreen$lambda$2$$inlined$doOnStart$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper$onFullScreen$lambda$2$$inlined$doOnStart$1;-><init>(Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper$onFullScreen$lambda$2$$inlined$doOnEnd$1;

    invoke-direct {p1, p0, v0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper$onFullScreen$lambda$2$$inlined$doOnEnd$1;-><init>(Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;Z)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final p(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->d()Landroid/animation/Animator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->h()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getFullScreenView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, p1, v1}, Lcom/onyx/galaxy/note/editor/utils/ViewAnimatorExtensionsKt;->fadeInAnimator$default(Landroid/view/View;FFILjava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public final q(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->e()Landroid/animation/Animator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->f()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getFullScreenView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, p1, v1}, Lcom/onyx/galaxy/note/editor/utils/ViewAnimatorExtensionsKt;->fadeOutAnimator$default(Landroid/view/View;FFILjava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public final r()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->o()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->j()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxByFullScreenEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxByFullScreenEvent;-><init>(Z)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->t(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->j()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxByFullScreenEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxByFullScreenEvent;-><init>(Z)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->j()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/common/events/ResetPenBoxPositionEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/common/events/ResetPenBoxPositionEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenAnimEndEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenAnimEndEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final t(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->n()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
