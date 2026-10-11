.class public Lcom/onyx/android/sdk/ui/BasePopWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/ui/BasePopWindow$Companion;,
        Lcom/onyx/android/sdk/ui/BasePopWindow$PopupWindowChangeEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 R2\u00020\u0001:\u0002RSB\u0011\u0012\u0008\u0010O\u001a\u0004\u0018\u00010N\u00a2\u0006\u0004\u0008P\u0010QJ+\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002J$\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0002J\u0008\u0010\u0014\u001a\u00020\u0013H\u0016J(\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u000fH\u0016J*\u0010\u001c\u001a\u00020\u00132\u0008\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000fH\u0016J\u0008\u0010\u001d\u001a\u00020\u0013H\u0016J\u0008\u0010\u001e\u001a\u00020\u0013H\u0016J\u0006\u0010\u001f\u001a\u00020\u0013J\u0016\u0010!\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u000cJ\u0016\u0010!\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u0007J\u000e\u0010!\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\nJ\u000e\u0010#\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\nJ)\u0010$\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00022\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008$\u0010%J\u000e\u0010\'\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010&J\u0008\u0010(\u001a\u0004\u0018\u00010\u0000J\u0010\u0010*\u001a\u00020\u00132\u0008\u0010)\u001a\u0004\u0018\u00010\u0000J\u0010\u0010,\u001a\u00020\u00132\u0006\u0010+\u001a\u00020\u0005H\u0004J\u000e\u0010-\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\nR$\u00104\u001a\u0004\u0018\u00010.8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\"\u0010:\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\"\u0010>\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u00105\u001a\u0004\u0008<\u00107\"\u0004\u0008=\u00109R\"\u0010?\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u00105\u001a\u0004\u0008?\u00107\"\u0004\u0008@\u00109R\"\u0010B\u001a\u00020\u00058\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u00105\u001a\u0004\u0008B\u00107\"\u0004\u0008C\u00109R\"\u0010G\u001a\u0010\u0012\u000c\u0012\n D*\u0004\u0018\u00010\u00000\u00000&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0018\u0010 \u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0018\u0010\"\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u001e\u0010M\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010F\u00a8\u0006T"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/BasePopWindow;",
        "Landroid/widget/PopupWindow;",
        "Landroid/graphics/Rect;",
        "anchorRect",
        "rangeArea",
        "",
        "canShowAtUp",
        "Landroid/graphics/Point;",
        "b",
        "(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Boolean;)Landroid/graphics/Point;",
        "Landroid/view/View;",
        "anchorView",
        "",
        "a",
        "anchor",
        "",
        "popWidth",
        "popHeight",
        "d",
        "",
        "dismiss",
        "parent",
        "gravity",
        "x",
        "y",
        "showAtLocation",
        "xoff",
        "yoff",
        "showAsDropDown",
        "onShow",
        "onPrepareShow",
        "dismissPopView",
        "location",
        "showDynamicPositionPopView",
        "p",
        "showDynamicPositionDropDown",
        "showCenterPositionPopView",
        "(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/Boolean;)V",
        "Ljava/lang/ref/WeakReference;",
        "getParentPopupReference",
        "getParentPopup",
        "parentPopup",
        "setParentPopup",
        "show",
        "windowChangeEvent",
        "showAsDropDownCenter",
        "Lorg/greenrobot/eventbus/EventBus;",
        "Lorg/greenrobot/eventbus/EventBus;",
        "getEventBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "setEventBus",
        "(Lorg/greenrobot/eventbus/EventBus;)V",
        "eventBus",
        "Z",
        "getShowAsLeft",
        "()Z",
        "setShowAsLeft",
        "(Z)V",
        "showAsLeft",
        "c",
        "getShowAsUp",
        "setShowAsUp",
        "showAsUp",
        "isShowScreenRight",
        "setShowScreenRight",
        "e",
        "isForceShowAtUp",
        "setForceShowAtUp",
        "kotlin.jvm.PlatformType",
        "f",
        "Ljava/lang/ref/WeakReference;",
        "basePopWindowWeakReference",
        "g",
        "[I",
        "h",
        "Landroid/graphics/Point;",
        "i",
        "parentPopupReference",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Companion",
        "PopupWindowChangeEvent",
        "sdk-uicommon_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/ui/BasePopWindow$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lcom/onyx/android/sdk/ui/ObjectHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/ui/ObjectHolder<",
            "Lcom/onyx/android/sdk/ui/BasePopWindow;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/onyx/android/sdk/ui/BasePopWindow;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/onyx/android/sdk/ui/BasePopWindow;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/ui/BasePopWindow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/BasePopWindow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/ui/BasePopWindow;->Companion:Lcom/onyx/android/sdk/ui/BasePopWindow$Companion;

    new-instance v0, Lcom/onyx/android/sdk/ui/ObjectHolder;

    invoke-direct {v0}, Lcom/onyx/android/sdk/ui/ObjectHolder;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/ui/BasePopWindow;->j:Lcom/onyx/android/sdk/ui/ObjectHolder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->f:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    sget-object p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->j:Lcom/onyx/android/sdk/ui/ObjectHolder;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/ObjectHolder;->add(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static final synthetic access$getDialogHolder$cp()Lcom/onyx/android/sdk/ui/ObjectHolder;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/ui/BasePopWindow;->j:Lcom/onyx/android/sdk/ui/ObjectHolder;

    return-object v0
.end method

.method public static synthetic c(Lcom/onyx/android/sdk/ui/BasePopWindow;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Boolean;ILjava/lang/Object;)Landroid/graphics/Point;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/ui/BasePopWindow;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Boolean;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getPositionOffsetRect"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic showCenterPositionPopView$default(Lcom/onyx/android/sdk/ui/BasePopWindow;Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/ui/BasePopWindow;->showCenterPositionPopView(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/Boolean;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showCenterPositionPopView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Landroid/view/View;)[I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->g:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->g:[I

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ViewUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ViewUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/ViewUtils;->getLocationInWindow(Landroid/view/View;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->g:[I

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->g:[I

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Boolean;)Landroid/graphics/Point;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getContentView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-ge v1, v3, :cond_0

    move v1, v3

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p3

    if-ge p2, p3, :cond_1

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p3

    if-le p2, p3, :cond_1

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    sub-int/2addr p2, p1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p1

    sub-int v2, p2, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->e:Z

    :cond_1
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public final d(Landroid/view/View;II)Landroid/graphics/Point;
    .locals 11

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/BasePopWindow;->a(Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getWindowDefaultHeight(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getWindowDefaultWidth(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    iget-boolean v6, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->b:Z

    if-eqz v6, :cond_1

    sub-int/2addr v3, p2

    :cond_1
    iget-boolean v7, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->c:Z

    if-eqz v7, :cond_2

    sub-int/2addr v5, p3

    :cond_2
    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    if-nez v6, :cond_3

    sub-int v6, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v6, v9

    if-ge v6, p2, :cond_3

    sub-int v3, v2, p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-double v9, v6

    div-double/2addr v9, v7

    double-to-int v6, v9

    sub-int/2addr v3, v6

    :cond_3
    iget-boolean v6, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->c:Z

    if-nez v6, :cond_4

    sub-int v0, v4, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v0, v6

    if-ge v0, p3, :cond_4

    sub-int/2addr v4, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int v5, v4, p3

    :cond_4
    iget-object p3, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->h:Landroid/graphics/Point;

    if-eqz p3, :cond_5

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p3, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, p3

    iget-object p3, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->h:Landroid/graphics/Point;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p3, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v5, p3

    :cond_5
    iget-boolean p3, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->d:Z

    if-eqz p3, :cond_7

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->h:Landroid/graphics/Point;

    if-eqz p0, :cond_6

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, p0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_6
    sub-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v2, p0

    if-ge v2, p2, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-double p0, p0

    div-double/2addr p0, v7

    double-to-int p0, p0

    add-int v3, p2, p0

    :cond_7
    :goto_0
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->windowChangeEvent(Z)V

    return-void
.end method

.method public final dismissPopView()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->dismiss()V

    return-void
.end method

.method public final getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->a:Lorg/greenrobot/eventbus/EventBus;

    return-object p0
.end method

.method public final getParentPopup()Lcom/onyx/android/sdk/ui/BasePopWindow;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->i:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/ui/BasePopWindow;

    :goto_0
    return-object p0
.end method

.method public final getParentPopupReference()Ljava/lang/ref/WeakReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/onyx/android/sdk/ui/BasePopWindow;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->i:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final getShowAsLeft()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->b:Z

    return p0
.end method

.method public final getShowAsUp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->c:Z

    return p0
.end method

.method public final isForceShowAtUp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->e:Z

    return p0
.end method

.method public final isShowScreenRight()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->d:Z

    return p0
.end method

.method public onPrepareShow()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->windowChangeEvent(Z)V

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method

.method public final setEventBus(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0
    .param p1    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->a:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public final setForceShowAtUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->e:Z

    return-void
.end method

.method public final setParentPopup(Lcom/onyx/android/sdk/ui/BasePopWindow;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ui/BasePopWindow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->i:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public final setShowAsLeft(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->b:Z

    return-void
.end method

.method public final setShowAsUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->c:Z

    return-void
.end method

.method public final setShowScreenRight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->d:Z

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->onPrepareShow()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->onShow()V

    return-void
.end method

.method public final showAsDropDownCenter(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anchorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getContentView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v1, v1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v2

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    neg-int v3, v0

    :cond_0
    invoke-virtual {p0, p1, v1, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->onPrepareShow()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->onShow()V

    return-void
.end method

.method public final showCenterPositionPopView(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rangeArea"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->windowVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/onyx/android/sdk/ui/BasePopWindow;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Boolean;)Landroid/graphics/Point;

    move-result-object p2

    iget p3, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/onyx/android/sdk/ui/BasePopWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public final showDynamicPositionDropDown(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public final showDynamicPositionPopView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/BasePopWindow;->a(Landroid/view/View;)[I

    .line 5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 8
    invoke-virtual {p0, p1, v0, v2}, Lcom/onyx/android/sdk/ui/BasePopWindow;->d(Landroid/view/View;II)Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v2, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->d:Z

    if-eqz v2, :cond_1

    const v1, 0x800035

    .line 10
    :cond_1
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public final showDynamicPositionPopView(Landroid/view/View;Landroid/graphics/Point;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->h:Landroid/graphics/Point;

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/BasePopWindow;->showDynamicPositionPopView(Landroid/view/View;)V

    return-void
.end method

.method public final showDynamicPositionPopView(Landroid/view/View;[I)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget p2, p2, v2

    invoke-direct {v0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->showDynamicPositionPopView(Landroid/view/View;Landroid/graphics/Point;)V

    return-void
.end method

.method public final windowChangeEvent(Z)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/BasePopWindow;->a:Lorg/greenrobot/eventbus/EventBus;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/ui/BasePopWindow$PopupWindowChangeEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/ui/BasePopWindow$PopupWindowChangeEvent;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
