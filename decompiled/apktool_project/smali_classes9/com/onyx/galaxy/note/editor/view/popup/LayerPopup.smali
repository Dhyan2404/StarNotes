.class public final Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;
.super Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayerPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayerPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LayerPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,597:1\n1549#2:598\n1620#2,3:599\n1549#2:602\n1620#2,3:603\n350#2,7:606\n288#2,2:613\n1549#2:615\n1620#2,3:616\n1549#2:619\n1620#2,3:620\n*S KotlinDebug\n*F\n+ 1 LayerPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LayerPopup\n*L\n334#1:598\n334#1:599,3\n347#1:602\n347#1:603,3\n541#1:606,7\n562#1:613,2\n582#1:615\n582#1:616,3\n148#1:619\n148#1:620,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010f\u001a\u000203\u0012\u0006\u0010k\u001a\u00020\u0011\u00a2\u0006\u0004\u0008z\u0010{J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u001e\u0010\u001b\u001a\u00020\u00022\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00182\u0006\u0010\u001a\u001a\u00020\nH\u0002J\u0016\u0010\u001e\u001a\u00020\u00022\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0018H\u0002J\u0016\u0010\u001f\u001a\u00020\u00022\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0018H\u0002J\u0018\u0010!\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u001cH\u0002J\u0010\u0010\"\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010#\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\nH\u0002J\u0014\u0010\'\u001a\u0006\u0012\u0002\u0008\u00030&2\u0006\u0010$\u001a\u00020\nH\u0002J\u0008\u0010(\u001a\u00020\u0002H\u0002J/\u0010+\u001a\u00020\u00022\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010)\u001a\u00020\u000e2\u0008\u0008\u0002\u0010*\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u0016\u0010-\u001a\u00020\u000e2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0018H\u0002J\u0018\u00102\u001a\u00020\u000e2\u0006\u0010/\u001a\u00020.2\u0006\u00101\u001a\u000200H\u0002J\u0010\u00105\u001a\u00020\u00022\u0006\u00104\u001a\u000203H\u0002J\u0018\u00107\u001a\u0004\u0018\u00010\u001c2\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0018H\u0002J\u0008\u00108\u001a\u00020\u0002H\u0002J\u001a\u0010;\u001a\u00020\u00022\u0006\u00101\u001a\u0002092\u0008\u0010:\u001a\u0004\u0018\u00010\u001cH\u0002J\u001e\u0010=\u001a\u00020\u00022\u0006\u00101\u001a\u0002092\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0018H\u0002J\u0010\u0010?\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\nH\u0002J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\nH\u0002J\u0008\u0010A\u001a\u00020\u0002H\u0016J\u0010\u0010D\u001a\u00020\u00022\u0006\u0010C\u001a\u00020BH\u0007J\u0010\u0010F\u001a\u00020\u00022\u0006\u00101\u001a\u00020EH\u0007J\u0010\u0010H\u001a\u00020\u00022\u0006\u00101\u001a\u00020GH\u0007J\u0010\u0010I\u001a\u00020\u00022\u0006\u00101\u001a\u000200H\u0007J\u0010\u0010K\u001a\u00020\u00022\u0006\u00101\u001a\u00020JH\u0007J\u0010\u0010M\u001a\u00020\u00022\u0006\u00101\u001a\u00020LH\u0007J\u0010\u0010O\u001a\u00020\u00022\u0006\u00101\u001a\u00020NH\u0007J\u0010\u0010Q\u001a\u00020\u00022\u0006\u00101\u001a\u00020PH\u0007J\u0010\u0010S\u001a\u00020\u00022\u0006\u00101\u001a\u00020RH\u0007J\u0010\u0010U\u001a\u00020\u00022\u0006\u00101\u001a\u00020TH\u0007J\u0010\u0010W\u001a\u00020\u00022\u0006\u00101\u001a\u00020VH\u0007J\u0010\u0010Y\u001a\u00020\u00022\u0006\u00101\u001a\u00020XH\u0007J\u0010\u0010[\u001a\u00020\u00022\u0006\u00101\u001a\u00020ZH\u0007J\u0010\u0010]\u001a\u00020\u00022\u0006\u00101\u001a\u00020\\H\u0007J\u0010\u0010_\u001a\u00020\u00022\u0006\u00101\u001a\u00020^H\u0007R\"\u0010f\u001a\u0002038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008`\u0010a\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010eR\u0017\u0010k\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008g\u0010h\u001a\u0004\u0008i\u0010jR\u0014\u0010o\u001a\u00020l8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u001a\u0010u\u001a\u0008\u0012\u0004\u0012\u00020B0r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008s\u0010tR\u0018\u0010y\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010x\u00a8\u0006|"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;",
        "Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;",
        "",
        "V",
        "b0",
        "W",
        "Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;",
        "adapter",
        "K",
        "K0",
        "",
        "pos",
        "t0",
        "L0",
        "",
        "U",
        "P",
        "Landroid/view/View;",
        "view",
        "D0",
        "Landroid/view/MenuItem;",
        "menuItem",
        "Q",
        "r0",
        "",
        "srcLayerIds",
        "targetLayerId",
        "p0",
        "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
        "items",
        "O",
        "R",
        "item",
        "v0",
        "E0",
        "H0",
        "layerId",
        "B0",
        "Lio/reactivex/rxjava3/core/Observable;",
        "C0",
        "M",
        "initLoad",
        "scrollToCurrentLayer",
        "l0",
        "(Ljava/lang/Integer;ZZ)V",
        "N",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "it",
        "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;",
        "event",
        "k0",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "current",
        "s0",
        "layerIds",
        "T",
        "u0",
        "",
        "layerInfo",
        "A0",
        "layers",
        "y0",
        "amount",
        "z0",
        "x0",
        "dismiss",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "bean",
        "onChangedShapeBean",
        "Lcom/onyx/android/sdk/note/common/event/NoteShapeChangedEvent;",
        "onNoteShapeChangedEvent",
        "Lcom/onyx/android/sdk/note/common/event/LayerCommandAppliedEvent;",
        "onLayerCommandAppliedEvent",
        "onVirtualDocViewInfoEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogStartEvent;",
        "onClearLayerDialogStartEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogCancelEvent;",
        "onClearLayerDialogCancelEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogDoneEvent;",
        "onClearLayerDialogDoneEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/MergeLayerDialogStartEvent;",
        "onMergeLayerDialogStartEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/MergeLayerDialogCancelEvent;",
        "onMergeLayerDialogCancelEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/MergeLayerDialogDoneEvent;",
        "onMergeLayerDialogDoneEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteLayerDialogStartEvent;",
        "onDeleteLayerDialogStartEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteLayerDialogCancelEvent;",
        "onDeleteLayerDialogCancelEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteLayerDialogDoneEvent;",
        "onDeleteLayerDialogDoneEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerInfoChangedEvent;",
        "onNoteLayerInfoChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ReloadNoteLayerInfoEvent;",
        "onReloadNoteLayerInfoEvent",
        "s",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "setEditorBundle",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "editorBundle",
        "t",
        "Landroid/view/View;",
        "getAnchorView",
        "()Landroid/view/View;",
        "anchorView",
        "Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;",
        "u",
        "Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;",
        "binding",
        "v",
        "Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "w",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "shapeChangedFilter",
        "Landroidx/recyclerview/widget/ItemTouchHelper;",
        "x",
        "Landroidx/recyclerview/widget/ItemTouchHelper;",
        "itemTouchHelper",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V",
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
        "SMAP\nLayerPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayerPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LayerPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,597:1\n1549#2:598\n1620#2,3:599\n1549#2:602\n1620#2,3:603\n350#2,7:606\n288#2,2:613\n1549#2:615\n1620#2,3:616\n1549#2:619\n1620#2,3:620\n*S KotlinDebug\n*F\n+ 1 LayerPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LayerPopup\n*L\n334#1:598\n334#1:599,3\n347#1:602\n347#1:603,3\n541#1:606,7\n562#1:613,2\n582#1:615\n582#1:616,3\n148#1:619\n148#1:620,3\n*E\n"
    }
