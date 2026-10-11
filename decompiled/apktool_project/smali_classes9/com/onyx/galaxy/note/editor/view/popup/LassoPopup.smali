.class public final Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLassoPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LassoPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LassoPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,155:1\n1855#2,2:156\n*S KotlinDebug\n*F\n+ 1 LassoPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LassoPopup\n*L\n121#1:156,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 (2\u00020\u0001:\u0001(B\u001f\u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010\u0015\u001a\u00020\u0011\u0012\u0006\u0010%\u001a\u00020$\u00a2\u0006\u0004\u0008&\u0010\'J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0003J\u000e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006J\u0008\u0010\n\u001a\u00020\u0004H\u0002J\u0008\u0010\u000b\u001a\u00020\u0004H\u0002J\u0008\u0010\u000c\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002R\u0017\u0010\u0015\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u001a\u001a\u00020\u00168FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001e\u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0017\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010 \u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;",
        "event",
        "",
        "reportLassoEvent",
        "",
        "isShowing",
        "Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;",
        "makeReportData",
        "n",
        "r",
        "q",
        "",
        "lassoType",
        "s",
        "t",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;",
        "m",
        "()Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;",
        "lassoAdapter",
        "Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;",
        "Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;",
        "lassoProperty",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dockType",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V",
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
        "SMAP\nLassoPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LassoPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LassoPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,155:1\n1855#2,2:156\n*S KotlinDebug\n*F\n+ 1 LassoPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LassoPopup\n*L\n121#1:156,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->r:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$lassoAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$lassoAdapter$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->s:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getLassoProperty()Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->t:Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->r()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->n()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->q()V

    return-void
.end method

.method public static final synthetic access$getLassoAdapter(Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->m()Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLassoProperty$p(Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;)Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->t:Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;

    return-object p0
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->p(Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->o(Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->s(I)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->s(I)V

    return-void
.end method

.method private final reportLassoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const-string v0, "view"

    const/4 v1, 0x0

    const-string v2, "view_galaxy_lasso_param_0001"

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportShowPopupMenuEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->r:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final m()Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->s:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;

    return-object p0
.end method

.method public final makeReportData(Z)Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;
    .locals 18
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    const-string v1, "view_galaxy_lasso_param_0001"

    goto :goto_0

    :cond_0
    const-string v1, "click_galaxy_lasso_param_0001"

    :goto_0
    move-object v4, v1

    if-eqz p1, :cond_1

    const-string v1, "view"

    goto :goto_1

    :cond_1
    const-string v1, "click"

    :goto_1
    move-object v5, v1

    new-instance v1, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;

    iget-object v3, v0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1ff8

    const/16 v17, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->t:Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;->getLassoType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    invoke-virtual {v1, v4}, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->setFreeLasso(Z)V

    invoke-virtual {v1, v3}, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->setRectLasso(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v3}, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->setFreeLasso(Z)V

    invoke-virtual {v1, v4}, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->setRectLasso(Z)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->m()Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;->getSelectList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_a

    const/4 v3, 0x5

    if-eq v2, v3, :cond_9

    const/16 v3, 0x13

    if-eq v2, v3, :cond_8

    const/16 v3, 0x21

    if-eq v2, v3, :cond_7

    const/16 v3, 0x27

    if-eq v2, v3, :cond_6

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_5

    const/16 v3, 0xf

    if-eq v2, v3, :cond_4

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v4}, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->setTextBox(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v4}, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->setHighLighter(Z)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v4}, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->setTag(Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v4}, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->setTape(Z)V

    goto :goto_3

    :cond_7
    invoke-virtual {v1, v4}, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->setLink(Z)V

    goto :goto_3

    :cond_8
    invoke-virtual {v1, v4}, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->setPic(Z)V

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v4}, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->setHandwriting(Z)V

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v4}, Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;->setShape(Z)V

    goto :goto_3

    :cond_b
    return-object v1
.end method

.method public final n()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;->lassoContainer:Lcom/onyx/galaxy/note/databinding/IncludePopupLassoContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludePopupLassoContainerBinding;->freeLassoType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/fvi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/fvi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;->lassoContainer:Lcom/onyx/galaxy/note/databinding/IncludePopupLassoContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludePopupLassoContainerBinding;->rectangleLassoType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/gvi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gvi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final q()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$initReportListener$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$initReportListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final r()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->t:Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;->getLassoType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->t(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;->lassoContainer:Lcom/onyx/galaxy/note/databinding/IncludePopupLassoContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludePopupLassoContainerBinding;->lassoElementList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;->lassoContainer:Lcom/onyx/galaxy/note/databinding/IncludePopupLassoContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludePopupLassoContainerBinding;->lassoElementList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->m()Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->m()Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->t:Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;->getLassoElementsOption()Lcom/onyx/android/sdk/data/utils/JSONListOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;->initSelectList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->m()Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;

    move-result-object v0

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/LassoElementType;->values()[Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->m()Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$initView$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$initView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;->setClickCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final s(I)V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$Companion;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->t:Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;

    invoke-virtual {v0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$Companion;->onLassoTypeSelected(Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;I)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->t(I)V

    return-void
.end method

.method public final t(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;->lassoContainer:Lcom/onyx/galaxy/note/databinding/IncludePopupLassoContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludePopupLassoContainerBinding;->freeLassoType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;->lassoContainer:Lcom/onyx/galaxy/note/databinding/IncludePopupLassoContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/IncludePopupLassoContainerBinding;->rectangleLassoType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
