.class public final Lcom/onyx/galaxy/note/category/view/SlideLayout;
.super Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/SlideLayout$Companion;,
        Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;,
        Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 W2\u00020\u0001:\u0003WXYB\'\u0008\u0007\u0012\u0006\u0010S\u001a\u00020R\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010T\u001a\u00020\u0014\u00a2\u0006\u0004\u0008U\u0010VJ\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J \u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0002J\u0008\u0010\u000c\u001a\u00020\u0004H\u0002J\u0008\u0010\r\u001a\u00020\u0004H\u0002J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0002J\u0008\u0010\u0012\u001a\u00020\u0004H\u0014J\u0008\u0010\u0013\u001a\u00020\u0004H\u0014J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0014J0\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0014H\u0014J\u000e\u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0018J\u0006\u0010!\u001a\u00020\u0004J\u0006\u0010\"\u001a\u00020\u0004J\u000e\u0010#\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0018J\u0006\u0010$\u001a\u00020\u0004J\u0006\u0010%\u001a\u00020\u0004J\u0010\u0010\'\u001a\u00020\u00042\u0008\u0008\u0002\u0010&\u001a\u00020\u0018J\u0006\u0010(\u001a\u00020\u0018J\u000e\u0010+\u001a\u00020\u00042\u0006\u0010*\u001a\u00020)J\u000e\u0010.\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,J\u000e\u00100\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u0014J\u0016\u00101\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007J\u0016\u00102\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007J\u0008\u00104\u001a\u000203H\u0014J\u0012\u00106\u001a\u00020\u00042\u0008\u00105\u001a\u0004\u0018\u000103H\u0014R\u0016\u00108\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u00107R\u0016\u0010:\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u00109R\u0016\u0010-\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010;R\u0016\u0010?\u001a\u00020<8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0016\u0010A\u001a\u00020<8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008@\u0010>R\u0018\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0016\u0010E\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010DR\u0016\u0010G\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u00107R\u0016\u0010J\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0016\u0010L\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010IR\u001c\u0010Q\u001a\n N*\u0004\u0018\u00010M0M8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010P\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/SlideLayout;",
        "Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "e",
        "h",
        "",
        "start",
        "end",
        "fraction",
        "f",
        "g",
        "d",
        "min",
        "max",
        "",
        "c",
        "onFinishInflate",
        "onDetachedFromWindow",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onLayout",
        "shouldExpand",
        "toggleSlideWithAnimation",
        "expandWithAnimation",
        "collapseWithAnimation",
        "toggleSlideWithoutAnimation",
        "expandWithoutAnimation",
        "collapseWithoutAnimation",
        "animate",
        "toggle",
        "isExpanded",
        "Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;",
        "listener",
        "setSlideListener",
        "",
        "duration",
        "setAnimationDuration",
        "width",
        "setLeftWidth",
        "setLeftAlphaRange",
        "setRightAlphaRange",
        "Landroid/os/Parcelable;",
        "onSaveInstanceState",
        "state",
        "onRestoreInstanceState",
        "I",
        "leftWidth",
        "F",
        "leftShowPercent",
        "J",
        "Landroid/view/View;",
        "i",
        "Landroid/view/View;",
        "leftView",
        "j",
        "rightView",
        "k",
        "Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;",
        "Z",
        "isRestoredState",
        "m",
        "gravity",
        "n",
        "[F",
        "leftAlphaRange",
        "o",
        "rightAlphaRange",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "p",
        "Landroid/animation/ValueAnimator;",
        "animator",
        "Landroid/content/Context;",
        "context",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Companion",
        "SavedState",
        "SlideLayoutListener",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/SlideLayout$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LEFT_WIDTH_DEFAULT:I = 0x258


# instance fields
.field public f:I

.field public g:F

.field public h:J

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Z

.field public m:I

