.class public final Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
        "Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008,\u0010-J(\u0010\n\u001a\u00020\t2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0015J&\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u0014\u001a\u00020\u0006J\u0006\u0010\u0015\u001a\u00020\tJ\u0006\u0010\u0016\u001a\u00020\tJ\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u0019\u001a\u00020\tJ\u0008\u0010\u001a\u001a\u00020\tH\u0002J\u0010\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\u0002H\u0002R\u0016\u0010!\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010#\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010 R(\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\t0$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;",
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
        "removeAt",
        "selectItem",
        "editTitle",
        "getSelectedIndex",
        "confirm",
        "quitEditAndSave",
        "",
        "isEditingTitle",
        "quitEditMode",
        "w",
        "x",
        "Landroid/widget/EditText;",
        "edittext",
        "q",
        "r",
        "I",
        "selectedIndex",
        "s",
        "editTitleIndex",
        "Lkotlin/Function0;",
        "t",
        "Lkotlin/jvm/functions/Function0;",
        "getOnSelectItemChangeListener",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnSelectItemChangeListener",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onSelectItemChangeListener",
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


# instance fields
.field public r:I

.field public s:I

.field public t:Lkotlin/jvm/functions/Function0;
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
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->r:I

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->s:I

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter$onSelectItemChangeListener$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter$onSelectItemChangeListener$1;

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->t:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static synthetic l(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->s(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->u(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->t(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->v(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->r(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;)V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public static final s(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "$holder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDownAction(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;-><init>(Z)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->edtCountName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p0, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final t(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;Landroid/view/View;Z)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "edtCountName"

    if-nez p4, :cond_0

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->edtCountName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->q(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->edtCountName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->edtCountName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setSelection(I)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p2, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->edtCountName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->windowVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static final u(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x6

    if-ne p4, p3, :cond_0

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->edtCountName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const-string p3, "edtCountName"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->q(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->quitEditMode()V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/uee;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/uee;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final v(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method


# virtual methods
.method public final confirm()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->w()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->quitEditMode()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final editTitle(I)V
    .locals 2

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->s:I

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;-><init>(Z)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final getOnSelectItemChangeListener()Lkotlin/jvm/functions/Function0;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->t:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getSelectedIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->r:I

    return p0
.end method

.method public final isEditingTitle()Z
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->s:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;)V
    .locals 12
    .param p1    # Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;
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
            "Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;",
            ">;I",
            "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->r:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 3
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->s:I

    if-ne p2, v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 4
    :goto_1
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->edtCountName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->edtCountName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 7
    sget-object v5, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v6, Lcom/onyx/galaxy/note/R$string;->counter_count_down_multiple_time_default_name:I

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, p2, 0x1

    .line 8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 9
    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "format(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->edtCountName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-instance v4, Lcom/sunia/HTREnginev2/ree;

    invoke-direct {v4, p1}, Lcom/sunia/HTREnginev2/ree;-><init>(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->edtCountName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-instance v4, Lcom/sunia/HTREnginev2/see;

    invoke-direct {v4, p0, p1, p3}, Lcom/sunia/HTREnginev2/see;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 12
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->edtCountName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-array v2, v2, [Landroid/text/InputFilter$LengthFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    sget v6, Lcom/onyx/galaxy/note/R$integer;->counter_name_max_length:I

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v6

    invoke-direct {v4, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    check-cast v2, [Landroid/text/InputFilter;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 13
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->edtCountName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-instance v2, Lcom/sunia/HTREnginev2/tee;

    invoke-direct {v2, p0, p1, p3}, Lcom/sunia/HTREnginev2/tee;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->edtCountName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const-string v2, "edtCountName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postToShowInputKeyboardWithDelay(Landroid/view/View;)V

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->tvTotalTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v6, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;->getDuration()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDuration$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->edtCountName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p3

    check-cast p3, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->edtCountName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    sget-object v0, Lcom/onyx/galaxy/note/utils/CounterUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/CounterUtils;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lcom/onyx/galaxy/note/utils/CounterUtils;->getFormatedSegmentName(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :goto_2
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->itemContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    sget p1, Lcom/onyx/android/sdk/device/R$dimen;->dp_32:I

    invoke-virtual {v5, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p1

    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {v5, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p2

    invoke-virtual {p0, p1, v3, p2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

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
            "Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;",
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

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    .line 4
    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemCountDownMultipleTimeListBinding;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p0
.end method

.method public final q(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;)V
    .locals 1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->s:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/vee;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vee;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p1, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final quitEditAndSave()V
    .locals 3

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->s:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->s:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/onyx/galaxy/note/R$id;->edt_count_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->s:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->q(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->quitEditMode()V

    return-void
.end method

.method public final quitEditMode()V
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->s:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->s:I

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt;->notifyItemChangedSafety(Lcom/chad/library/adapter4/BaseQuickAdapter;I)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public removeAt(I)V
    .locals 9

    invoke-super {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->removeAt(I)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->r:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/onyx/android/sdk/base/utils/MathUtils;->inRange$default(Lcom/onyx/android/sdk/base/utils/MathUtils;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;ZZZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->w()V

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->quitEditMode()V

    return-void
.end method

.method public final selectItem(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->x(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->quitEditMode()V

    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final setOnSelectItemChangeListener(Lkotlin/jvm/functions/Function0;)V
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->t:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final w()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->x(I)V

    return-void
.end method

.method public final x(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->r:I

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->t:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
