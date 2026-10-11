.class public final Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditorViewDragLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorViewDragLayout.kt\ncom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,438:1\n13309#2,2:439\n*S KotlinDebug\n*F\n+ 1 EditorViewDragLayout.kt\ncom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout\n*L\n268#1:439,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 c2\u00020\u0001:\u0001cB\u0011\u0008\u0016\u0012\u0006\u0010[\u001a\u00020Z\u00a2\u0006\u0004\u0008\\\u0010]B\u001d\u0008\u0016\u0012\u0006\u0010[\u001a\u00020Z\u0012\n\u0008\u0002\u0010_\u001a\u0004\u0018\u00010^\u00a2\u0006\u0004\u0008\\\u0010`B%\u0008\u0016\u0012\u0006\u0010[\u001a\u00020Z\u0012\n\u0008\u0002\u0010_\u001a\u0004\u0018\u00010^\u0012\u0006\u0010a\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\\\u0010bJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J#\u0010\u000c\u001a\u00020\u00022\u0012\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\t\"\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0008\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0008\u0010\u001c\u001a\u00020\u0004H\u0002J\u0008\u0010\u001d\u001a\u00020\u0004H\u0002J\u0008\u0010\u001f\u001a\u00020\u001eH\u0002J\u0010\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0002J\u0006\u0010#\u001a\u00020\"J\u0006\u0010$\u001a\u00020\nJ\u0006\u0010&\u001a\u00020%J\u0006\u0010(\u001a\u00020\'J\u000e\u0010+\u001a\u00020\u00022\u0006\u0010*\u001a\u00020)J\u0006\u0010,\u001a\u00020\u0002J\u000e\u0010.\u001a\u00020\u00022\u0006\u0010-\u001a\u00020\u0004J\u0010\u00101\u001a\u00020\u00022\u0008\u00100\u001a\u0004\u0018\u00010/J\u0016\u00106\u001a\u00020\u00022\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u000204J\u0006\u00107\u001a\u00020\u0002J\u000e\u0010:\u001a\u00020\u00022\u0006\u00109\u001a\u000208J\u0016\u0010=\u001a\u00020\u00022\u0006\u0010;\u001a\u00020\u00042\u0006\u0010<\u001a\u00020\u0004J\u000e\u0010?\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\u0019J\u000e\u0010A\u001a\u00020\u00022\u0006\u0010@\u001a\u00020\u0004J\u000e\u0010C\u001a\u00020\u00022\u0006\u0010B\u001a\u00020\u001eJ\u000e\u0010D\u001a\u00020\u00022\u0006\u0010B\u001a\u00020\u001eJ\u000e\u0010F\u001a\u00020\u00022\u0006\u0010E\u001a\u00020\u0012J\u0006\u0010G\u001a\u00020\u0002J\u0006\u0010I\u001a\u00020HR\"\u0010J\u001a\u00020\"8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR\u0018\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010PR\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010QR\u0016\u0010S\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010RR\u0016\u0010T\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010RR\u0016\u0010U\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010RR\u0016\u0010W\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010VR\u0016\u0010X\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010VR\u0016\u0010Y\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010Q\u00a8\u0006d"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;",
        "Landroid/widget/FrameLayout;",
        "",
        "e",
        "",
        "dx",
        "dy",
        "m",
        "g",
        "",
        "Landroid/view/View;",
        "views",
        "h",
        "([Landroid/view/View;)V",
        "i",
        "j",
        "Lcom/onyx/galaxy/note/editor/view/drag/DragProgressView;",
        "stateImage",
        "",
        "percentage",
        "k",
        "Landroid/widget/TextView;",
        "stateText",
        "l",
        "c",
        "",
        "f",
        "d",
        "getMaxThreshold",
        "getScreenPositionType",
        "Landroid/graphics/Rect;",
        "b",
        "sideBarWidth",
        "a",
        "Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;",
        "getEditorViewDragLayoutBinding",
        "getEditorView",
        "Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;",
        "getPageScroller",
        "Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;",
        "getShapesLocationBar",
        "Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;",
        "callback",
        "setCallback",
        "requestDragViewInterceptTouchEvent",
        "layoutType",
        "setLayoutType",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "templateModel",
        "loadPaperTemplate",
        "Lcom/onyx/android/sdk/geometry/data/MarginPercent;",
        "marginPercent",
        "Lcom/onyx/android/sdk/geometry/data/MarginStyle;",
        "marginStyle",
        "setPageMargin",
        "clearPageMargin",
        "Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;",
        "data",
        "updateScrollerViewData",
        "pageIndex",
        "pageCount",
        "updatePageNum",
        "show",
        "showPageNumView",
        "width",
        "setToolBarRectWidth",
        "rect",
        "setRightSideBarRect",
        "setLeftSideBarRect",
        "translationX",
        "setContainerTranslationX",
        "refreshPageScrollerLayout",
        "Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;",
        "getEditorViewLockLayout",
        "binding",
        "Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;",
        "setBinding",
        "(Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;)V",
        "Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;",
        "F",
        "I",
        "curPageIndex",
        "curPageCount",
        "toolbarRectWidth",
        "Landroid/graphics/Rect;",
        "rightSideBarRect",
        "leftSideBarRect",
        "containerTranslationX",
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
        "SMAP\nEditorViewDragLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorViewDragLayout.kt\ncom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,438:1\n13309#2,2:439\n*S KotlinDebug\n*F\n+ 1 EditorViewDragLayout.kt\ncom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout\n*L\n268#1:439,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:I

