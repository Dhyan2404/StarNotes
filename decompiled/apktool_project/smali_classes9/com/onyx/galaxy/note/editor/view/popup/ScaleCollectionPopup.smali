.class public final Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\'\u001a\u00020&\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0010\u0008\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0014\u00a2\u0006\u0004\u0008(\u0010)J\u0006\u0010\u0003\u001a\u00020\u0002J\u001e\u0010\t\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002R\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "updateScaleList",
        "Landroid/view/View;",
        "root",
        "",
        "anchorViewCenterX",
        "anchorViewBottomY",
        "showAsDropDownCenter",
        "o",
        "n",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "r",
        "F",
        "currentScale",
        "Lkotlin/Function0;",
        "s",
        "Lkotlin/jvm/functions/Function0;",
        "deleteCallback",
        "Lcom/onyx/galaxy/note/databinding/PopupScaleCollectionBinding;",
        "t",
        "Lkotlin/Lazy;",
        "m",
        "()Lcom/onyx/galaxy/note/databinding/PopupScaleCollectionBinding;",
        "binding",
        "Lcom/onyx/android/sdk/data/utils/FloatListOption;",
        "u",
        "Lcom/onyx/android/sdk/data/utils/FloatListOption;",
        "scaleListOption",
        "Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;",
        "v",
        "Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;",
        "scaleAdapter",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;FLkotlin/jvm/functions/Function0;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:F

.field public s:Lkotlin/jvm/functions/Function0;
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

.field public final t:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lcom/onyx/android/sdk/data/utils/FloatListOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;FLkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "F",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 4
    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->r:F

    .line 5
    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->s:Lkotlin/jvm/functions/Function0;

    .line 6
    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->t:Lkotlin/Lazy;

    .line 7
    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getScaleCollection()Lcom/onyx/android/sdk/data/utils/FloatListOption;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->u:Lcom/onyx/android/sdk/data/utils/FloatListOption;

    .line 8
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;

    .line 9
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->o()V

    .line 10
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->n()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;FLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;FLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->p(Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->q(Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->u:Lcom/onyx/android/sdk/data/utils/FloatListOption;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/FloatListOption;->get()Lcom/onyx/android/sdk/base/extension/FloatList;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "get(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;->getMinScale()F

    move-result p2

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;->setCurrentScale(F)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentMinScale(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)F

    move-result p2

    mul-float v1, p2, p1

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/events/note/QuitPendingHandlerEvent;

    invoke-direct {p2}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitPendingHandlerEvent;-><init>()V

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleReset;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleReset;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->u:Lcom/onyx/android/sdk/data/utils/FloatListOption;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/FloatListOption;->get()Lcom/onyx/android/sdk/base/extension/FloatList;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/extension/FloatList;->remove(Ljava/lang/Object;)Z

    sget-object p2, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getScaleCollection()Lcom/onyx/android/sdk/data/utils/FloatListOption;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/data/utils/FloatListOption;->put(Lcom/onyx/android/sdk/base/extension/FloatList;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->n()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->s:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public final m()Lcom/onyx/galaxy/note/databinding/PopupScaleCollectionBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->t:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupScaleCollectionBinding;

    return-object p0
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->u:Lcom/onyx/android/sdk/data/utils/FloatListOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/FloatListOption;->get()Lcom/onyx/android/sdk/base/extension/FloatList;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupScaleCollectionBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupScaleCollectionBinding;->tvNoCollection:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final o()V
    .locals 15

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupScaleCollectionBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/PopupWindowKt;->setDefaultAttribute(Landroid/widget/PopupWindow;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->scaleRange(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lorg/apache/commons/lang3/Range;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getMinimum(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;->setMinScale(F)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/f1m;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/f1m;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->setOnDebouncedItemClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;JLcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;

    sget v9, Lcom/onyx/galaxy/note/R$id;->iv_delete:I

    const-wide/16 v10, 0x0

    new-instance v12, Lcom/sunia/HTREnginev2/g1m;

    invoke-direct {v12, p0}, Lcom/sunia/HTREnginev2/g1m;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;)V

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupScaleCollectionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupScaleCollectionBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupScaleCollectionBinding;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupScaleCollectionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupScaleCollectionBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->r:F

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;->setCurrentScale(F)V

    return-void
.end method

.method public final showAsDropDownCenter(Landroid/view/View;II)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_20:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const-string v2, "getContentView(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4, v4, v2, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    sub-int/2addr p2, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr p2, v0

    sub-int/2addr p3, v0

    invoke-virtual {p0, p1, v4, p2, p3}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public final updateScaleList()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->u:Lcom/onyx/android/sdk/data/utils/FloatListOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/FloatListOption;->get()Lcom/onyx/android/sdk/base/extension/FloatList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupScaleCollectionBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupScaleCollectionBinding;->tvNoCollection:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScaleCollectionPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method
