.class public final Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002R\u0014\u0010\u000b\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\nR\u0014\u0010\u000e\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\rR\u001b\u0010\u0014\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "Landroid/view/View;",
        "anchor",
        "",
        "show",
        "n",
        "r",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;",
        "args",
        "Lcom/onyx/galaxy/note/databinding/PopupQuoteMenuBinding;",
        "s",
        "Lkotlin/Lazy;",
        "m",
        "()Lcom/onyx/galaxy/note/databinding/PopupQuoteMenuBinding;",
        "binding",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;)V",
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

.field public final r:Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->r:Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->s:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->n()V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->o(Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->p(Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;Landroid/view/View;)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteQuoteEvent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->r:Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;->getHitTestVirtualPage()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->r:Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteQuoteEvent;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->r()V

    return-void
.end method


# virtual methods
.method public final m()Lcom/onyx/galaxy/note/databinding/PopupQuoteMenuBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->s:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupQuoteMenuBinding;

    return-object p0
.end method

.method public final n()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->m()Lcom/onyx/galaxy/note/databinding/PopupQuoteMenuBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->m()Lcom/onyx/galaxy/note/databinding/PopupQuoteMenuBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupQuoteMenuBinding;->tvDelete:Landroid/widget/TextView;

    new-instance v1, Lcom/sunia/HTREnginev2/tbl;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/tbl;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->m()Lcom/onyx/galaxy/note/databinding/PopupQuoteMenuBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupQuoteMenuBinding;->tvJumpSource:Landroid/widget/TextView;

    new-instance v1, Lcom/sunia/HTREnginev2/ubl;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ubl;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/ShowShapeHighlightAnimationEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->r:Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowShapeHighlightAnimationEvent;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final r()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->r:Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;->getExcerptCollection()Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowSourceEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getSourceDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getSourceShapeId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowSourceEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->q()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->m()Lcom/onyx/galaxy/note/databinding/PopupQuoteMenuBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    const-string v0, "getRoot(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->r:Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;->r:Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;->getHitTestVirtualPage()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v9}, Lcom/onyx/galaxy/note/common/extension/PopupWindowKt;->showAtShapeTop$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;IIILjava/lang/Object;)V

    return-void
.end method