.field public static final n:I = 0x0

.field public static final o:I = 0x1

.field public static final p:I = 0x2

.field public static final q:I = 0x3

.field public static final r:I = 0x4


# instance fields
.field public binding:Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

.field public e:Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:F

.field public g:I

.field public h:I

.field public i:I

.field public j:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->Companion:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$Companion;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$integer;->pull_drag_max_threshold_factor:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    sput v0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->m:I

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
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->g:I

    .line 6
    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->h:I

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->j:Landroid/graphics/Rect;

    .line 8
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->k:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->e()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->e:Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    return-object p0
.end method

.method public static final synthetic access$getPercentage$p(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->f:F

    return p0
.end method

.method public static final synthetic access$resetStateView(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->g()V

    return-void
.end method

.method public static final synthetic access$updateStateView(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->m(II)V

    return-void
.end method

.method private final getMaxThreshold()I
    .locals 2

    sget v0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->m:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->viewDragView:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->isVerticalOrientation()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    div-int/2addr p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    div-int/2addr p0, v0

    :goto_0
    if-gtz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getWindowDefaultWidth()I

    move-result p0

    div-int/2addr p0, v0

    :cond_1
    return p0
.end method

.method private final getScreenPositionType()I
    .locals 7

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getParentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/MathUtils;->areApproximatelyEqual(FFF)Z

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v5, p0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v1, v3, v5, v4}, Lcom/onyx/android/sdk/base/utils/MathUtils;->areApproximatelyEqual(FFF)Z

    move-result v3

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6, v4}, Lcom/onyx/android/sdk/base/utils/MathUtils;->areApproximatelyEqual(FFF)Z

    move-result v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    invoke-virtual {v1, v0, p0, v4}, Lcom/onyx/android/sdk/base/utils/MathUtils;->areApproximatelyEqual(FFF)Z

    move-result p0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    if-nez v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    if-eqz p0, :cond_1

    if-nez v2, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    if-nez p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    if-eqz p0, :cond_3

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$integer;->editor_offset_ratio_when_sidebar_on:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/IntKt;->safeDivide(II)I

    move-result p0

    return p0
.end method

.method public final b()Landroid/graphics/Rect;
    .locals 13

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getScreenPositionType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->pageScroller:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->getViewData()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    move-result-object v5

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->generateDrawingRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->j:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->k:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->getBarGravity()I

    move-result v5

    if-lez v7, :cond_2

    move v9, v3

    goto :goto_2

    :cond_2
    move v9, v2

    :goto_2
    if-lez v8, :cond_3

    move v10, v3

    goto :goto_3

    :cond_3
    move v10, v2

    :goto_3
    const v11, 0x800005

    if-ne v5, v11, :cond_4

    move v11, v3

    goto :goto_4

    :cond_4
    move v11, v2

    :goto_4
    const v12, 0x800003

    if-ne v5, v12, :cond_5

    move v2, v3

    :cond_5
    sget-object v5, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v12, Lcom/onyx/galaxy/note/R$dimen;->side_bar_layout_width:I

    invoke-virtual {v5, v12}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v12, 0x0

    if-eqz v4, :cond_a

    if-eqz v2, :cond_7

    if-ne v0, v3, :cond_7

    if-eqz v10, :cond_6

    iget v2, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v8

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->l:F

    cmpl-float v3, v3, v12

    if-lez v3, :cond_6

    invoke-virtual {p0, v5}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->a(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->left:I

    :cond_6
    if-eqz v9, :cond_7

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->l:F

    cmpg-float v2, v2, v12

    if-gez v2, :cond_7

    iget v2, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v5}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->left:I

    :cond_7
    if-eqz v11, :cond_9

    if-ne v0, v1, :cond_9

    if-eqz v10, :cond_8

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->l:F

    cmpl-float v0, v0, v12

    if-lez v0, :cond_8

    iget v0, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v5}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->a(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v6, Landroid/graphics/Rect;->right:I

    :cond_8
    if-eqz v9, :cond_9

    iget v0, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v7

    iput v0, v6, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->l:F

    cmpg-float v1, v1, v12

    if-gez v1, :cond_9

    invoke-virtual {p0, v5}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->a(I)I

    move-result p0

    add-int/2addr v0, p0

    iput v0, v6, Landroid/graphics/Rect;->right:I

    :cond_9
    return-object v6

    :cond_a
    if-eqz v2, :cond_c

    if-eqz v9, :cond_b

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->l:F

    cmpg-float v0, v0, v12

    if-gez v0, :cond_b

    iget v0, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v5}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v6, Landroid/graphics/Rect;->left:I

    :cond_b
    if-eqz v10, :cond_c

    iget v0, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v8

    iput v0, v6, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->l:F

    cmpl-float v1, v1, v12

    if-lez v1, :cond_c

    invoke-virtual {p0, v5}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->a(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v6, Landroid/graphics/Rect;->left:I

    :cond_c
    if-eqz v11, :cond_e

    if-eqz v9, :cond_d

    iget v0, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v7

    iput v0, v6, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->l:F

    cmpg-float v1, v1, v12

    if-gez v1, :cond_d

    invoke-virtual {p0, v5}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v6, Landroid/graphics/Rect;->right:I

    :cond_d
    if-eqz v10, :cond_e

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->l:F

    cmpl-float v0, v0, v12

    if-lez v0, :cond_e

    iget v0, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v5}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->a(I)I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, v6, Landroid/graphics/Rect;->right:I

    :cond_e
    return-object v6
