.class public final Lcom/onyx/galaxy/note/common/view/GuideTipsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/common/view/GuideTipsView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGuideTipsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GuideTipsView.kt\ncom/onyx/galaxy/note/common/view/GuideTipsView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,130:1\n256#2,2:131\n277#2,2:133\n256#2,2:135\n256#2,2:137\n256#2,2:139\n256#2,2:141\n256#2,2:143\n256#2,2:145\n256#2,2:147\n256#2,2:149\n256#2,2:151\n256#2,2:153\n256#2,2:155\n256#2,2:157\n256#2,2:159\n*S KotlinDebug\n*F\n+ 1 GuideTipsView.kt\ncom/onyx/galaxy/note/common/view/GuideTipsView\n*L\n85#1:131,2\n89#1:133,2\n90#1:135,2\n94#1:137,2\n104#1:139,2\n108#1:141,2\n112#1:143,2\n116#1:145,2\n122#1:147,2\n123#1:149,2\n124#1:151,2\n125#1:153,2\n126#1:155,2\n127#1:157,2\n128#1:159,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010%\u001a\u00020$\u00a2\u0006\u0004\u0008&\u0010\'B\u001b\u0008\u0016\u0012\u0006\u0010%\u001a\u00020$\u0012\u0008\u0010)\u001a\u0004\u0018\u00010(\u00a2\u0006\u0004\u0008&\u0010*B#\u0008\u0016\u0012\u0006\u0010%\u001a\u00020$\u0012\u0008\u0010)\u001a\u0004\u0018\u00010(\u0012\u0006\u0010+\u001a\u00020\u0010\u00a2\u0006\u0004\u0008&\u0010,J)\u0010\t\u001a\u00020\u00072!\u0010\u0008\u001a\u001d\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0002J\u0016\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cJ\u0008\u0010\u000f\u001a\u00020\u0007H\u0002J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010\u0013\u001a\u00020\u0007H\u0002J\u0010\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010\u0016\u001a\u00020\u0007H\u0002R\"\u0010\u0018\u001a\u00020\u00178\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u001eR\u0016\u0010\r\u001a\u00020\u000c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u001fR\u0016\u0010\u0006\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010 R3\u0010#\u001a\u001f\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/view/GuideTipsView;",
        "Landroid/widget/FrameLayout;",
        "Lkotlin/Function1;",
        "Landroid/graphics/PointF;",
        "Lkotlin/ParameterName;",
        "name",
        "indicatorOffset",
        "",
        "callback",
        "setIndicatorOffsetCallback",
        "Lcom/onyx/android/sdk/data/common/data/GuideInfo;",
        "guideInfo",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dockType",
        "setViewData",
        "d",
        "",
        "contentStyle",
        "e",
        "b",
        "f",
        "g",
        "c",
        "Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;",
        "setBinding",
        "(Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;)V",
        "Lcom/onyx/android/sdk/data/common/data/GuideInfo;",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "Landroid/graphics/PointF;",
        "h",
        "Lkotlin/jvm/functions/Function1;",
        "indicatorOffsetCallback",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
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
        "SMAP\nGuideTipsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GuideTipsView.kt\ncom/onyx/galaxy/note/common/view/GuideTipsView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,130:1\n256#2,2:131\n277#2,2:133\n256#2,2:135\n256#2,2:137\n256#2,2:139\n256#2,2:141\n256#2,2:143\n256#2,2:145\n256#2,2:147\n256#2,2:149\n256#2,2:151\n256#2,2:153\n256#2,2:155\n256#2,2:157\n256#2,2:159\n*S KotlinDebug\n*F\n+ 1 GuideTipsView.kt\ncom/onyx/galaxy/note/common/view/GuideTipsView\n*L\n85#1:131,2\n89#1:133,2\n90#1:135,2\n94#1:137,2\n104#1:139,2\n108#1:141,2\n112#1:143,2\n116#1:145,2\n122#1:147,2\n123#1:149,2\n124#1:151,2\n125#1:153,2\n126#1:155,2\n127#1:157,2\n128#1:159,2\n*E\n"
    }
.end annotation


# instance fields
.field public binding:Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

.field public e:Lcom/onyx/android/sdk/data/common/data/GuideInfo;

.field public f:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

.field public g:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/PointF;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

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
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->g:Landroid/graphics/PointF;

    .line 5
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/common/view/GuideTipsView;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->setViewStyle$lambda$0(Lcom/onyx/galaxy/note/common/view/GuideTipsView;)V

    return-void
.end method

.method private static final setViewStyle$lambda$0(Lcom/onyx/galaxy/note/common/view/GuideTipsView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    const/4 v1, 0x0

    const-string v2, "dockType"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget-object v3, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    sget-object v3, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne v0, v3, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->g:Landroid/graphics/PointF;

    iput v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->tipsContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object v6

    iget-object v6, v6, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->tipsContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    iget-object v6, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->g:Landroid/graphics/PointF;

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iput v0, v6, Landroid/graphics/PointF;->x:F

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    sget-object v3, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->LEFT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne v1, v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->g:Landroid/graphics/PointF;

    iput v5, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->tipsContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->tipsContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->g:Landroid/graphics/PointF;

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/PointF;->y:F

    :cond_7
    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->h:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->g:Landroid/graphics/PointF;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->indicatorLeft:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "indicatorLeft"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->indicatorTop:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "indicatorTop"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->indicatorRight:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "indicatorRight"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->indicatorBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "indicatorBottom"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->ivStyle01:Landroid/widget/ImageView;

    const-string v2, "ivStyle01"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->ivStyle02:Landroid/widget/ImageView;

    const-string v2, "ivStyle02"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->ivStyle03:Landroid/widget/ImageView;

    const-string v0, "ivStyle03"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->setBinding(Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;)V

    return-void
.end method

.method public final e(ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->c()V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->g(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->f(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->tipsContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/sunia/HTREnginev2/l6h;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/l6h;-><init>(Lcom/onyx/galaxy/note/common/view/GuideTipsView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f(I)V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    const-string v3, "ivStyle01"

    const/4 v4, 0x0

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->ivStyle03:Landroid/widget/ImageView;

    const-string v2, "ivStyle03"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p1

    float-to-int v4, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->ivStyle01:Landroid/widget/ImageView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->ivStyle02:Landroid/widget/ImageView;

    const-string v0, "ivStyle02"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->ivStyle01:Landroid/widget/ImageView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public final g(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/common/view/GuideTipsView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->indicatorBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string p1, "indicatorBottom"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->indicatorRight:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string p1, "indicatorRight"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->indicatorTop:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string p1, "indicatorTop"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->indicatorLeft:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string p1, "indicatorLeft"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->binding:Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setBinding(Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->binding:Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    return-void
.end method

.method public final setIndicatorOffsetCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/PointF;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->h:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setViewData(Lcom/onyx/android/sdk/data/common/data/GuideInfo;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/common/data/GuideInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "guideInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->e:Lcom/onyx/android/sdk/data/common/data/GuideInfo;

    iput-object p2, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->getBinding()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/GuideInfo;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/GuideInfo;->getContentStyle()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/GuideTipsView;->e(ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    return-void
.end method