.field public n:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/SlideLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/SlideLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->Companion:Lcom/onyx/galaxy/note/category/view/SlideLayout$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/category/view/SlideLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/category/view/SlideLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x258

    .line 5
    iput p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->f:I

    const-wide/16 v0, 0x12c

    .line 6
    iput-wide v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->h:J

    const p1, 0x800003

    .line 7
    iput p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->m:I

    const/4 p1, 0x2

    new-array p3, p1, [F

    .line 8
    fill-array-data p3, :array_0

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->n:[F

    new-array p3, p1, [F

    .line 9
    fill-array-data p3, :array_1

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->o:[F

    new-array p1, p1, [F

    .line 10
    fill-array-data p1, :array_2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 11
    iget-wide v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    new-instance p3, Lcom/sunia/HTREnginev2/stm;

    invoke-direct {p3, p0}, Lcom/sunia/HTREnginev2/stm;-><init>(Lcom/onyx/galaxy/note/category/view/SlideLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    new-instance p3, Lcom/onyx/galaxy/note/category/view/SlideLayout$animator$1$2;

    invoke-direct {p3, p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout$animator$1$2;-><init>(Lcom/onyx/galaxy/note/category/view/SlideLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->p:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 16
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->e(Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/SlideLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/category/view/SlideLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->b(Lcom/onyx/galaxy/note/category/view/SlideLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$endTransientState(Lcom/onyx/galaxy/note/category/view/SlideLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->d()V

    return-void
.end method

.method public static final synthetic access$getListener$p(Lcom/onyx/galaxy/note/category/view/SlideLayout;)Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->k:Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;

    return-object p0
.end method

.method public static final synthetic access$startTransientState(Lcom/onyx/galaxy/note/category/view/SlideLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->g()V

    return-void
.end method

.method public static final b(Lcom/onyx/galaxy/note/category/view/SlideLayout;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->g:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->h()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->k:Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->isExpanded()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;->onSlideStateChanged(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static synthetic toggle$default(Lcom/onyx/galaxy/note/category/view/SlideLayout;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->toggle(Z)V

    return-void
.end method


# virtual methods
.method public final c(FF)[F
    .locals 3

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    const/4 v2, 0x0

    aput p1, p0, v2

    const/4 p1, 0x1

    invoke-static {p2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p2

    aput p2, p0, p1

    return-object p0
.end method

.method public final collapseWithAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    return-void
.end method

.method public final collapseWithoutAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->g:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->h()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->i:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "leftView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setHasTransientState(Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->j:Landroid/view/View;

    if-nez p0, :cond_1

    const-string p0, "rightView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_2
    return-void
.end method

.method public final e(Landroid/util/AttributeSet;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/R$styleable;->SlideLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SlideLayout_leftWidth:I

    const/16 v1, 0x258

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->f:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SlideLayout_animationDuration:I

    iget-wide v1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->h:J

    long-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->h:J

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SlideLayout_initialState:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->g:F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SlideLayout_gravity:I

    const v2, 0x800003

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->m:I

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->n:[F

    sget v2, Lcom/onyx/galaxy/note/R$styleable;->SlideLayout_leftAlphaMin:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->n:[F

    sget v1, Lcom/onyx/galaxy/note/R$styleable;->SlideLayout_leftAlphaMax:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/4 v4, 0x1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->o:[F

    sget v1, Lcom/onyx/galaxy/note/R$styleable;->SlideLayout_rightAlphaMin:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    aput v1, v0, v2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->o:[F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SlideLayout_rightAlphaMax:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, p0, v4

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final expandWithAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final expandWithoutAnimation()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->g:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->h()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final f(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    return p1
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->i:Landroid/view/View;

    const-string v1, "leftView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->i:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->j:Landroid/view/View;

    const-string v1, "rightView"

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->j:Landroid/view/View;

    if-nez p0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, p0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_5
    return-void
.end method

.method public final h()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->i:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "leftView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->n:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v2, v2, v5

    iget v6, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->g:F

    invoke-virtual {p0, v4, v2, v6}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->f(FFF)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->j:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v0, "rightView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->o:[F

    aget v2, v0, v5

    aget v0, v0, v3

    iget v3, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->g:F

    invoke-virtual {p0, v2, v0, v3}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->f(FFF)F

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final isExpanded()Z
    .locals 1

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->g:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDetachedFromWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->i:Landroid/view/View;

    const-string v1, "leftView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setHasTransientState(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->j:Landroid/view/View;

    const-string v4, "rightView"

    if-nez v0, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setHasTransientState(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->i:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->j:Landroid/view/View;

    if-nez v0, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setHasTransientState(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->n:[F

    aget v0, v5, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    const-string v0, "apply(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->i:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setHasTransientState(Z)V

    invoke-virtual {v2, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->o:[F

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->j:Landroid/view/View;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SlideLayout must contain exactly 2 child views."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onLayout(ZIIII)V
    .locals 6

    iget p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->f:I

    int-to-float p1, p1

    iget v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->g:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v0

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->m:I

    const/4 v2, 0x3

    const-string v3, "rightView"

    const-string v4, "leftView"

    const/4 v5, 0x0

    if-eq v1, v2, :cond_f

    const/4 v2, 0x5

    if-eq v1, v2, :cond_c

    const v2, 0x800003

    if-eq v1, v2, :cond_6

    const v2, 0x800005

    if-eq v1, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->i:Landroid/view/View;

    if-nez p2, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v5

    :cond_1
    iget v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->f:I

    neg-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p2, v0, p3, p1, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->j:Landroid/view/View;

    if-nez p0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v5, p0

    :goto_0
    invoke-virtual {v5, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_6

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->i:Landroid/view/View;

    if-nez v0, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_4
    sub-int v1, p4, p1

    iget v2, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->f:I

    add-int/2addr p4, v2

    sub-int/2addr p4, p1

    invoke-virtual {v0, v1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->j:Landroid/view/View;

    if-nez p0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v5, p0

    :goto_1
    invoke-virtual {v5, p2, p3, v1, p5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_6

    :cond_6
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->i:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_7
    sub-int v1, p4, p1

    iget v2, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->f:I

    add-int/2addr p4, v2

    sub-int/2addr p4, p1

    invoke-virtual {v0, v1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->j:Landroid/view/View;

    if-nez p0, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v5, p0

    :goto_2
    invoke-virtual {v5, p2, p3, v1, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    :cond_9
    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->i:Landroid/view/View;

    if-nez p2, :cond_a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v5

    :cond_a
    iget v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->f:I

    neg-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p2, v0, p3, p1, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->j:Landroid/view/View;

    if-nez p0, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move-object v5, p0

    :goto_3
    invoke-virtual {v5, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->i:Landroid/view/View;

    if-nez v0, :cond_d

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_d
    sub-int v1, p4, p1

    iget v2, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->f:I

    add-int/2addr p4, v2

    sub-int/2addr p4, p1

    invoke-virtual {v0, v1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->j:Landroid/view/View;

    if-nez p0, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    move-object v5, p0

    :goto_4
    invoke-virtual {v5, p2, p3, v1, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    :cond_f
    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->i:Landroid/view/View;

    if-nez p2, :cond_10

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v5

    :cond_10
    iget v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->f:I

    neg-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p2, v0, p3, p1, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->j:Landroid/view/View;

    if-nez p0, :cond_11

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    move-object v5, p0

    :goto_5
    invoke-virtual {v5, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :goto_6
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->f:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->i:Landroid/view/View;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v3, "leftView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_0
    invoke-virtual {v3, v0, v2}, Landroid/view/View;->measure(II)V

    iget v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->f:I

    int-to-float v0, v0

    iget v3, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->g:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->j:Landroid/view/View;

    if-nez v1, :cond_1

    const-string v1, "rightView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    invoke-virtual {v4, v0, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1    # Landroid/os/Parcelable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->getLeftShowPercent()F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->g:F

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->getLeftAlphaMin()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->getLeftAlphaMax()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->c(FF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->n:[F

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->getRightAlphaMin()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->getRightAlphaMax()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->c(FF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->o:[F

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->getAnimatorCurrentTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->l:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->h()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    :cond_0
    new-instance v1, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->g:F

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->setLeftShowPercent(F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->setAnimating(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->setAnimatorCurrentTime(J)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->n:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->setLeftAlphaMin(F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->n:[F

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->setLeftAlphaMax(F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->o:[F

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->setRightAlphaMin(F)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->o:[F

    aget p0, p0, v3

    invoke-virtual {v1, p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->setRightAlphaMax(F)V

    return-object v1
.end method

.method public final setAnimationDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->h:J

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final setLeftAlphaRange(FF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->c(FF)[F

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->n:[F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->h()V

    return-void
.end method

.method public final setLeftWidth(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->f:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setRightAlphaRange(FF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->c(FF)[F

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->o:[F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->h()V

    return-void
.end method

.method public final setSlideListener(Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout;->k:Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;

    return-void
.end method

.method public final toggle(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->isExpanded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->toggleSlideWithAnimation(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->toggleSlideWithoutAnimation(Z)V

    :goto_0
    return-void
.end method

.method public final toggleSlideWithAnimation(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->expandWithAnimation()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->collapseWithAnimation()V

    :goto_0
    return-void
.end method

.method public final toggleSlideWithoutAnimation(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->expandWithoutAnimation()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->collapseWithoutAnimation()V

    :goto_0
    return-void
.end method