.end annotation


# instance fields
.field public s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

.field public final w:Lcom/onyx/android/sdk/base/rx/RxFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Landroidx/recyclerview/widget/ItemTouchHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchorView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;-><init>(Landroid/view/View;Z)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->t:Landroid/view/View;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    new-instance p1, Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-direct {p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->w:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->V()V

    return-void
.end method

.method public static synthetic A(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->q0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    return-void
.end method

.method public static synthetic B(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerVisibilityAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->I0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerVisibilityAction;)V

    return-void
.end method

.method public static synthetic C(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->c0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->F0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;)V

    return-void
.end method

.method public static synthetic E(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->i0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic F(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->e0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final F0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u0()V

    return-void
.end method

.method public static synthetic G(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->f0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final G0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "click_galaxy_layer_0005"

    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-void
.end method

.method public static synthetic H(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->n0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    return-void
.end method

.method public static synthetic I(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->Y(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final I0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerVisibilityAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u0()V

    return-void
.end method

.method public static synthetic J(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->Z(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final J0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerVisibilityAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "click_galaxy_layer_0004"

    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-void
.end method

.method public static final L(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroidx/recyclerview/widget/ItemTouchHelper;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$itemTouchHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->recyclerView:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final S(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->m0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Ljava/lang/Integer;ZZILjava/lang/Object;)V

    return-void
.end method

.method public static final X(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->H0(I)V

    return-void
.end method

.method public static final Y(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->E0(I)V

    return-void
.end method

.method public static final Z(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez p1, :cond_0

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    const-string v0, "click_galaxy_layer_0006"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->D0(Landroid/view/View;I)V

    return-void
.end method

.method public static final a0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->t0(I)V

    return-void
.end method

.method public static final synthetic access$clearSelectedItems(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->P()V

    return-void
.end method

.method public static final synthetic access$configActionItem(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;ILandroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->Q(ILandroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    return-object p0
.end method

.method public static final synthetic access$isNeedUpdateLayer(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->k0(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$merge(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Ljava/util/List;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->p0(Ljava/util/List;I)V

    return-void
.end method

.method public static final synthetic access$onActionClick(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;ILandroid/view/MenuItem;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->r0(ILandroid/view/MenuItem;)V

    return-void
.end method

.method public static final synthetic access$quitTransform(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u0()V

    return-void
.end method

.method public static final synthetic access$reportAddNoteEvent(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->x0(I)V

    return-void
.end method

.method public static final synthetic access$selectLayerObservable(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;I)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->C0(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final c0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "click_galaxy_layer_0003"

    invoke-static {p1, v2, v0, v1, v0}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->dismiss()V

    return-void
.end method

.method public static final d0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->M()V

    return-void
.end method

.method public static final e0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->K0()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const-string v0, "click_galaxy_layer_0018"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const-string p1, "view_galaxy_layer_0007"

    invoke-static {p0, p1, v1, v2, v1}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public static final f0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->K0()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const-string v1, "click_galaxy_layer_0023"

    invoke-static {p0, v1, p1, v0, p1}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public static final g0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    const/4 v0, 0x0

    const-string v1, "adapter"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v2, "click_galaxy_layer_0022"

    invoke-virtual {p0, v2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->itemIndexOfFirst(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v0(ILcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-void
.end method

.method public static final h0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    const/4 v0, 0x0

    const-string v1, "adapter"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p1

    const-string v2, "click_galaxy_layer_0019"

    invoke-virtual {p0, v2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->y0(Ljava/lang/String;Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->R(Ljava/util/List;)V

    return-void
.end method

.method public static final i0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    const/4 v0, 0x0

    const-string v1, "adapter"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p1

    const-string v2, "click_galaxy_layer_0021"

    invoke-virtual {p0, v2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->y0(Ljava/lang/String;Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->O(Ljava/util/List;)V

    return-void
.end method

.method public static final j0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    const/4 v0, 0x0

    const-string v1, "adapter"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p1

    const-string v2, "click_galaxy_layer_0020"

    invoke-virtual {p0, v2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->y0(Ljava/lang/String;Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->p0(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Ljava/lang/Integer;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x1

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->l0(Ljava/lang/Integer;ZZ)V

    return-void
.end method

.method public static final n0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez p1, :cond_0

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->z0(I)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->S(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    return-void
.end method

.method public static final o0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez p0, :cond_0

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->scrollToCurrentLayer()V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->j0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerVisibilityAction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->J0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerVisibilityAction;)V

    return-void
.end method

.method public static final q0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->m0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Ljava/lang/Integer;ZZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic r(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->g0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroidx/recyclerview/widget/ItemTouchHelper;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->L(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroidx/recyclerview/widget/ItemTouchHelper;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic t(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->o0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic u(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->h0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->G0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;)V

    return-void
.end method

.method public static synthetic w()V
    .locals 0

    invoke-static {}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->w0()V

    return-void
.end method

.method public static final w0()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/galaxy/note/R$string;->rename_success:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic x(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->a0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic y(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->X(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic z(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->d0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v3, 0x1

    new-array v3, v3, [Lkotlin/Pair;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    sub-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "layer_sort"

    invoke-static {p2, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 p2, 0x0

    aput-object p0, v3, p2

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final B0(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->C0(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final C0(I)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u0()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageCurLayerAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageCurLayerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$r;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$r;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final D0(Landroid/view/View;I)V
    .locals 5

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$menu;->layer_more_action_menu:I

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$showMoreActionPopup$1;

    invoke-direct {v3, p0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$showMoreActionPopup$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;I)V

    new-instance v4, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$showMoreActionPopup$2;

    invoke-direct {v4, p0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$showMoreActionPopup$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;I)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup;-><init>(Landroid/content/Context;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/ui/BasePopWindow;->showAsDropDownCenter(Landroid/view/View;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez p1, :cond_0

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    const-string p2, "view_galaxy_layer_0003"

    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-void
.end method

.method public final E0(I)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getLock()Z

    move-result v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v2, v3, v0}, Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$s;

    invoke-direct {v3, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$s;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;I)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v2, "doOnNext(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$toggleLayerLock$2;

    invoke-direct {v2, v1, p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$toggleLayerLock$2;-><init>(ZLcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    new-instance v3, Lcom/sunia/HTREnginev2/iwi;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/iwi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-static {p1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$toggleLayerLock$4;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$toggleLayerLock$4;-><init>(Z)V

    new-instance v1, Lcom/sunia/HTREnginev2/jwi;

    invoke-direct {v1, p0, v0}, Lcom/sunia/HTREnginev2/jwi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    invoke-static {p1, v2, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final H0(I)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getShow()Z

    move-result v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerVisibilityAction;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v2, v3, v0}, Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerVisibilityAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$t;

    invoke-direct {v3, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$t;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;I)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v2, "doOnNext(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$toggleLayerShow$2;

    invoke-direct {v2, v1, p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$toggleLayerShow$2;-><init>(ZLcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    new-instance v3, Lcom/sunia/HTREnginev2/dwi;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/dwi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-static {p1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$toggleLayerShow$4;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$toggleLayerShow$4;-><init>(Z)V

    new-instance v1, Lcom/sunia/HTREnginev2/ewi;

    invoke-direct {v1, p0, v0}, Lcom/sunia/HTREnginev2/ewi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    invoke-static {p1, v2, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final K(Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;)V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->x:Landroidx/recyclerview/widget/ItemTouchHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    new-instance v4, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;

    invoke-direct {v4, p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;-><init>(Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->recyclerView:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v1, Lcom/sunia/HTREnginev2/hwi;

    invoke-direct {v1, p0, v0}, Lcom/sunia/HTREnginev2/hwi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Landroidx/recyclerview/widget/ItemTouchHelper;)V

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemLongClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->x:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method public final K0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->toggleSelectionMode()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->select:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->isSelectionMode()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->close:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->isSelectionMode()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->finish:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_3
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->isSelectionMode()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->addLayer:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->isSelectionMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->L0()V

    return-void
.end method

.method public final L0()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->selectionActionLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    const/4 v2, 0x0

    const-string v3, "adapter"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->isSelectionMode()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->rename:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    move v6, v5

    goto :goto_0

    :cond_2
    move v6, v4

    :goto_0
    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->clean:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->U()Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->delete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v6, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_4
    invoke-virtual {v6}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v6

    if-le v6, v5, :cond_6

    if-lez v0, :cond_6

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v6, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_5
    invoke-virtual {v6}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v6

    if-ge v0, v6, :cond_6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->U()Z

    move-result v6

    if-nez v6, :cond_6

    move v6, v5

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->merge:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v6, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object v2, v6

    :goto_3
    invoke-virtual {v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v2

    if-le v2, v5, :cond_8

    if-le v0, v5, :cond_8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->U()Z

    move-result p0

    if-nez p0, :cond_8

    move v4, v5

    :cond_8
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final M()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v0

    const/16 v2, 0x14

    const/4 v3, 0x2

    if-lt v0, v2, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->limit_layer_tips:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v2, Lcom/onyx/android/sdk/event/StatisticsStoolbarLayerAdd;

    invoke-direct {v2}, Lcom/onyx/android/sdk/event/StatisticsStoolbarLayerAdd;-><init>()V

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u0()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$a;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$b;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final N(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
            ">;)Z"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->Companion:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo$Companion;->hasLockedLayer(Ljava/util/List;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/android/sdk/universal/R$string;->has_locked_layer_tip:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p1
.end method

.method public final O(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;

    invoke-direct {v1, v0, v2}, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$c;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$d;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$d;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$e;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$e;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final P()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->clearSelectedItems()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->L0()V

    return-void
.end method

.method public final Q(ILandroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 6

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    const/4 v2, 0x0

    const-string v3, "adapter"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerCount()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gt v1, v4, :cond_2

    sget v1, Lcom/onyx/galaxy/note/R$id;->delete:I

    if-eq v0, v1, :cond_1

    sget v1, Lcom/onyx/galaxy/note/R$id;->merge_down:I

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-interface {p2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_3
    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne p1, v1, :cond_4

    sget v1, Lcom/onyx/galaxy/note/R$id;->merge_down:I

    if-ne v0, v1, :cond_4

    invoke-interface {p2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_4
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_5
    invoke-virtual {v1, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getLock()Z

    move-result v1

    if-ne v1, v4, :cond_6

    move v1, v4

    goto :goto_0

    :cond_6
    move v1, v5

    :goto_0
    if-eqz v1, :cond_8

    sget v1, Lcom/onyx/galaxy/note/R$id;->delete:I

    if-eq v0, v1, :cond_7

    sget v1, Lcom/onyx/galaxy/note/R$id;->clean:I

    if-eq v0, v1, :cond_7

    sget v1, Lcom/onyx/galaxy/note/R$id;->merge_down:I

    if-ne v0, v1, :cond_8

    :cond_7
    invoke-interface {p2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_8
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez p0, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    move-object v2, p0

    :goto_1
    add-int/2addr p1, v4

    invoke-virtual {v2, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getLock()Z

    move-result p0

    if-ne p0, v4, :cond_a

    goto :goto_2

    :cond_a
    move v4, v5

    :goto_2
    if-eqz v4, :cond_b

    sget p0, Lcom/onyx/galaxy/note/R$id;->merge_down:I

    if-ne v0, p0, :cond_b

    invoke-interface {p2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_b
    return-object p2
.end method

.method public final R(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/onyx/galaxy/note/editor/action/layer/RemoveNotePageLayerAction;

    invoke-direct {p1, v0, v1}, Lcom/onyx/galaxy/note/editor/action/layer/RemoveNotePageLayerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$f;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$f;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$g;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$g;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/rvi;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/rvi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final T(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_2
    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    return-object v0
.end method

.method public final U()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->Companion:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez p0, :cond_0

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo$Companion;->hasLockedLayer(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final V()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->b0()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->m0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Ljava/lang/Integer;ZZILjava/lang/Object;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureRegister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->w:Lcom/onyx/android/sdk/base/rx/RxFilter;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$h;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->subscribeDebounce(JLio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public final W()V
    .locals 10

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/sunia/HTREnginev2/kwi;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/kwi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->setOnDebouncedItemClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;JLcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    sget v4, Lcom/onyx/galaxy/note/R$id;->show:I

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/sunia/HTREnginev2/lwi;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/lwi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    sget v4, Lcom/onyx/galaxy/note/R$id;->lock:I

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/sunia/HTREnginev2/mwi;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/mwi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    sget v4, Lcom/onyx/galaxy/note/R$id;->more:I

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/sunia/HTREnginev2/svi;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/svi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->recyclerView:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->recyclerView:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_3
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v1, v0

    :goto_3
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->K(Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;)V

    return-void
.end method

.method public final b0()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->close:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/uvi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/uvi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->addLayer:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/vvi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/vvi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->select:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/wvi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/wvi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->finish:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/xvi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/xvi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->rename:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/yvi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/yvi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->delete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/zvi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zvi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->clean:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/awi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/awi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->u:Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;->merge:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/bwi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bwi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->W()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->w:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureUnRegister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureUnRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    return-void
.end method

.method public final getAnchorView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->t:Landroid/view/View;

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final k0(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->isLayersChanged(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportDrawPageLayer()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->isPageLayerChanged(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez p0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->currentVisibleBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->isCurrentBoxInfoChanged(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez p0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v1, p0

    :goto_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->isViewportChanged(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result v3

    :cond_7
    :goto_2
    return v3
.end method

.method public final l0(Ljava/lang/Integer;ZZ)V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/layer/LoadNotePageLayersAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/layer/LoadNotePageLayersAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$i;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$i;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnNext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$loadPageLayers$2;

    invoke-direct {v1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$loadPageLayers$2;-><init>(Z)V

    new-instance p2, Lcom/sunia/HTREnginev2/cwi;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/cwi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-static {v0, v1, p2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$loadPageLayers$4;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$loadPageLayers$4;-><init>(Ljava/lang/Integer;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$loadPageLayers$5;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$loadPageLayers$5;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Ljava/lang/Integer;)V

    invoke-static {p2, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$loadPageLayers$6;

    invoke-direct {p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$loadPageLayers$6;-><init>(Z)V

    new-instance p3, Lcom/sunia/HTREnginev2/fwi;

    invoke-direct {p3, p0}, Lcom/sunia/HTREnginev2/fwi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-static {p1, p2, p3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onChangedShapeBean(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->w:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onClearLayerDialogCancelEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogCancelEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogCancelEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogCancelEvent;->getLayerIds()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->T(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p1

    const-string v0, "click_galaxy_layer_0009"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-void
.end method

.method public final onClearLayerDialogDoneEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogDoneEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogDoneEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogDoneEvent;->getLayerIds()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->T(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p1

    const-string v0, "click_galaxy_layer_0010"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-void
.end method

.method public final onClearLayerDialogStartEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogStartEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogStartEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogStartEvent;->getLayerIds()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->T(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p1

    const-string v0, "view_galaxy_layer_0004"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-void
.end method

.method public final onDeleteLayerDialogCancelEvent(Lcom/onyx/android/sdk/universal/editor/events/note/DeleteLayerDialogCancelEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/DeleteLayerDialogCancelEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteLayerDialogCancelEvent;->getLayerIds()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->T(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p1

    const-string v0, "click_galaxy_layer_0015"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-void
.end method

.method public final onDeleteLayerDialogDoneEvent(Lcom/onyx/android/sdk/universal/editor/events/note/DeleteLayerDialogDoneEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/DeleteLayerDialogDoneEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteLayerDialogDoneEvent;->getLayerIds()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->T(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p1

    const-string v0, "click_galaxy_layer_0016"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-void
.end method

.method public final onDeleteLayerDialogStartEvent(Lcom/onyx/android/sdk/universal/editor/events/note/DeleteLayerDialogStartEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/DeleteLayerDialogStartEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteLayerDialogStartEvent;->getLayerIds()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->T(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p1

    const-string v0, "view_galaxy_layer_0006"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-void
.end method

.method public final onLayerCommandAppliedEvent(Lcom/onyx/android/sdk/note/common/event/LayerCommandAppliedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/event/LayerCommandAppliedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/UpdateVirtualDocViewInfoEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/UpdateVirtualDocViewInfoEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final onMergeLayerDialogCancelEvent(Lcom/onyx/android/sdk/universal/editor/events/note/MergeLayerDialogCancelEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/MergeLayerDialogCancelEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/MergeLayerDialogCancelEvent;->getLayerIds()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->T(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p1

    const-string v0, "click_galaxy_layer_0012"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-void
.end method

.method public final onMergeLayerDialogDoneEvent(Lcom/onyx/android/sdk/universal/editor/events/note/MergeLayerDialogDoneEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/MergeLayerDialogDoneEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/MergeLayerDialogDoneEvent;->getLayerIds()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->T(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p1

    const-string v0, "click_galaxy_layer_0013"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-void
.end method

.method public final onMergeLayerDialogStartEvent(Lcom/onyx/android/sdk/universal/editor/events/note/MergeLayerDialogStartEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/MergeLayerDialogStartEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/MergeLayerDialogStartEvent;->getLayerIds()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->T(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p1

    const-string v0, "view_galaxy_layer_0005"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-void
.end method

.method public final onNoteLayerInfoChangedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerInfoChangedEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerInfoChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerInfoChangedEvent;->getLayerInfo()Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, -0x1

    :goto_2
    if-ltz v4, :cond_6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerInfoChangedEvent;->getLayerInfo()Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getLock()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->setLock(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerInfoChangedEvent;->getLayerInfo()Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getShow()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->setShow(Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez p0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v1, p0

    :goto_3
    invoke-static {v1, v4}, Lcom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt;->notifyItemChangedSafety(Lcom/chad/library/adapter4/BaseQuickAdapter;I)V

    :cond_6
    return-void
.end method

.method public final onNoteShapeChangedEvent(Lcom/onyx/android/sdk/note/common/event/NoteShapeChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/event/NoteShapeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->w:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/event/NoteShapeChangedEvent;->getChangedShapeBean()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onReloadNoteLayerInfoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ReloadNoteLayerInfoEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ReloadNoteLayerInfoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->m0(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Ljava/lang/Integer;ZZILjava/lang/Object;)V

    return-void
.end method

.method public final onVirtualDocViewInfoEvent(Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/layer/LoadNotePageLayersAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/layer/LoadNotePageLayersAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$l;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$l;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$m;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$m;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final p0(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1, p1, p2}, Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$j;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$j;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$k;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$k;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/tvi;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/tvi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final r0(ILandroid/view/MenuItem;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    sget v3, Lcom/onyx/galaxy/note/R$id;->rename:I

    if-ne p2, v3, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v0(ILcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    const-string p1, "click_galaxy_layer_0007"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    goto :goto_1

    :cond_2
    sget v3, Lcom/onyx/galaxy/note/R$id;->clean:I

    if-ne p2, v3, :cond_3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->O(Ljava/util/List;)V

    const-string p1, "click_galaxy_layer_0008"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    goto :goto_1

    :cond_3
    sget v3, Lcom/onyx/galaxy/note/R$id;->merge_down:I

    if-ne p2, v3, :cond_6

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez p2, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, p2

    :goto_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->p0(Ljava/util/List;I)V

    const-string p1, "click_galaxy_layer_0011"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    sget p1, Lcom/onyx/galaxy/note/R$id;->delete:I

    if-ne p2, p1, :cond_7

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->R(Ljava/util/List;)V

    const-string p1, "click_galaxy_layer_0014"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->A0(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final s0(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->V()V

    return-void
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final t0(I)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->isSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->toggleSelectItem(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->L0()V

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->B0(I)V

    return-void
.end method

.method public final u0()V
    .locals 4

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final v0(ILcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v2, :cond_0

    const-string v2, "adapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->getLayerName(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$n;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$n;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$o;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$o;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;I)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$p;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$p;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/gwi;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/gwi;-><init>()V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$q;->e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$q;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final x0(I)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const-string v0, "layer_amount_add"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    filled-new-array {p1}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "click_galaxy_layer_0002"

    invoke-static {p0, v0, p1}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final y0(Ljava/lang/String;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    const/4 v2, 0x0

    const-string v3, "adapter"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v4, v0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v5, 0x1

    new-array v5, v5, [Lkotlin/Pair;

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    iget-object v9, v0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    if-nez v9, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v2

    :cond_1
    invoke-virtual {v9}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    sub-int v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v8, ","

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3e

    const/4 v15, 0x0

    invoke-static/range {v7 .. v15}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "layer_sort"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    invoke-static {v5}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v4, v1, v0}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final z0(I)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const-string v0, "layer_amount"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    filled-new-array {p1}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "view_galaxy_layer_0002"

    invoke-static {p0, v0, p1}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
