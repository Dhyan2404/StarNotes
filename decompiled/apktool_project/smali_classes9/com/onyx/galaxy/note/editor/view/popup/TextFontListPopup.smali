.class public final Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFontListPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFontListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TextFontListPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,223:1\n766#2:224\n857#2,2:225\n1549#2:227\n1620#2,3:228\n350#2,7:231\n350#2,7:238\n*S KotlinDebug\n*F\n+ 1 TextFontListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TextFontListPopup\n*L\n157#1:224\n157#1:225,2\n163#1:227\n163#1:228,3\n220#1:231,7\n172#1:238,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010(\u001a\u00020\u0016\u0012\u0006\u0010-\u001a\u00020)\u0012\n\u0008\u0002\u0010/\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010B\u001a\u00020A\u00a2\u0006\u0004\u0008C\u0010DJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0014\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008H\u0002J\u0010\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u0008H\u0002J\u0010\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u0008H\u0002J\u0012\u0010\u0011\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000fH\u0002J\u0016\u0010\u0014\u001a\u00020\u00022\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0012H\u0002J\u0008\u0010\u0015\u001a\u00020\u0002H\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\u0008\u0010\u0019\u001a\u00020\u0002H\u0016J\u0006\u0010\u001a\u001a\u00020\u0002J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0007J\u0010\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001eH\u0007J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020 H\u0007J\u0010\u0010#\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\"H\u0007J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020$H\u0007R\u0014\u0010(\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0017\u0010-\u001a\u00020)8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010*\u001a\u0004\u0008+\u0010,R\u0016\u0010/\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010.R\u001b\u00105\u001a\u0002008FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104R:\u0010=\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u0001062\u000e\u00107\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u0001068\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u001b\u0010@\u001a\u00020>8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u00102\u001a\u0004\u0008&\u0010?\u00a8\u0006E"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "s",
        "E",
        "D",
        "u",
        "r",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        "y",
        "",
        "x",
        "p",
        "",
        "updateOnly",
        "v",
        "",
        "list",
        "A",
        "G",
        "Landroid/view/View;",
        "anchor",
        "show",
        "dismiss",
        "setMaxFontPopupHeight",
        "Lcom/onyx/galaxy/note/editor/event/TextFontItemDeleteEvent;",
        "event",
        "onTextFontItemDeleteEvent",
        "Lcom/onyx/galaxy/note/editor/event/TextFontRequestPermissionEvent;",
        "onFontPermissionGranted",
        "Lcom/onyx/galaxy/note/editor/event/KeyboardOpenEvent;",
        "onKeyboardOpen",
        "Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;",
        "onKeyboardClose",
        "Lcom/onyx/android/sdk/replicator/event/FontThumbnailDownloadedEvent;",
        "onFontThumbnailDownloadedEvent",
        "q",
        "Landroid/view/View;",
        "parentView",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        "currentFontModel",
        "Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;",
        "t",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;",
        "value",
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;",
        "getItemSelectedListener",
        "()Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;",
        "setItemSelectedListener",
        "(Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;)V",
        "itemSelectedListener",
        "Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;",
        "()Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;",
        "fontItemShowAdapter",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dockType",
        "<init>",
        "(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V",
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
        "SMAP\nTextFontListPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFontListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TextFontListPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,223:1\n766#2:224\n857#2,2:225\n1549#2:227\n1620#2,3:228\n350#2,7:231\n350#2,7:238\n*S KotlinDebug\n*F\n+ 1 TextFontListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TextFontListPopup\n*L\n157#1:224\n157#1:225,2\n163#1:227\n163#1:228,3\n220#1:231,7\n172#1:238,7\n*E\n"
    }
.end annotation


