.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeAndToolContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeAndToolContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,379:1\n91#2,14:380\n*S KotlinDebug\n*F\n+ 1 ShapeAndToolContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer\n*L\n270#1:380,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ac\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010W\u001a\u00020V\u00a2\u0006\u0004\u0008X\u0010YB\u001d\u0008\u0016\u0012\u0006\u0010W\u001a\u00020V\u0012\n\u0008\u0002\u0010[\u001a\u0004\u0018\u00010Z\u00a2\u0006\u0004\u0008X\u0010\\B%\u0008\u0016\u0012\u0006\u0010W\u001a\u00020V\u0012\n\u0008\u0002\u0010[\u001a\u0004\u0018\u00010Z\u0012\u0006\u0010]\u001a\u00020\u000c\u00a2\u0006\u0004\u0008X\u0010^J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\n\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002J\u0008\u0010\u000b\u001a\u00020\nH\u0002J(\u0010\u0012\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u001c\u0010\u0016\u001a\u00020\u00022\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00020\u0013H\u0002J\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u0019\u001a\u00020\nJ\u0006\u0010\u001a\u001a\u00020\u0002J\u000e\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u000cJ\u0006\u0010\u001d\u001a\u00020\u0002J\u000e\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000cJ\u0018\u0010#\u001a\u00020\u00022\u0008\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010\"\u001a\u00020\nJ\u0006\u0010$\u001a\u00020\u0004J\u0006\u0010%\u001a\u00020\u0004J\u0006\u0010\'\u001a\u00020&J\u0006\u0010(\u001a\u00020&J\u0006\u0010*\u001a\u00020)J\u0006\u0010+\u001a\u00020\u0001J\u0006\u0010-\u001a\u00020,J\u0006\u0010/\u001a\u00020.J\u0006\u00101\u001a\u000200J\u0006\u00103\u001a\u000202J\u0006\u00105\u001a\u000204J\u0006\u00107\u001a\u000206J\u0006\u00108\u001a\u00020&J\u000e\u0010:\u001a\u00020\u00022\u0006\u00109\u001a\u00020\u0008J\u000e\u0010=\u001a\u00020\u00022\u0006\u0010<\u001a\u00020;J\u000e\u0010>\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\nJ\u0006\u0010?\u001a\u00020\u0002J(\u0010C\u001a\u00020\u00022\u0006\u0010@\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010A\u001a\u00020\u000c2\u0006\u0010B\u001a\u00020\u000cH\u0014J\u0012\u0010F\u001a\u00020\n2\u0008\u0010E\u001a\u0004\u0018\u00010DH\u0016J\u0012\u0010H\u001a\u00020\n2\u0008\u0010G\u001a\u0004\u0018\u00010DH\u0016R\u0016\u0010K\u001a\u00020\u00178\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0016\u0010M\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010LR\u0016\u0010N\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010LR(\u0010U\u001a\u0008\u0012\u0004\u0012\u00020\u00020O8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010P\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010T\u00a8\u0006_"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;",
        "Landroid/widget/FrameLayout;",
        "",
        "d",
        "Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;",
        "dragLayout",
        "setViewDragCallback",
        "g",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "",
        "f",
        "",
        "initialWidth",
        "initialHeight",
        "show",
        "",
        "value",
        "h",
        "Lkotlin/Function1;",
        "Landroid/view/ViewGroup$MarginLayoutParams;",
        "block",
        "i",
        "Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;",
        "getBinding",
        "isClickValid",
        "flushUI",
        "lassoType",
        "updateLassoTypeUi",
        "updateExcerptTypeUi",
        "eraserType",
        "updateEraserTypeUi",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "shapeToolType",
        "postEvent",
        "setSelectByType",
        "getContainerView",
        "getContainerView2",
        "Landroid/view/View;",
        "getEditorView",
        "getEditorView2",
        "Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;",
        "getSplitScreenLayout",
        "getShapeContentView",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "getTextBoxView",
        "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;",
        "getSelectionMenuView",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "getEraseCircle",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;",
        "getToolDragView",
        "Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;",
        "getDragEffectView",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;",
        "getDriveTokenExpiredTipContainer",
        "getFullScreenView",
        "editorBundle",
        "setEditorBundle",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "penViewModel",
        "bindPenViewModel",
        "coordinateToolbarAnimation",
        "showTapeSizeContainer",
        "w",
        "oldw",
        "oldh",
        "onSizeChanged",
        "Landroid/view/MotionEvent;",
        "event",
        "onHoverEvent",
        "ev",
        "dispatchTouchEvent",
        "e",
        "Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;",
        "binding",
        "Z",
        "hasHovered",
        "isStylusPress",
        "Lkotlin/Function0;",
        "Lkotlin/jvm/functions/Function0;",
        "getEditorContainerChangeCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "setEditorContainerChangeCallback",
        "(Lkotlin/jvm/functions/Function0;)V",
        "editorContainerChangeCallback",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyle",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
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
        "SMAP\nShapeAndToolContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeAndToolContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,379:1\n91#2,14:380\n*S KotlinDebug\n*F\n+ 1 ShapeAndToolContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer\n*L\n270#1:380,14\n*E\n"
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

