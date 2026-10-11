.class public final Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;
.super Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteOutlineDragContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOutlineDragContainer.kt\ncom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,318:1\n326#2,4:319\n91#3,14:323\n378#4,7:337\n378#4,7:344\n*S KotlinDebug\n*F\n+ 1 NoteOutlineDragContainer.kt\ncom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer\n*L\n202#1:319,4\n236#1:323,14\n285#1:337,7\n295#1:344,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002:\u0001JB\u0019\u0012\u0006\u0010E\u001a\u00020D\u0012\u0008\u0010G\u001a\u0004\u0018\u00010F\u00a2\u0006\u0004\u0008H\u0010IJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J0\u0010\r\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003H\u0014J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0015\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013J\u0006\u0010\u0016\u001a\u00020\u0003J\u000e\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0003J\u000e\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0003J\u0014\u0010\u001d\u001a\u00020\u00052\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001bJ\u000e\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0003J\u0006\u0010\u001f\u001a\u00020\u0005J\u000e\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0007J\u000e\u0010\"\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0007J\u0010\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u000eH\u0002J\u0008\u0010%\u001a\u00020\u0005H\u0002J\u0008\u0010&\u001a\u00020\u0007H\u0002J\u0010\u0010\'\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0016\u0010*\u001a\u00020\u00052\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00050(H\u0002J\u0016\u0010+\u001a\u00020\u00052\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00050(H\u0002J\u0018\u0010.\u001a\u00020\u00032\u0006\u0010,\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H\u0002J\u0010\u0010/\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003H\u0002J\u0010\u00100\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003H\u0002J\u0010\u00101\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0003H\u0002R\u0014\u00103\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u00102R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0016\u00109\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u00108R\u0016\u0010:\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00108R\u0016\u0010;\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00108R\u0016\u0010<\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u00108R\u0016\u0010=\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00108R\u001c\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00030>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010?R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010AR\u0016\u0010C\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u00108\u00a8\u0006K"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;",
        "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;",
        "Landroid/view/View$OnTouchListener;",
        "",
        "gravity",
        "",
        "setDragViewGravity",
        "",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "Landroid/view/View;",
        "v",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouch",
        "Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;",
        "callback",
        "setCallback",
        "getCurrentLevel",
        "threshold",
        "setCollapseThreshold",
        "width",
        "setMaxDraggableWidth",
        "",
        "sizeList",
        "setAdjustableSizeList",
        "setDefaultWidth",
        "reset",
        "enable",
        "setEnableDrag",
        "setDragViewLocation",
        "imageView",
        "e",
        "m",
        "o",
        "p",
        "Lkotlin/Function0;",
        "onAnimationEnd",
        "f",
        "h",
        "newWidth",
        "offsetX",
        "j",
        "l",
        "k",
        "n",
        "Landroid/view/View;",
        "dragView",
        "Landroid/graphics/PointF;",
        "i",
        "Landroid/graphics/PointF;",
        "downPoint",
        "I",
        "downViewWidth",
        "downViewX",
        "defaultWidth",
        "collapseThreshold",
        "maxDraggableWidth",
        "",
        "Ljava/util/List;",
        "adjustableSizeList",
        "Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;",
        "q",
        "currentLevel",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attributeSet",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Callback",
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
        "SMAP\nNoteOutlineDragContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOutlineDragContainer.kt\ncom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,318:1\n326#2,4:319\n91#3,14:323\n378#4,7:337\n378#4,7:344\n*S KotlinDebug\n*F\n+ 1 NoteOutlineDragContainer.kt\ncom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer\n*L\n202#1:319,4\n236#1:323,14\n285#1:337,7\n295#1:344,7\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->i:Landroid/graphics/PointF;

    const/16 p2, 0x14

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->m:I

    const p2, 0x7fffffff

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->n:I

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Integer;

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->o:Ljava/util/List;

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->icon_outline_drag:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_4:I

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p1

    invoke-virtual {p2, v1, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->e(Landroid/view/View;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->h:Landroid/view/View;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->m()V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->p:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;

    return-object p0
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->i(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->g(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->q(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Landroid/animation/ValueAnimator;)V
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

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutWidth(Landroid/view/View;I)V

    return-void
.end method

.method public static final i(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->p:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->l:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-interface {v0, p0}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;->onTranslate(F)V

    :cond_0
    return-void
.end method

.method public static final q(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    :cond_0
    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    :cond_1
    return-void
.end method

.method private final setDragViewGravity(I)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->p(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v1, v2, p1, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final e(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final f(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->h(Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->o:Ljava/util/List;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->q:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->side_bar_drag_animation_duration:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sunia/HTREnginev2/azj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/azj;-><init>(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$animateSatisfyWidthToCurrent$$inlined$addListener$default$1;

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$animateSatisfyWidthToCurrent$$inlined$addListener$default$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final getCurrentLevel()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->q:I

    return p0
.end method

.method public final h(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/bzj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bzj;-><init>(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$animateTranslateToDefault$2;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$animateTranslateToDefault$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$integer;->side_bar_drag_animation_duration:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final j(II)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v0, :cond_0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->q:I

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->k(I)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->l(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final k(I)I
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->n(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v2

    return p0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lt p1, v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    goto :goto_1

    :cond_4
    const/4 p0, -0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final l(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->n(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-le p1, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final n(I)Z
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final o()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->p(I)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->o()Z

    move-result p1

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->toSignInteger(Ljava/lang/Boolean;)I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_7

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->i:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v0

    float-to-int p2, p2

    mul-int/2addr p2, p1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->j:I

    sub-int/2addr v0, p2

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->o:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-gt v0, v4, :cond_b

    if-le v0, v2, :cond_2

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->n:I

    if-gt v0, p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$onTouch$1;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$onTouch$1;-><init>(I)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_2
    int-to-float p1, p1

    sub-int v2, v0, v2

    int-to-float v2, v2

    neg-float v2, v2

    mul-float/2addr v2, p1

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->p:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;

    if-eqz v2, :cond_3

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->l:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v5

    mul-float/2addr p1, v5

    sub-float/2addr v4, p1

    neg-float p1, v4

    invoke-interface {v2, p1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;->onTranslate(F)V

    :cond_3
    :goto_0
    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->n:I

    if-gt v0, p1, :cond_b

    invoke-virtual {p0, v0, p2}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->j(II)I

    move-result p1

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->p:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;

    if-eqz p2, :cond_5

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->q:I

    if-nez v2, :cond_4

    move v3, v1

    :cond_4
    invoke-interface {p2, v0, v3}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;->onWidthChanged(IZ)V

    :cond_5
    if-ltz p1, :cond_b

    iget p2, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->q:I

    if-eq p1, p2, :cond_b

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->o:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->n:I

    if-gt p2, v0, :cond_b

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->p:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;->onLevelChanged(II)V

    :cond_6
    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->q:I

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p2, p2

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    mul-float/2addr p1, v0

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->m:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_9

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->p:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;->onCollapse()V

    :cond_8
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->p:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;->onStopDrag()V

    goto :goto_1

    :cond_9
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$onTouch$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$onTouch$2;-><init>(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->f(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->i:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->j:I

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->k:I

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->p:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;->onStartDrag()V

    :cond_b
    :goto_1
    return v1
.end method

.method public final p(I)Z
    .locals 0

    const p0, 0x800013

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final reset()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->q:I

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->l:I

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->l:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->l:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->k:I

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->j:I

    :cond_0
    return-void
.end method

.method public final setAdjustableSizeList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sizeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->o:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->o:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    return-void
.end method

.method public final setCallback(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->p:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;

    return-void
.end method

.method public final setCollapseThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->m:I

    return-void
.end method

.method public final setDefaultWidth(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->l:I

    return-void
.end method

.method public final setDragViewLocation(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x800015

    goto :goto_0

    :cond_0
    const v0, 0x800013

    :goto_0
    invoke-direct {p0, v0}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->setDragViewGravity(I)V

    new-instance v0, Lcom/sunia/HTREnginev2/czj;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/czj;-><init>(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setEnableDrag(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->h:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final setMaxDraggableWidth(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->n:I

    return-void
.end method
