.class public final Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;
.super Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Companion;,
        Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;,
        Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSplitScreenLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplitScreenLayout.kt\ncom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,566:1\n91#2,14:567\n1855#3:581\n1856#3:586\n326#4,4:582\n*S KotlinDebug\n*F\n+ 1 SplitScreenLayout.kt\ncom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout\n*L\n447#1:567,14\n543#1:581\n543#1:586\n544#1:582,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0093\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001a\u0018\u0000 y2\u00020\u0001:\u0002yzB\u0011\u0008\u0016\u0012\u0006\u0010q\u001a\u00020p\u00a2\u0006\u0004\u0008r\u0010sB\u001d\u0008\u0016\u0012\u0006\u0010q\u001a\u00020p\u0012\n\u0008\u0002\u0010u\u001a\u0004\u0018\u00010t\u00a2\u0006\u0004\u0008r\u0010vB%\u0008\u0016\u0012\u0006\u0010q\u001a\u00020p\u0012\n\u0008\u0002\u0010u\u001a\u0004\u0018\u00010t\u0012\u0006\u0010w\u001a\u00020\u001a\u00a2\u0006\u0004\u0008r\u0010xJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0008\u0010\u0014\u001a\u00020\u0008H\u0002J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0004H\u0002J\u0008\u0010\u0019\u001a\u00020\u0002H\u0002J\u0008\u0010\u001b\u001a\u00020\u001aH\u0002J \u0010\u001e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0002J\u0008\u0010\u001f\u001a\u00020\u0002H\u0002J\u0018\u0010 \u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0002J\u0018\u0010!\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0002J\u0018\u0010\"\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0002J&\u0010)\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u00042\u0006\u0010%\u001a\u00020$2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\'0&H\u0002J\u0014\u0010+\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020$0*H\u0002J\u0014\u0010,\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020$0*H\u0002J\u0008\u0010-\u001a\u00020\u0002H\u0002J&\u00102\u001a\u00020\u00022\u0006\u0010.\u001a\u00020$2\u0006\u0010/\u001a\u00020$2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u000200H\u0002J\u0008\u00103\u001a\u00020\u0015H\u0002J\u0008\u00104\u001a\u00020\u0015H\u0002J\u0008\u00105\u001a\u00020\u0002H\u0002J\u0008\u00106\u001a\u00020\u0002H\u0002J\u0008\u00107\u001a\u00020\u0002H\u0002J\u0008\u00108\u001a\u00020\u0002H\u0002J\u0008\u00109\u001a\u00020\u0002H\u0002J\u0008\u0010:\u001a\u00020\u0002H\u0002J\u0008\u0010;\u001a\u00020\u0002H\u0014J\u0016\u0010>\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010=\u001a\u00020<J\u000e\u0010?\u001a\u00020$2\u0006\u0010=\u001a\u00020<J\u000e\u0010@\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0004J\u0006\u0010A\u001a\u00020\u0008J(\u0010E\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u001a2\u0006\u0010B\u001a\u00020\u001a2\u0006\u0010C\u001a\u00020\u001a2\u0006\u0010D\u001a\u00020\u001aH\u0014J\u0006\u0010F\u001a\u00020\u0002R\"\u0010H\u001a\u00020G8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\"\u0010R\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010\u000f\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\"\u0010Y\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR$\u0010`\u001a\u0004\u0018\u00010Z8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010[\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_R\u001b\u0010f\u001a\u00020a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010eR\u0016\u0010j\u001a\u00020g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u0016\u0010m\u001a\u00020k8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010lR\u0016\u0010n\u001a\u00020k8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010lR\u0016\u0010o\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010T\u00a8\u0006{"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;",
        "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;",
        "",
        "w",
        "Landroid/view/View;",
        "v",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "y",
        "z",
        "A",
        "Q",
        "view",
        "H",
        "I",
        "J",
        "F",
        "x",
        "G",
        "o",
        "Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;",
        "p",
        "goneView",
        "n",
        "D",
        "",
        "getDividerSize",
        "width",
        "height",
        "N",
        "O",
        "T",
        "U",
        "R",
        "targetView",
        "Landroid/graphics/RectF;",
        "targetRect",
        "",
        "Landroid/animation/Animator;",
        "animatorList",
        "j",
        "Lkotlin/Pair;",
        "getHorizontalInitialLayoutRect",
        "getVerticalInitialLayoutRect",
        "M",
        "firstTargetRect",
        "secondTargetRect",
        "Lkotlin/Function0;",
        "afterAnim",
        "L",
        "q",
        "E",
        "P",
        "r",
        "K",
        "C",
        "m",
        "S",
        "onDetachedFromWindow",
        "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;",
        "position",
        "splitScreen",
        "getSplitScreenAnimTargetViewSize",
        "exitSplitScreen",
        "isEnabledSplitScreen",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "switchSplitScreenType",
        "Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;",
        "setBinding",
        "(Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;)V",
        "getSplitScreenType",
        "()I",
        "setSplitScreenType",
        "(I)V",
        "splitScreenType",
        "i",
        "Z",
        "getSwitchLayout",
        "()Z",
        "setSwitchLayout",
        "(Z)V",
        "switchLayout",
        "Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;",
        "Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;",
        "getListener",
        "()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;",
        "setListener",
        "(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;)V",
        "listener",
        "com/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$componentCallbacks$2$1",
        "k",
        "Lkotlin/Lazy;",
        "getComponentCallbacks",
        "()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$componentCallbacks$2$1;",
        "componentCallbacks",
        "Landroid/graphics/PointF;",
        "l",
        "Landroid/graphics/PointF;",
        "downPoint",
        "Landroid/graphics/Point;",
        "Landroid/graphics/Point;",
        "dividerOffsetPoint",
        "dividerLastOffsetPoint",
        "animating",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyle",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Companion",
        "Listener",
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
        "SMAP\nSplitScreenLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplitScreenLayout.kt\ncom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,566:1\n91#2,14:567\n1855#3:581\n1856#3:586\n326#4,4:582\n*S KotlinDebug\n*F\n+ 1 SplitScreenLayout.kt\ncom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout\n*L\n447#1:567,14\n543#1:581\n543#1:586\n544#1:582,4\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEBUG_LOG:Z = false