# instance fields
.field public final q:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final t:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final v:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    .line 4
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->q:Landroid/view/View;

    .line 5
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 6
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->s:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    .line 7
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->t:Lkotlin/Lazy;

    .line 8
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$fontItemShowAdapter$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$fontItemShowAdapter$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->v:Lkotlin/Lazy;

    .line 9
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const-string p1, "getRoot(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentViewWithLoading$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->u()V

    .line 11
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->s()V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 12
    invoke-static {p0, p3, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->w(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;ZILjava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 1
    sget-object p4, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;-><init>(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    return-void
.end method

.method public static final B(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final C(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;Ljava/util/List;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->q()Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->q()Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->isSelected(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;->list:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    const-string p1, "list"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->scrollToPositionSafely(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public static final F(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->D()V

    return-void
.end method

.method public static final synthetic access$cancelLoadingState(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->p()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFontItemShowAdapter(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->q()Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadFromCloud(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->x()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadFromLocal(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->y()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onQuery(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->A(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->C(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic l(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->B(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->z(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->t(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->F(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;Z)V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->E()V

    return-void
.end method

.method public static synthetic w(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->v(Z)V

    return-void
.end method

.method public static final z(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->v(Z)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->createDefault()Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$onQuery$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$onQuery$1;

    new-instance v2, Lcom/sunia/HTREnginev2/jcn;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/jcn;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    sget-object v7, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    invoke-static {v7, v6, v5, v4, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->q()Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->containTypeface(Ljava/lang/String;)Z

    move-result v6

    sget-object v7, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v7, v5}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v6, :cond_1

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    sget-object v3, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    invoke-static {v3, v2, v5, v4, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/fonts/TypefaceBatchLoadAction;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/fonts/TypefaceBatchLoadAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$f;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/kcn;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/kcn;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final D()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/TextFontRequestPermissionEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/event/TextFontRequestPermissionEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final E()V
    .locals 5

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget-object v3, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_IMPORT_FONTS_FUNCTION_NAME()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_IMPORT_FONTS_INTENT_NAME()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->requestStoragePermissionAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/lcn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/lcn;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final G()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->setMaxFontPopupHeight()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->q:Landroid/view/View;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getShadowOffset()I

    move-result v1

    neg-int v1, v1

    invoke-static {p0, v0, v1}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->updateLeftAbove(Landroid/widget/PopupWindow;Landroid/view/View;I)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->q()Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->clearTypeface()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->t:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getItemSelectedListener()Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->u:Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;

    return-object p0
.end method

.method public final onFontPermissionGranted(Lcom/onyx/galaxy/note/editor/event/TextFontRequestPermissionEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/event/TextFontRequestPermissionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/dialog/TextFontImportDialog;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {p1, v0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/TextFontImportDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    new-instance v0, Lcom/sunia/HTREnginev2/mcn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/mcn;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/dialog/TextFontImportDialog;->show()V

    return-void
.end method

.method public final onFontThumbnailDownloadedEvent(Lcom/onyx/android/sdk/replicator/event/FontThumbnailDownloadedEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/event/FontThumbnailDownloadedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->q()Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/FontThumbnailDownloadedEvent;->getFontModel()Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->q()Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final onKeyboardClose(Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->G()V

    return-void
.end method

.method public final onKeyboardOpen(Lcom/onyx/galaxy/note/editor/event/KeyboardOpenEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/KeyboardOpenEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->G()V

    return-void
.end method

.method public final onTextFontItemDeleteEvent(Lcom/onyx/galaxy/note/editor/event/TextFontItemDeleteEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/galaxy/note/editor/event/TextFontItemDeleteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/fonts/DeleteFontModelsAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/TextFontItemDeleteEvent;->getFontModel()Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/fonts/DeleteFontModelsAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final p()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$a;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q()Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->v:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    return-object p0
.end method

.method public final r()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->s:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->q()Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->s:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->setSelectFontPath(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;->list:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;->list:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->q()Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final s()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;->tvImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvImport"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/ncn;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/ncn;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final setItemSelectedListener(Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->u:Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->q()Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->setItemSelectedListener(Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;)V

    return-void
.end method

.method public final setMaxFontPopupHeight()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_270:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_20:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_40:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->q:Landroid/view/View;

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationInWindow(Landroid/view/View;)[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v4, v1, v2

    add-int/2addr v4, v0

    if-ge v3, v4, :cond_0

    sub-int/2addr v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;->list:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    int-to-float v0, v3

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;->setMaxHeight(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;->list:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    int-to-float v0, v1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;->setMaxHeight(F)V

    :goto_0
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->q:Landroid/view/View;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getShadowOffset()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getShadowOffset()I

    move-result v1

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showLeftAbove(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final u()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->r()V

    return-void
.end method

.method public final v(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->y()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->y()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$b;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$b;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$c;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$c;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$d;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$d;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public final x()Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->continueOnFail(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final y()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontModelsAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontModelsAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$e;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
