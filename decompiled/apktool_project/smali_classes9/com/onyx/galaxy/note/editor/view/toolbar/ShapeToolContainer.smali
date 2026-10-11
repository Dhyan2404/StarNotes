.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeToolContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeToolContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,245:1\n1864#2,3:246\n1313#3,2:249\n*S KotlinDebug\n*F\n+ 1 ShapeToolContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer\n*L\n59#1:246,3\n80#1:249,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u00017B\u0011\u0008\u0016\u0012\u0006\u00101\u001a\u000200\u00a2\u0006\u0004\u00082\u00103B\u001d\u0008\u0016\u0012\u0006\u00101\u001a\u000200\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0004\u00082\u00104B%\u0008\u0016\u0012\u0006\u00101\u001a\u000200\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\u0006\u00105\u001a\u00020\u0019\u00a2\u0006\u0004\u00082\u00106J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0014\u0010\u000b\u001a\u00020\u00042\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\tJ\u0014\u0010\u000f\u001a\u00020\u00042\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cJ\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010J\u0010\u0010\u0014\u001a\u00020\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\rJ\u0016\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0010J\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017J\u000e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001c\u001a\u00020\rJ\u000e\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\rJ\u0012\u0010!\u001a\u00020\u00042\u0008\u0010 \u001a\u0004\u0018\u00010\u001fH\u0002J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0002H\u0002J\u0010\u0010$\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u0002H\u0002J\u0010\u0010%\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u0002H\u0002J\u0010\u0010&\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u0002H\u0002J\u0018\u0010)\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020\u00022\u0006\u0010(\u001a\u00020\u0002H\u0002R\u0016\u0010,\u001a\u00020*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010+R\u001e\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010-R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010/\u00a8\u00068"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;",
        "Landroid/widget/LinearLayout;",
        "Landroid/view/View;",
        "clickView",
        "",
        "setSelectedChildView",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;",
        "listener",
        "setItemClickListener",
        "Lkotlin/Function0;",
        "callBack",
        "addChildViewChangeCallback",
        "",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "list",
        "addAllChildView",
        "",
        "enable",
        "enableShapeIconViews",
        "toolType",
        "setSelectByType",
        "select",
        "updateSelectByType",
        "Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;",
        "getSelectShapeToolType",
        "",
        "color",
        "setSelectedColorChange",
        "shapeToolType",
        "findViewByType",
        "ensureShapeToolViewVisible",
        "Landroid/util/AttributeSet;",
        "attrs",
        "h",
        "view",
        "f",
        "g",
        "d",
        "e",
        "parentView",
        "targetView",
        "i",
        "",
        "F",
        "iconMargin",
        "Lkotlin/jvm/functions/Function0;",
        "childViewChangeCallback",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyle",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "IShapeClickListener",
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
        "SMAP\nShapeToolContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeToolContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,245:1\n1864#2,3:246\n1313#3,2:249\n*S KotlinDebug\n*F\n+ 1 ShapeToolContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer\n*L\n59#1:246,3\n80#1:249,2\n*E\n"
    }
.end annotation


# instance fields
.field public e:F

.field public f:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p1, 0x10

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->h(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->c(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->j(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static final c(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->f(Landroid/view/View;)V

    return-void
.end method

.method public static final j(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    const-string v0, "$targetView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$parentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    aget v1, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, v1

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-le p0, v4, :cond_3

    sub-int v1, p0, v4

    goto :goto_1

    :cond_1
    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    aget v1, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, v1

    if-ge v1, v0, :cond_2

    :goto_0
    sub-int/2addr v1, v0

    goto :goto_1

    :cond_2
    if-le p0, v2, :cond_3

    sub-int v1, p0, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->scrollBy(II)V

    return-void
.end method

.method private final setSelectedChildView(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    invoke-interface {v4}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v5

    sget-object v6, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->RULER:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-eq v5, v6, :cond_1

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v4, v3, v1, v5, v6}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt$DefaultImpls;->setViewSelect$default(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;ZZILjava/lang/Object;)V

    :cond_1
    if-eq v2, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final addAllChildView(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->isShapeToolGroup()Z

    move-result v3

    const-string v4, "getContext(...)"

    if-eqz v3, :cond_1

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;-><init>(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {v3, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->setShapeTool(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->e:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_2
    new-instance v0, Lcom/sunia/HTREnginev2/gmm;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/gmm;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;)V

    invoke-static {v3, v0}, Lcom/onyx/android/sdk/extension/ViewKt;->shortClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->f:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final addChildViewChangeCallback(Lkotlin/jvm/functions/Function0;)V
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

    const-string v0, "callBack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final d(Landroid/view/View;)Z
    .locals 1

    instance-of p0, p1, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->getDISABLE_SELECT_SHAPE_TOOL_TYPES()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final e(Landroid/view/View;)Z
    .locals 1

    instance-of p0, p1, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->getDISABLE_SELECT_SHAPE_TOOL_TYPES()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final enableShapeIconViews(Z)V
    .locals 1

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$enableShapeIconViews$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$enableShapeIconViews$1;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$enableShapeIconViews$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$enableShapeIconViews$2;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    invoke-interface {v0, p1}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->enableShapeView(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ensureShapeToolViewVisible(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapeToolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->findViewByType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getParentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->i(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->g:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;->onDoubleClicked(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V

    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    invoke-interface {v0}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->isVipType()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->g:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;->onVipItemClicked(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->g:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;->onNormalItemClicked(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->setSelectedChildView(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public final findViewByType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)Landroid/view/View;
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "shapeToolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    invoke-interface {v3}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final g(Landroid/view/View;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    move v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    invoke-interface {v4}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->isViewSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    instance-of v5, p1, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    if-eqz v5, :cond_0

    invoke-interface {v4}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v4

    move-object v5, p1

    check-cast v5, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    invoke-interface {v5}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v5

    if-ne v4, v5, :cond_1

    :cond_0
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    if-eq v2, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final getSelectShapeToolType()Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    invoke-interface {v2}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->isViewSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final h(Landroid/util/AttributeSet;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/R$styleable;->ShapeToolContainer:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShapeToolContainer_iconMargin:I

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_4:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->e:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final i(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    new-instance p0, Lcom/sunia/HTREnginev2/hmm;

    invoke-direct {p0, p2, p1}, Lcom/sunia/HTREnginev2/hmm;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setItemClickListener(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->g:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;

    return-void
.end method

.method public final setSelectByType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 7
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->e(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v3, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    invoke-interface {v3}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v4

    if-ne v4, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v1, v5, v6}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt$DefaultImpls;->setViewSelect$default(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;ZZILjava/lang/Object;)V

    :cond_1
    if-eq v2, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->ensureShapeToolViewVisible(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    :cond_3
    return-void
.end method

.method public final setSelectedColorChange(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    invoke-interface {v2}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->isViewSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, p1}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->setHintColor(I)V

    :cond_0
    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateSelectByType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Z)V
    .locals 6
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "toolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    invoke-interface {v3}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v4

    if-ne v4, p1, :cond_0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, p2, v1, v4, v5}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt$DefaultImpls;->setViewSelect$default(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;ZZILjava/lang/Object;)V

    :cond_0
    if-eq v2, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