.field public static final SPLIT_SCREEN_TYPE_FULL_SCREEN:I = 0x0

.field public static final SPLIT_SCREEN_TYPE_LEFT_RIGHT:I = 0x1

.field public static final SPLIT_SCREEN_TYPE_TOP_BOTTOM:I = 0x2


# instance fields
.field public binding:Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

.field public h:I

.field public i:Z

.field public j:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->Companion:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$componentCallbacks$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$componentCallbacks$2;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->k:Lkotlin/Lazy;

    .line 6
    new-instance p1, Landroid/graphics/PointF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->l:Landroid/graphics/PointF;

    .line 7
    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->m:Landroid/graphics/Point;

    .line 8
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->n:Landroid/graphics/Point;

    .line 9
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->w()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final B(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->O()V

    return-void
.end method

.method public static final synthetic access$animateSplitLayout(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->m()V

    return-void
.end method

.method public static final synthetic access$realSwitchLayout(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->C()V

    return-void
.end method

.method public static final synthetic access$setAnimating$p(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->o:Z

    return-void
.end method

.method public static final synthetic access$updateChildrenView(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->O()V

    return-void
.end method

.method public static final synthetic access$updateIcons(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->S()V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->t(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->B(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->l(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->y(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->u(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->k(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final getComponentCallbacks()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$componentCallbacks$2$1;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->k:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$componentCallbacks$2$1;

    return-object p0
.end method

.method private final getDividerSize()I
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    return p0
.end method

.method private final getHorizontalInitialLayoutRect()Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getDividerSize()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    new-instance v2, Lkotlin/Pair;

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-direct {v4, v1, v5, v0, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final getVerticalInitialLayoutRect()Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getDividerSize()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    new-instance v2, Lkotlin/Pair;

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-direct {v4, v5, v1, v0, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static synthetic h(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->v(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->s(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final k(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$targetView"

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

.method public static final l(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$targetView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    return-void
.end method

.method public static final s(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->switchSplitScreenType()V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->K()V

    return-void
.end method

.method public static final u(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->switchSplitScreenType()V

    return-void
.end method

.method public static final v(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->K()V

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->Q(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->j:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;->onDividerRelease()V

    :cond_1
    return-void
.end method

.method public final C()V
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->h:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->O()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->P()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->j:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;->onLayoutSwitched()V

    :cond_1
    return-void
.end method

.method public final D()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->l:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->m:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->n:Landroid/graphics/Point;

    invoke-virtual {p0, v1, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public final E()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->i:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object p0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->editorViewDragLayout:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->editorViewDragLayout2:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final F(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->x(Landroid/view/View;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->i:Z

    const/4 p1, 0x2

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->h:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->M()V

    return-void
.end method

.method public final G(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->isLandscapeWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->I(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->F(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final H(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->x(Landroid/view/View;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->i:Z

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->h:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->M()V

    return-void
.end method

.method public final I(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->x(Landroid/view/View;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->i:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->h:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->M()V

    return-void
.end method

.method public final J(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->x(Landroid/view/View;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->i:Z

    const/4 p1, 0x2

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->h:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->M()V

    return-void
.end method

.method public final K()V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->i:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->i:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->O()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->j:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;->onLayoutSwitched()V

    :cond_0
    return-void
.end method

.method public final L(Landroid/graphics/RectF;Landroid/graphics/RectF;Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$integer;->split_screen_exchange_animation_duration:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->q()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->E()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2, p1, v5}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->j(Landroid/view/View;Landroid/graphics/RectF;Ljava/util/List;)V

    invoke-virtual {p0, v3, p2, v5}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->j(Landroid/view/View;Landroid/graphics/RectF;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$toggleAnimateLayoutToTarget$$inlined$addListener$default$1;

    invoke-direct {p1, p0, p3, p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$toggleAnimateLayoutToTarget$$inlined$addListener$default$1;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;Lkotlin/jvm/functions/Function0;Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V

    invoke-virtual {v4, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final M()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleStartSplitScreenLayout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->P()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->O()V

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getVerticalInitialLayoutRect()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$toggleStartSplitScreenLayout$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$toggleStartSplitScreenLayout$1;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->L(Landroid/graphics/RectF;Landroid/graphics/RectF;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getHorizontalInitialLayoutRect()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$toggleStartSplitScreenLayout$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$toggleStartSplitScreenLayout$2;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->L(Landroid/graphics/RectF;Landroid/graphics/RectF;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public final N(Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p3, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final O()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->h:I

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->U(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->T(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->R(II)V

    :goto_0
    return-void
.end method

.method public final P()V
    .locals 4

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutHorizontalSwitchLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutHorizontalSwitchScreenType:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutHorizontalDragIndicator:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutVerticalSwitchLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutVerticalSwitchScreenType:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutVerticalDragIndicator:Landroid/widget/FrameLayout;

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutHorizontalSwitchLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutHorizontalSwitchScreenType:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutHorizontalDragIndicator:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutVerticalSwitchLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutVerticalSwitchScreenType:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutVerticalDragIndicator:Landroid/widget/FrameLayout;

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method public final Q(Landroid/view/MotionEvent;)V
    .locals 3

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->l:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->n:Landroid/graphics/Point;

    float-to-int p1, p1

    invoke-virtual {p0, v2, p1}, Landroid/graphics/Point;->offset(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->l:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->n:Landroid/graphics/Point;

    float-to-int p1, p1

    invoke-virtual {p0, p1, v2}, Landroid/graphics/Point;->offset(II)V

    :goto_0
    return-void
.end method

.method public final R(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->q()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->N(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->q()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->q()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLongerRealScreenSize()I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->splitScreenDivider:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->splitScreenDivider:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    invoke-virtual {v0, p2}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->E()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public final S()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->ivVerticalSwitchLayout:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v3, "ivVerticalSwitchLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->ivVerticalSwitchScreenType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v3, "ivVerticalSwitchScreenType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->ivHorizontalSwitchLayout:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v3, "ivHorizontalSwitchLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->ivHorizontalSwitchScreenType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v2, "ivHorizontalSwitchScreenType"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public final T(II)V
    .locals 5

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getDividerSize()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->m:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v2

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->m:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v4

    invoke-static {v1, v3, p1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->q()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object v1

    invoke-virtual {p0, v1, v2, p2}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->N(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->splitScreenDivider:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    const-string v3, "splitScreenDivider"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0, p2}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->N(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->E()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->N(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->q()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->q()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->splitScreenDivider:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    int-to-float v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->splitScreenDivider:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->E()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object p1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getDividerSize()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public final U(II)V
    .locals 5

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getDividerSize()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 v1, p2, 0x2

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->m:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v2

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->m:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v4

    invoke-static {v1, v3, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->q()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v2}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->N(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->splitScreenDivider:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    const-string v3, "splitScreenDivider"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->N(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->E()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->N(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->q()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->splitScreenDivider:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->splitScreenDivider:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    int-to-float v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->E()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getDividerSize()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public final exitSplitScreen(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "goneView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->n(Landroid/view/View;)V

    return-void
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->binding:Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getListener()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->j:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;

    return-object p0
.end method

.method public final getSplitScreenAnimTargetViewSize(Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->o:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->isLandscapeWindows()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getHorizontalInitialLayoutRect()Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getVerticalInitialLayoutRect()Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getVerticalInitialLayoutRect()Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getVerticalInitialLayoutRect()Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getHorizontalInitialLayoutRect()Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getHorizontalInitialLayoutRect()Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    :goto_0
    return-object p0

    :cond_6
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0
.end method

.method public final getSplitScreenType()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->h:I

    return p0
.end method

.method public final getSwitchLayout()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->i:Z

    return p0
.end method

.method public final isEnabledSplitScreen()Z
    .locals 3

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->h:I

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method public final j(Landroid/view/View;Landroid/graphics/RectF;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/graphics/RectF;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x2

    new-array v0, p0, [F

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p2, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x1

    aput v1, v0, v3

    const-string v1, "x"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, p0, [F

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    aput v4, v1, v2

    iget v4, p2, Landroid/graphics/RectF;->top:F

    aput v4, v1, v3

    const-string v4, "y"

    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/sunia/HTREnginev2/nwm;

    invoke-direct {v5, p1}, Lcom/sunia/HTREnginev2/nwm;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    filled-new-array {v5, p2}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v5, Lcom/sunia/HTREnginev2/owm;

    invoke-direct {v5, p1}, Lcom/sunia/HTREnginev2/owm;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/animation/ValueAnimator;

    aput-object v0, p1, v2

    aput-object v1, p1, v3

    aput-object v4, p1, p0

    const/4 p0, 0x3

    aput-object p2, p1, p0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final m()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->splitScreenDivider:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->splitScreenDivider:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->splitScreenDivider:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->x(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->i:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->h:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->D()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->O()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->j:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;->onExitSpitScreen(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final o()Z
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->p()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->split_screen_auto_exit_distance_threshold:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v2, v2

    div-float/2addr v3, v2

    cmpl-float v1, v3, v1

    if-lez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getEditorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->n(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getComponentCallbacks()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$componentCallbacks$2$1;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p1, Lcom/sunia/HTREnginev2/uwm;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/uwm;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final p()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->q()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->E()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    if-le v1, v2, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public final q()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->i:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object p0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->editorViewDragLayout2:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->editorViewDragLayout:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final r()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutHorizontalSwitchLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/pwm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/pwm;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutHorizontalSwitchScreenType:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/qwm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/qwm;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutVerticalSwitchLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/rwm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/rwm;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutVerticalSwitchScreenType:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/swm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/swm;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setBinding(Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->binding:Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    return-void
.end method

.method public final setListener(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->j:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;

    return-void
.end method

.method public final setSplitScreenType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->h:I

    return-void
.end method

.method public final setSwitchLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->i:Z

    return-void
.end method

.method public final splitScreen(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->G(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->F(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->J(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->I(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->H(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final switchSplitScreenType()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->D()V

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getHorizontalInitialLayoutRect()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$switchSplitScreenType$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$switchSplitScreenType$2;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->L(Landroid/graphics/RectF;Landroid/graphics/RectF;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getVerticalInitialLayoutRect()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$switchSplitScreenType$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$switchSplitScreenType$1;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->L(Landroid/graphics/RectF;Landroid/graphics/RectF;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public final w()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getComponentCallbacks()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$componentCallbacks$2$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->setBinding(Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutVerticalDragIndicator:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/twm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/twm;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->layoutHorizontalDragIndicator:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/twm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/twm;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->r()V

    return-void
.end method

.method public final x(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->editorViewDragLayout:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getEditorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final y(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->z(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->A(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->l:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->j:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;->onDividerDown()V

    :cond_3
    :goto_0
    return v0
.end method

.method public final z(Landroid/view/MotionEvent;)V
    .locals 4

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->h:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->l:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->n:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->l:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->n:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr p1, v2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Point;->set(II)V

    :goto_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->m:Landroid/graphics/Point;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->m:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->O()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->q()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getPageScroller()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->E()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getPageScroller()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method