.field public f:Z

.field public g:Z

.field public h:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
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
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget-object p1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$editorContainerChangeCallback$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$editorContainerChangeCallback$1;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->h:Lkotlin/jvm/functions/Function0;

    .line 6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->d()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getEditorBundle(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isDragAddEnable(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->f()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$loadPaperTemplateThumbnail(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->g(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;IIZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->c(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;IIZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final c(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;IIZLandroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->h(IIZF)V

    return-void
.end method

.method public static final e(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenEvent;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenEvent;-><init>(Z)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->dragTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    return-object p0
.end method

.method private final setViewDragCallback(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->setCallback(Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;)V

    return-void
.end method


# virtual methods
.method public final bindPenViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penViewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->dragTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->setPenViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V

    return-void
.end method

.method public final coordinateToolbarAnimation(Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getShapeContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v6, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$coordinateToolbarAnimation$lambda$3$$inlined$addListener$default$1;

    invoke-direct {v6, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$coordinateToolbarAnimation$lambda$3$$inlined$addListener$default$1;-><init>(Landroid/widget/FrameLayout;)V

    invoke-virtual {v3, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/sunia/HTREnginev2/qlm;

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/sunia/HTREnginev2/qlm;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;IIZ)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p1, :cond_0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_0
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final d()V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getContainerView()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->setViewDragCallback(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getContainerView2()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->setViewDragCallback(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->driveTokenExpiredTipContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$initView$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$initView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;)V

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->setTipVisibilityChangeListener(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v2, v1, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->ivFullScreen:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivFullScreen"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/rlm;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/rlm;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    iput-boolean v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->f:Z

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->g:Z

    goto :goto_6

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_5

    goto :goto_5

    :cond_5
    :goto_3
    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v2

    :goto_5
    if-eqz v1, :cond_8

    iput-boolean v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->g:Z

    :cond_8
    :goto_6
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final f()Z
    .locals 0

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getSlideToAdd()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    return p0
.end method

.method public final flushUI()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->dragTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->flushUI()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->selectionMenus:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->flushUI()V

    return-void
.end method

.method public final g(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V
    .locals 3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/onyx/galaxy/note/editor/action/template/LoadDocDefaultPageMarginAction;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/action/template/LoadDocDefaultPageMarginAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$a;

    invoke-direct {v2, p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$a;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$b;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$b;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$c;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$c;-><init>(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getContainerView()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->splitScreen:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->editorViewDragLayout:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    const-string v0, "editorViewDragLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getContainerView2()Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->splitScreen:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->editorViewDragLayout2:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    const-string v0, "editorViewDragLayout2"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDragEffectView()Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->dragEffectView:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    const-string v0, "dragEffectView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDriveTokenExpiredTipContainer()Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->driveTokenExpiredTipContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;

    const-string v0, "driveTokenExpiredTipContainer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEditorContainerChangeCallback()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->h:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getEditorView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->splitScreen:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->editorViewDragLayout:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getEditorView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getEditorView2()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->splitScreen:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;->editorViewDragLayout2:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getEditorView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getEraseCircle()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->eraseCircle:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "eraseCircle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getFullScreenView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->ivFullScreen:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivFullScreen"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getSelectionMenuView()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->selectionMenus:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    const-string v0, "selectionMenus"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getShapeContentView()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->flShapeContent:Landroid/widget/FrameLayout;

    const-string v0, "flShapeContent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getSplitScreenLayout()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->splitScreen:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    const-string v0, "splitScreen"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getTextBoxView()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->textBoxView:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    const-string v0, "textBoxView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->dragTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    const-string v0, "dragTool"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final h(IIZF)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 p2, 0x3

    if-eq v1, p2, :cond_1

    const/4 p2, 0x4

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$4;

    invoke-direct {p2, p3, p1, p4, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$4;-><init>(ZIFF)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->i(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$3;

    invoke-direct {p2, p3, p1, p4, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$3;-><init>(ZIFF)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->i(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$2;

    invoke-direct {p1, p3, p2, p4, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$2;-><init>(ZIFF)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->i(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$1;

    invoke-direct {p1, p3, p2, p4, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$1;-><init>(ZIFF)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->i(Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method

.method public final i(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/ViewGroup$MarginLayoutParams;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getShapeContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getShapeContentView()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final isClickValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->f:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->g:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->f:Z

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_1

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->dragTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->updateView()V

    :cond_2
    return-void
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->dragTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public final setEditorContainerChangeCallback(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->h:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setSelectByType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Z)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->dragTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->setSelectByType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Z)V

    return-void
.end method

.method public final showTapeSizeContainer()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->dragTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->showTapeSizeContainer()V

    return-void
.end method

.method public final updateEraserTypeUi(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->dragTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->updateEraserTypeUi(I)V

    return-void
.end method

.method public final updateExcerptTypeUi()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->dragTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->updateExcerptTypeUi()V

    return-void
.end method

.method public final updateLassoTypeUi(I)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->dragTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->flushUI()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->e:Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->dragTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->updateLassoTypeUi(I)V

    return-void
.end method
