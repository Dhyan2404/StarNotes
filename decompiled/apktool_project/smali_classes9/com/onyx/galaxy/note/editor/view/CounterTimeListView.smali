.class public final Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;
.super Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010%\u001a\u00020$\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010&\u00a2\u0006\u0004\u0008(\u0010)J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cJ\u0006\u0010\u000f\u001a\u00020\u0004J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001dR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0011\u0010\"\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;",
        "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "counterEntry",
        "",
        "setCounterEntry",
        "",
        "visible",
        "setVisible",
        "isExpand",
        "setExpand",
        "updateData",
        "Landroid/view/MotionEvent;",
        "event",
        "interceptTouchEventIf",
        "resetState",
        "d",
        "c",
        "Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;",
        "h",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/adapter/CountUpTimeListPopupAdapter;",
        "i",
        "Lcom/onyx/galaxy/note/editor/view/adapter/CountUpTimeListPopupAdapter;",
        "adapter",
        "j",
        "Z",
        "isVisible",
        "k",
        "l",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "isEnableAutoCollapse",
        "()Z",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attributeSet",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
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
.field public final h:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/galaxy/note/editor/view/adapter/CountUpTimeListPopupAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field public l:Lcom/onyx/galaxy/note/editor/data/CounterEntry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->h:Lkotlin/Lazy;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->j:Z

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->k:Z

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->getBinding()Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->shape_counter_popup_btn_bg:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "mutate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->getBinding()Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;->tvCollapse:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->d()V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->getBinding()Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;->rvTimeList:Lcom/onyx/galaxy/note/ui/view/ExpandToMaxHeightRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1, p2, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/CountUpTimeListPopupAdapter;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CountUpTimeListPopupAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->i:Lcom/onyx/galaxy/note/editor/view/adapter/CountUpTimeListPopupAdapter;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->getBinding()Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;->rvTimeList:Lcom/onyx/galaxy/note/ui/view/ExpandToMaxHeightRecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->getBinding()Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;->rvTimeList:Lcom/onyx/galaxy/note/ui/view/ExpandToMaxHeightRecyclerView;

    sget-object p2, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/CounterTimeListView$1;

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/ui/view/ThemeRecyclerView;->addItemDecoration(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->updateData()V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->e(Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;Landroid/view/View;)V

    return-void
.end method

.method public static final e(Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->k:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->k:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->updateData()V

    return-void
.end method

.method private final getBinding()Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;

    return-object p0
.end method


# virtual methods
.method public final c(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->getCountTimes()I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCountUp()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->hasStart()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d()V
    .locals 7

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->getBinding()Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;->tvCollapse:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvCollapse"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/cfe;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/cfe;-><init>(Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final interceptTouchEventIf(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->getBinding()Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;->rvTimeList:Lcom/onyx/galaxy/note/ui/view/ExpandToMaxHeightRecyclerView;

    const-string v0, "rvTimeList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method public final isEnableAutoCollapse()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->i:Lcom/onyx/galaxy/note/editor/view/adapter/CountUpTimeListPopupAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$integer;->counter_time_list_max_num:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isExpand()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->k:Z

    return p0
.end method

.method public final resetState()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->k:Z

    return-void
.end method

.method public final setCounterEntry(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/CounterEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "counterEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->l:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    return-void
.end method

.method public final setExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->k:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->updateData()V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->j:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->updateData()V

    return-void
.end method

.method public final updateData()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->l:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->c(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->j:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->getBinding()Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;->tvCollapse:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-boolean v3, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->k:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/onyx/galaxy/note/R$string;->counter_time_list_collapse:I

    goto :goto_1

    :cond_2
    sget v3, Lcom/onyx/galaxy/note/R$string;->counter_time_list_expand:I

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->k:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryRecord()Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->getTimeList()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryRecord()Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->getTimeList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_2
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->i:Lcom/onyx/galaxy/note/editor/view/adapter/CountUpTimeListPopupAdapter;

    iget-boolean v4, p0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->k:Z

    if-eqz v4, :cond_4

    const/4 v0, -0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryRecord()Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->getTimeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_3
    invoke-virtual {v3, v1, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/CountUpTimeListPopupAdapter;->setData(Ljava/util/List;I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->getBinding()Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/CounterTimeListViewBinding;->rvTimeList:Lcom/onyx/galaxy/note/ui/view/ExpandToMaxHeightRecyclerView;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView$updateData$1;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView$updateData$1;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
