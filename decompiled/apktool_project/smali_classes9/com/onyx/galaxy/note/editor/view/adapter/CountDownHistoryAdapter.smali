.class public final Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
        "Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCountDownHistoryAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CountDownHistoryAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,190:1\n256#2,2:191\n256#2,2:193\n254#2:195\n*S KotlinDebug\n*F\n+ 1 CountDownHistoryAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter\n*L\n58#1:191,2\n59#1:193,2\n86#1:195\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\r\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008/\u00100J(\u0010\n\u001a\u00020\t2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0015J&\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0002J\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0015\u001a\u00020\tJ\u0006\u0010\u0016\u001a\u00020\u0013J\u0006\u0010\u0017\u001a\u00020\u0013J\u000e\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u0019\u001a\u00020\tJ\u0006\u0010\u001a\u001a\u00020\u0013J\u0018\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0002H\u0002J\u0018\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u0002H\u0002J\u0008\u0010 \u001a\u00020\tH\u0002R\u0016\u0010#\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R(\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00020$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u0016\u0010.\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-\u00a8\u00061"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;",
        "holder",
        "",
        "position",
        "item",
        "",
        "onBindViewHolder",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "model",
        "onItemClick",
        "",
        "toggleSelectionMode",
        "toggleSelectAll",
        "isAllItemSelected",
        "hasItemContains",
        "onEditCountName",
        "quitEditAndSave",
        "getSelectionMode",
        "binding",
        "q",
        "Landroid/widget/EditText;",
        "edittext",
        "o",
        "quitEditMode",
        "r",
        "Z",
        "selectionMode",
        "",
        "s",
        "Ljava/util/List;",
        "getSelectedItems",
        "()Ljava/util/List;",
        "setSelectedItems",
        "(Ljava/util/List;)V",
        "selectedItems",
        "t",
        "I",
        "editingIndex",
        "<init>",
        "()V",
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
        "SMAP\nCountDownHistoryAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CountDownHistoryAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,190:1\n256#2,2:191\n256#2,2:193\n254#2:195\n*S KotlinDebug\n*F\n+ 1 CountDownHistoryAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter\n*L\n58#1:191,2\n59#1:193,2\n86#1:195\n*E\n"
    }
.end annotation


# instance fields
.field public r:Z

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->s:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->t:I

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->s(Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->p(Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->r(Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$binding"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x6

    if-ne p4, p3, :cond_0

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;->editCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const-string p3, "editCounterName"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->o(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->quitEditMode()V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt;->postNotifyDataSetChanged(Lcom/chad/library/adapter4/BaseQuickAdapter;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final s(Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;Landroid/view/View;Z)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p2, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;-><init>(Z)V

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->quitEditMode()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getSelectedItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->s:Ljava/util/List;

    return-object p0
.end method

.method public final getSelectionMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->r:Z

    return p0
.end method

.method public final hasItemContains()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->s:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final isAllItemSelected()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->s:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final o(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;)V
    .locals 8

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->t:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->setTitle(Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {v2, p2, v1, v0, v1}, Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->quitEditMode()V

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/kde;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/kde;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;)V
    .locals 11
    .param p1    # Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;",
            ">;I",
            "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;

    .line 3
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;->tvCountName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;->tvTotalTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v10, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->getDuration()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v2, v10

    invoke-static/range {v2 .. v9}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondExact$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;->tvTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_HHMM_2()Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDate(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;->checkbox:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v2, "checkbox"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->r:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    .line 7
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;->ivMoreOption:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v2, "ivMoreOption"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->r:Z

    const/4 v5, 0x1

    xor-int/2addr v2, v5

    if-eqz v2, :cond_2

    move v3, v4

    .line 9
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;->checkbox:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->s:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 11
    iget-object p1, v0, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;->flyInput:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->t:I

    if-ne v1, p2, :cond_3

    move v1, v5

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    invoke-static {p1, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    .line 12
    iget-object p1, v0, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;->tvCountName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->t:I

    if-eq v1, p2, :cond_4

    move v4, v5

    :cond_4
    invoke-static {p1, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->q(Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p0
.end method

.method public final onEditCountName(I)V
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->t:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public final onItemClick(Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->r:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->s:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->s:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->s:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final q(Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;)V
    .locals 6

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;->editCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter$LengthFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/galaxy/note/R$integer;->counter_name_max_length:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    check-cast v2, [Landroid/text/InputFilter;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;->editCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-instance v2, Lcom/sunia/HTREnginev2/lde;

    invoke-direct {v2, p0, p1, p2}, Lcom/sunia/HTREnginev2/lde;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;->editCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-instance v2, Lcom/sunia/HTREnginev2/mde;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/mde;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;->flyInput:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const-string v0, "flyInput"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    move v4, v1

    :cond_0
    if-eqz v4, :cond_1

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;->editCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;->editCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setSelection(I)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p2, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;

    invoke-direct {p2, v1}, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;-><init>(Z)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;->editCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const-string p1, "editCounterName"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postToShowInputKeyboardWithDelay(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final quitEditAndSave()V
    .locals 3

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->t:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->t:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/onyx/galaxy/note/R$id;->edit_counter_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->t:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->o(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->quitEditMode()V

    return-void
.end method

.method public final quitEditMode()V
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->t:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->t:I

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt;->notifyItemChangedSafety(Lcom/chad/library/adapter4/BaseQuickAdapter;I)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public final setSelectedItems(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->s:Ljava/util/List;

    return-void
.end method

.method public final toggleSelectAll()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->s:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->s:Ljava/util/List;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final toggleSelectionMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->r:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->r:Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->r:Z

    return p0
.end method