.end method

.method public final c(F)I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ic_drag_up_state_complete:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ic_drag_up_state_full:I

    :goto_0
    return p0
.end method

.method public final clearPageMargin()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->viewDragView:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->isVerticalOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->bottomLayout:Lcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;->templateThumbnail:Lcom/onyx/galaxy/note/editor/view/custom/PageMarginView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageMarginView;->clearPageMargin()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->rightLayout:Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;->templateThumbnail:Lcom/onyx/galaxy/note/editor/view/custom/PageMarginView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageMarginView;->clearPageMargin()V

    :goto_0
    return-void
.end method

.method public final d(F)I
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$string;->release_to_add_new_page:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/galaxy/note/R$string;->pull_to_add_new_page:I

    :goto_0
    return p0
.end method

.method public final e()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->setBinding(Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->editorView:Lcom/onyx/android/sdk/universal/editor/display/EditorView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->editorViewFocusRect:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const-string v2, "editorViewFocusRect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->setFocusRectView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->viewDragView:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->setCallback(Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;)V

    return-void
.end method

.method public final f()Z
    .locals 1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->f:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->bottomLayout:Lcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const-string v2, "getRoot(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->rightLayout:Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->h([Landroid/view/View;)V

    invoke-virtual {p0, v3, v3}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->m(II)V

    return-void
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->binding:Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEditorView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->editorView:Lcom/onyx/android/sdk/universal/editor/display/EditorView;

    const-string v0, "editorView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEditorViewDragLayoutBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public final getEditorViewLockLayout()Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->editorViewLockLayout:Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;

    const-string v0, "editorViewLockLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getPageScroller()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->pageScroller:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    const-string v0, "pageScroller"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getShapesLocationBar()Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->shapesLocationBar:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;

    const-string v0, "shapesLocationBar"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final varargs h([Landroid/view/View;)V
    .locals 4

    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    neg-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    neg-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->bottomLayout:Lcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getMaxThreshold()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->f:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->bottomLayout:Lcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;->stateImage:Lcom/onyx/galaxy/note/editor/view/drag/DragProgressView;

    const-string v1, "stateImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->f:F

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->k(Lcom/onyx/galaxy/note/editor/view/drag/DragProgressView;F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->bottomLayout:Lcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;->stateText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "stateText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->f:F

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->l(Landroid/widget/TextView;F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->bottomLayout:Lcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;->allowUp:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->f()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->bottomLayout:Lcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final j(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->rightLayout:Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getMaxThreshold()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->f:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->rightLayout:Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;->stateImage:Lcom/onyx/galaxy/note/editor/view/drag/DragProgressView;

    const-string v1, "stateImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->f:F

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->k(Lcom/onyx/galaxy/note/editor/view/drag/DragProgressView;F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->rightLayout:Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;->stateText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "stateText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->f:F

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->l(Landroid/widget/TextView;F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->rightLayout:Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;->allowLeft:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->f()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->rightLayout:Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public final k(Lcom/onyx/galaxy/note/editor/view/drag/DragProgressView;F)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->c(F)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/drag/DragProgressView;->setProgress(F)V

    return-void
.end method

.method public final l(Landroid/widget/TextView;F)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->d(F)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final loadPaperTemplate(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->viewDragView:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->isVerticalOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->bottomLayout:Lcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;->templateThumbnail:Lcom/onyx/galaxy/note/editor/view/custom/PageMarginView;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->rightLayout:Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;->templateThumbnail:Lcom/onyx/galaxy/note/editor/view/custom/PageMarginView;

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;->loadPaperTemplate$default(Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Landroid/util/Size;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final m(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->viewDragView:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->isVerticalOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->i(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->j(I)V

    :goto_0
    return-void
.end method

.method public final refreshPageScrollerLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->pageScroller:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->b()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->setMotionRegion(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->pageScroller:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->refreshOrientation()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->pageScroller:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->notifyViewDataChange()V

    return-void
.end method

.method public final requestDragViewInterceptTouchEvent()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->viewDragView:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final setBinding(Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->binding:Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    return-void
.end method

.method public final setCallback(Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->e:Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    return-void
.end method

.method public final setContainerTranslationX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->l:F

    return-void
.end method

.method public final setLayoutType(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->viewDragView:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->pageScroller:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->getViewData()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->setVertical(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->pageScroller:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->refreshOrientation()V

    return-void
.end method

.method public final setLeftSideBarRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->k:Landroid/graphics/Rect;

    return-void
.end method

.method public final setPageMargin(Lcom/onyx/android/sdk/geometry/data/MarginPercent;Lcom/onyx/android/sdk/geometry/data/MarginStyle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/MarginPercent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/MarginStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "marginPercent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "marginStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->viewDragView:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->isVerticalOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->bottomLayout:Lcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;->templateThumbnail:Lcom/onyx/galaxy/note/editor/view/custom/PageMarginView;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->rightLayout:Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;->templateThumbnail:Lcom/onyx/galaxy/note/editor/view/custom/PageMarginView;

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/PageMarginView;->setPageMargin(Lcom/onyx/android/sdk/geometry/data/MarginPercent;Lcom/onyx/android/sdk/geometry/data/MarginStyle;)V

    return-void
.end method

.method public final setRightSideBarRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->j:Landroid/graphics/Rect;

    return-void
.end method

.method public final setToolBarRectWidth(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->i:I

    return-void
.end method

.method public final showPageNumView(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->pageNumView:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final updatePageNum(II)V
    .locals 3

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->g:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->h:I

    if-eq v0, p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->pageNumView:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d/%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->g:I

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->h:I

    :cond_1
    return-void
.end method

.method public final updateScrollerViewData(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->pageScroller:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->setViewData(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->pageScroller:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->notifyViewDataChange()V

    return-void
.end method
