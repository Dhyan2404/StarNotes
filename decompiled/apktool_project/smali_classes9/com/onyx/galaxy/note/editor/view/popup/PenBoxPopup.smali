.class public final Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;,
        Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$Companion;,
        Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;,
        Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemHorizontalHolder;,
        Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemVerticalHolder;,
        Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPenBoxPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PenBoxPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PenBoxPopup\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 4 DragSwipeExt.kt\ncom/chad/library/adapter4/dragswipe/DragSwipeExtKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1037:1\n324#2:1038\n32#3,5:1039\n32#3,5:1068\n41#3,5:1073\n11#4,12:1044\n41#4,2:1056\n256#5,2:1058\n256#5,2:1060\n254#5:1062\n256#5,2:1063\n256#5,2:1065\n254#5:1067\n256#5,2:1111\n256#5,2:1113\n256#5,2:1115\n256#5,2:1117\n256#5,2:1119\n350#6,7:1078\n350#6,7:1086\n1603#6,9:1095\n1855#6:1104\n1856#6:1106\n1612#6:1107\n1747#6,3:1108\n1#7:1085\n1#7:1105\n215#8,2:1093\n*S KotlinDebug\n*F\n+ 1 PenBoxPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PenBoxPopup\n*L\n221#1:1038\n245#1:1039,5\n536#1:1068,5\n546#1:1073,5\n302#1:1044,12\n302#1:1056,2\n341#1:1058,2\n342#1:1060,2\n358#1:1062\n362#1:1063,2\n363#1:1065,2\n396#1:1067\n1004#1:1111,2\n381#1:1113,2\n386#1:1115,2\n418#1:1117,2\n419#1:1119,2\n581#1:1078,7\n648#1:1086,7\n710#1:1095,9\n710#1:1104\n710#1:1106\n710#1:1107\n711#1:1108,3\n710#1:1105\n702#1:1093,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 \u00b6\u00012\u00020\u0001:\n\u00b7\u0001\u00b6\u0001\u00b8\u0001\u00b9\u0001\u00ba\u0001B+\u0012\u0006\u0010p\u001a\u00020k\u0012\u0006\u0010s\u001a\u00020?\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0010H\u001a\u0004\u0018\u00010?\u00a2\u0006\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001J(\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u0010\u001a\u00020\u000bH\u0003J\u0008\u0010\u0011\u001a\u00020\u000bH\u0002J\u0010\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0008\u0010\u0015\u001a\u00020\u000bH\u0002J\u001a\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0007H\u0002J\u0008\u0010\u0019\u001a\u00020\u000bH\u0002J\u0008\u0010\u001a\u001a\u00020\u000bH\u0002J\u0012\u0010\u001c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0007H\u0002J\u0008\u0010\u001d\u001a\u00020\u000bH\u0002J\u0008\u0010\u001e\u001a\u00020\u000bH\u0002J\u0008\u0010\u001f\u001a\u00020\u000bH\u0002J\u0008\u0010 \u001a\u00020\u000bH\u0002J\u0008\u0010!\u001a\u00020\u000bH\u0002J\u0008\u0010\"\u001a\u00020\u000bH\u0002J\u0008\u0010#\u001a\u00020\u000bH\u0002J\u0018\u0010(\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\u0006\u0010\'\u001a\u00020&H\u0002J\u0010\u0010+\u001a\u00020*2\u0006\u0010)\u001a\u00020$H\u0002J\u0018\u0010-\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\u0006\u0010,\u001a\u00020&H\u0002J\u0018\u0010.\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\u0006\u0010,\u001a\u00020&H\u0002J\u0018\u0010/\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\u0006\u0010,\u001a\u00020&H\u0002J\u0018\u00100\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\u0006\u0010,\u001a\u00020&H\u0002J\u0018\u00101\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\u0006\u0010,\u001a\u00020&H\u0002J\u0018\u00102\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\u0006\u0010,\u001a\u00020&H\u0002J\u0008\u00103\u001a\u00020\u0007H\u0002J\u001a\u00107\u001a\u0008\u0012\u0004\u0012\u00020$062\n\u0008\u0002\u00105\u001a\u0004\u0018\u000104H\u0002J\u001c\u0010;\u001a\u00020\u000b2\n\u00109\u001a\u0006\u0012\u0002\u0008\u0003082\u0006\u0010:\u001a\u00020\u0007H\u0002J\u001c\u0010=\u001a\u00020\u000b2\n\u00109\u001a\u0006\u0012\u0002\u0008\u0003082\u0006\u0010<\u001a\u00020\u0007H\u0002J\u0008\u0010>\u001a\u00020\u000bH\u0002J\u0012\u0010A\u001a\u00020\u00072\u0008\u0010@\u001a\u0004\u0018\u00010?H\u0002J\u0018\u0010D\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020B2\u0008\u0010)\u001a\u0004\u0018\u00010$J\u000e\u0010G\u001a\u00020\u000b2\u0006\u0010F\u001a\u00020EJ \u0010I\u001a\u00020\u000b2\u0006\u0010@\u001a\u00020?2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010H\u001a\u0004\u0018\u00010?J\u0006\u0010J\u001a\u00020\u000bJ\u0006\u0010L\u001a\u00020KJ\u0006\u0010M\u001a\u00020\u0007J\u0010\u0010O\u001a\u00020\u000b2\u0008\u0008\u0002\u0010N\u001a\u00020\u0007J\u0018\u0010P\u001a\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010\'\u001a\u00020&J\u0010\u0010Q\u001a\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010$J\u0006\u0010R\u001a\u00020\u000bJ\u0006\u0010S\u001a\u00020\u000bJ\u000e\u0010U\u001a\u00020\u000b2\u0006\u0010T\u001a\u00020\u0007J\u0006\u0010V\u001a\u00020\u0007J\u000e\u0010Y\u001a\u00020\u00072\u0006\u0010X\u001a\u00020WJ\u0010\u0010\\\u001a\u00020\u000b2\u0006\u0010[\u001a\u00020ZH\u0007J\u0010\u0010^\u001a\u00020\u000b2\u0006\u0010[\u001a\u00020]H\u0007J\u0010\u0010`\u001a\u00020\u000b2\u0006\u0010[\u001a\u00020_H\u0007J\u0010\u0010b\u001a\u00020\u000b2\u0006\u0010[\u001a\u00020aH\u0007J\u0010\u0010d\u001a\u00020\u000b2\u0006\u0010[\u001a\u00020cH\u0007J\u0010\u0010f\u001a\u00020\u000b2\u0006\u0010[\u001a\u00020eH\u0007J\u0010\u0010h\u001a\u00020\u000b2\u0006\u0010[\u001a\u00020gH\u0007J\u0010\u0010j\u001a\u00020\u000b2\u0006\u0010[\u001a\u00020iH\u0007R\u0017\u0010p\u001a\u00020k8\u0006\u00a2\u0006\u000c\n\u0004\u0008l\u0010m\u001a\u0004\u0008n\u0010oR\u0016\u0010s\u001a\u00020?8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010rR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR$\u0010H\u001a\u0004\u0018\u00010?8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008v\u0010r\u001a\u0004\u0008w\u0010x\"\u0004\u0008y\u0010zR\u001c\u0010\u0080\u0001\u001a\u00060{R\u00020\u00008\u0006\u00a2\u0006\u000c\n\u0004\u0008|\u0010}\u001a\u0004\u0008~\u0010\u007fR\u001e\u0010\u0084\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u0081\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0001\u0010\u0083\u0001R\u001a\u0010\u0088\u0001\u001a\u00030\u0085\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001R\u001a\u0010\u008c\u0001\u001a\u00030\u0089\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u008a\u0001\u0010\u008b\u0001R\u001a\u0010\u0090\u0001\u001a\u00030\u008d\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001R\u0019\u0010\u0093\u0001\u001a\u00030\u0091\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0014\u0010\u0092\u0001R\u0018\u0010\u0095\u0001\u001a\u00020K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008!\u0010\u0094\u0001R\u0017\u0010\u0096\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\"R\u0017\u0010\u0097\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010\"R\u0017\u0010\u0098\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0008R)\u0010\u009f\u0001\u001a\u00030\u0099\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u009a\u0001\u0010\u001c\u001a\u0006\u0008\u009b\u0001\u0010\u009c\u0001\"\u0006\u0008\u009d\u0001\u0010\u009e\u0001R\u0017\u0010C\u001a\u00020B8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008+\u0010\u00a0\u0001RY\u0010\u00a8\u0001\u001aD\u0012\u000e\u0012\u000c\u0012\u0007\u0008\u0001\u0012\u00030\u00a3\u00010\u00a2\u0001\u0012\u000c\u0012\n\u0012\u0005\u0012\u00030\u00a3\u00010\u00a4\u00010\u00a1\u0001j!\u0012\u000e\u0012\u000c\u0012\u0007\u0008\u0001\u0012\u00030\u00a3\u00010\u00a2\u0001\u0012\u000c\u0012\n\u0012\u0005\u0012\u00030\u00a3\u00010\u00a4\u0001`\u00a5\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R!\u0010\u00ad\u0001\u001a\u00030\u00a9\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001\u001a\u0006\u0008\u00a6\u0001\u0010\u00ac\u0001R\u001a\u0010\u00af\u0001\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00087\u0010\u00ae\u0001R!\u0010\u00b3\u0001\u001a\u00030\u00b0\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00b1\u0001\u0010\u00ab\u0001\u001a\u0006\u0008\u00aa\u0001\u0010\u00b2\u0001\u00a8\u0006\u00bb\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;",
        "",
        "",
        "viewDownRawX",
        "viewDownRawY",
        "rawX",
        "rawY",
        "",
        "F",
        "Landroid/graphics/Rect;",
        "containerRect",
        "",
        "G",
        "Landroid/content/Context;",
        "context",
        "x",
        "u",
        "w",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "rv",
        "j",
        "P",
        "collapse",
        "moving",
        "n",
        "D",
        "B",
        "doEnterInAnimation",
        "I",
        "L",
        "N",
        "M",
        "l",
        "k",
        "Z",
        "Q",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "item",
        "Landroid/view/View;",
        "itemView",
        "m",
        "penArgs",
        "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;",
        "p",
        "view",
        "V",
        "U",
        "Y",
        "T",
        "W",
        "X",
        "v",
        "",
        "selectId",
        "",
        "s",
        "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;",
        "holder",
        "selected",
        "c0",
        "isSelected",
        "b0",
        "O",
        "",
        "location",
        "A",
        "Landroid/app/Activity;",
        "activity",
        "show",
        "Ljava/lang/Runnable;",
        "runnable",
        "post",
        "rootLocation",
        "resetPosition",
        "deleteSelectedPenArgs",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "getDockType",
        "hasSelectedPen",
        "addPen",
        "reloadPenList",
        "onPenItemClick",
        "applyPenArgs",
        "dismissAllPopup",
        "hide",
        "visible",
        "setVisible",
        "isShowing",
        "Lcom/onyx/galaxy/note/editor/data/SlideBarType;",
        "type",
        "isPenBoxAlignedWithSidebar",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeChangedEvent;",
        "event",
        "onShapeToolTypeChangedEvent",
        "Lcom/onyx/android/sdk/universal/common/events/ChangePenBoxEvent;",
        "onChangePenBoxEvent",
        "Lcom/onyx/android/sdk/universal/common/events/DeletePenBoxEvent;",
        "onDeletePenBoxEvent",
        "Lcom/onyx/android/sdk/universal/common/events/DeleteAllPenBoxEvent;",
        "onDeleteAllPenBoxEvent",
        "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;",
        "onThemeChangedEvent",
        "Lcom/onyx/galaxy/note/editor/event/CreateOtherPopupEvent;",
        "onCreateOtherPopupEvent",
        "Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;",
        "onSystemThemeChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/QuitNoteDocumentEvent;",
        "onQuitNoteDocumentEvent",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "b",
        "[I",
        "containerLocation",
        "c",
        "Landroid/graphics/Rect;",
        "d",
        "getRootLocation",
        "()[I",
        "setRootLocation",
        "([I)V",
        "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;",
        "e",
        "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;",
        "getPenAdapter",
        "()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;",
        "penAdapter",
        "Lcom/hjq/window/EasyWindow;",
        "f",
        "Lcom/hjq/window/EasyWindow;",
        "popupWindow",
        "Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;",
        "g",
        "Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/common/extension/MovingDraggable;",
        "h",
        "Lcom/onyx/galaxy/note/common/extension/MovingDraggable;",
        "movingDraggable",
        "Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;",
        "i",
        "Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;",
        "dragCallback",
        "Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;",
        "Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;",
        "penBoxLocation",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "currentDockType",
        "isCollapse",
        "isVisible",
        "shadowOffset",
        "",
        "o",
        "getState",
        "()I",
        "setState",
        "(I)V",
        "state",
        "Landroid/app/Activity;",
        "Ljava/util/LinkedHashMap;",
        "Ljava/lang/Class;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "Ljava/lang/ref/WeakReference;",
        "Lkotlin/collections/LinkedHashMap;",
        "q",
        "Ljava/util/LinkedHashMap;",
        "curPopupMenus",
        "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;",
        "r",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;",
        "handler",
        "Ljava/lang/Runnable;",
        "resetLocationRun",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "t",
        "()Landroidx/recyclerview/widget/LinearLayoutManager;",
        "linearLayoutManager",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;[ILandroid/graphics/Rect;[I)V",
        "Companion",
        "BasePenItemHolder",
        "PenAdapter",
        "PenItemHorizontalHolder",
        "PenItemVerticalHolder",
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
        "SMAP\nPenBoxPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PenBoxPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PenBoxPopup\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 4 DragSwipeExt.kt\ncom/chad/library/adapter4/dragswipe/DragSwipeExtKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1037:1\n324#2:1038\n32#3,5:1039\n32#3,5:1068\n41#3,5:1073\n11#4,12:1044\n41#4,2:1056\n256#5,2:1058\n256#5,2:1060\n254#5:1062\n256#5,2:1063\n256#5,2:1065\n254#5:1067\n256#5,2:1111\n256#5,2:1113\n256#5,2:1115\n256#5,2:1117\n256#5,2:1119\n350#6,7:1078\n350#6,7:1086\n1603#6,9:1095\n1855#6:1104\n1856#6:1106\n1612#6:1107\n1747#6,3:1108\n1#7:1085\n1#7:1105\n215#8,2:1093\n*S KotlinDebug\n*F\n+ 1 PenBoxPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PenBoxPopup\n*L\n221#1:1038\n245#1:1039,5\n536#1:1068,5\n546#1:1073,5\n302#1:1044,12\n302#1:1056,2\n341#1:1058,2\n342#1:1060,2\n358#1:1062\n362#1:1063,2\n363#1:1065,2\n396#1:1067\n1004#1:1111,2\n381#1:1113,2\n386#1:1115,2\n418#1:1117,2\n419#1:1119,2\n581#1:1078,7\n648#1:1086,7\n710#1:1095,9\n710#1:1104\n710#1:1106\n710#1:1107\n711#1:1108,3\n710#1:1105\n702#1:1093,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NONE:I = 0x1

.field public static final RESET_AREA:I = 0x2

.field public static final u:Ljava/lang/String; = "PenBoxPopup"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static v:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/hjq/window/EasyWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hjq/window/EasyWindow<",
            "*>;"
        }
    .end annotation
.end field

.field public g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

.field public h:Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

.field public i:Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

.field public j:Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Z

.field public m:Z

.field public n:F

.field public o:I

.field public p:Landroid/app/Activity;

.field public final q:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final t:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;[ILandroid/graphics/Rect;[I)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerLocation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->b:[I

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->c:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->d:[I

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getPenBoxLocation()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->j:Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->k:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->m:Z

    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p3, Lcom/onyx/android/sdk/device/R$dimen;->dp_4:I

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->n:F

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->o:I

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->q:Ljava/util/LinkedHashMap;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$handler$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$handler$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->r:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$linearLayoutManager$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$linearLayoutManager$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->t:Lkotlin/Lazy;

    return-void
.end method

.method public static final C(ZLandroid/view/ViewGroup$LayoutParams;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$contentView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eqz p0, :cond_0

    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    if-nez p4, :cond_3

    iget-object p0, p2, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    const/4 p4, 0x0

    const-string v0, "binding"

    if-nez p0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, p4

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->listview:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    const-string v1, "listview"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p2, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez p0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object p4, p0

    :goto_1
    iget-object p0, p4, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->ivOperation:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string p2, "ivOperation"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, -0x2

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final E(ZLandroid/view/ViewGroup$LayoutParams;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ILcom/onyx/galaxy/note/common/view/ResizableRecyclerView;Landroid/animation/ValueAnimator;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$contentView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    if-eqz p0, :cond_0

    iput p5, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    iput p5, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    const/4 p0, 0x0

    const-string v0, "binding"

    const/4 v1, 0x0

    if-ltz p5, :cond_2

    iget-object v2, p2, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez v2, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, p0

    :cond_1
    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->listview:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    const-string v3, "listview"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-ne p5, p3, :cond_4

    const/4 p3, -0x2

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p2, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez p2, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object p0, p2

    :goto_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->ivOperation:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string p2, "ivOperation"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p4}, Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;->restoreScrollOffset()V

    return-void
.end method

.method public static final H(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Z)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->s(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez p1, :cond_1

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v2, p1

    :goto_1
    iget-object p1, v2, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->listview:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->Q()V

    :goto_2
    return-void
.end method

.method public static synthetic J(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->I(Z)V

    return-void
.end method

.method public static final K(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Z)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->h:Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

    if-nez v0, :cond_0

    const-string v0, "movingDraggable"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/hjq/window/draggable/BaseDraggable;->getEasyWindow()Lcom/hjq/window/EasyWindow;

    move-result-object v0

    const-string v1, "getEasyWindow(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeDecorView(Lcom/hjq/window/EasyWindow;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->k:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->getIconRotationByType()F

    move-result v0

    const/high16 v1, 0x43870000    # 270.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->l:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->L()V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->N()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->M()V

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->l()V

    :cond_5
    return-void
.end method

.method public static final R(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->m:Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->f:Lcom/hjq/window/EasyWindow;

    if-nez p0, :cond_0

    const-string p0, "popupWindow"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$setVisible$1$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$setVisible$1$1;-><init>(Z)V

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->requireSafeContentView(Lcom/hjq/window/EasyWindow;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final S(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Landroid/graphics/Point;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->h:Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

    if-nez v0, :cond_0

    const-string v0, "movingDraggable"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->j:Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->resetLocation(Ljava/lang/Float;Ljava/lang/Float;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->I(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->z(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final a0(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->h:Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

    if-nez p0, :cond_0

    const-string p0, "movingDraggable"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->enableDrag(Z)V

    return-void
.end method

.method public static final synthetic access$expandOrCollapse(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->n(ZZ)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    return-object p0
.end method

.method public static final synthetic access$getCurrentDockType$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->k:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    return-object p0
.end method

.method public static final synthetic access$getMovingDraggable$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)Lcom/onyx/galaxy/note/common/extension/MovingDraggable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->h:Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

    return-object p0
.end method

.method public static final synthetic access$getPenBoxLocation$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->j:Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;

    return-object p0
.end method

.method public static final synthetic access$isCollapse$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->l:Z

    return p0
.end method

.method public static final synthetic access$isVisible$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->m:Z

    return p0
.end method

.method public static final synthetic access$onMoveInterceptListener(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;FFFF)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->F(FFFF)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$resetOrientation(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->O()V

    return-void
.end method

.method public static final synthetic access$resetShowView(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->P()V

    return-void
.end method

.method public static final synthetic access$setCurrentDockType$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->k:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    return-void
.end method

.method public static final synthetic access$updateSelectedLineSide(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->b0(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;Z)V

    return-void
.end method

.method public static final synthetic access$updateSelectedPenValueSide(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->c0(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->a0(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    return-void
.end method

.method public static synthetic c(ZLandroid/view/ViewGroup$LayoutParams;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->C(ZLandroid/view/ViewGroup$LayoutParams;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Landroid/graphics/Point;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->S(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Landroid/graphics/Point;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->y(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(ZLandroid/view/ViewGroup$LayoutParams;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ILcom/onyx/galaxy/note/common/view/ResizableRecyclerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->E(ZLandroid/view/ViewGroup$LayoutParams;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ILcom/onyx/galaxy/note/common/view/ResizableRecyclerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->K(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Z)V

    return-void
.end method

.method public static synthetic h(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->R(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Z)V

    return-void
.end method

.method public static synthetic i(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->H(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Z)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->n(ZZ)V

    return-void
.end method

.method public static synthetic reloadPenList$default(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->reloadPenList(Z)V

    return-void
.end method

.method public static synthetic t(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->s(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final y(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->u()V

    return-void
.end method

.method public static final z(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->l:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->o(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ZZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->Z()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final A([I)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    aget v0, p1, p0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    aget p1, p1, v0

    if-ltz p1, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method public final B()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->listview:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    const-string v3, "listview"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->k:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->getIconRotationByType()F

    move-result v0

    const/high16 v6, 0x43870000    # 270.0f

    cmpg-float v0, v0, v6

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->listview:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_3
    filled-new-array {v1, v5}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    new-instance v3, Lcom/sunia/HTREnginev2/z0l;

    invoke-direct {v3, v4, v2, p0, v0}, Lcom/sunia/HTREnginev2/z0l;-><init>(ZLandroid/view/ViewGroup$LayoutParams;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final D()V
    .locals 13

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->listview:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    const-string v3, "listview"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    const-string v6, "ivOperation"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->ivOperation:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->listview:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez p0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v1, p0

    :goto_2
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->ivOperation:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v0

    sget-object v6, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v7, Lcom/onyx/android/sdk/device/R$dimen;->dp_48:I

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v6

    mul-int v11, v0, v6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->k:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->getIconRotationByType()F

    move-result v0

    const/high16 v6, 0x43870000    # 270.0f

    cmpg-float v0, v0, v6

    if-nez v0, :cond_8

    move v8, v4

    goto :goto_3

    :cond_8
    move v8, v5

    :goto_3
    filled-new-array {v5, v11}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez v4, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    move-object v1, v4

    :goto_4
    iget-object v12, v1, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->listview:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    new-instance v1, Lcom/sunia/HTREnginev2/b1l;

    move-object v7, v1

    move-object v10, p0

    invoke-direct/range {v7 .. v12}, Lcom/sunia/HTREnginev2/b1l;-><init>(ZLandroid/view/ViewGroup$LayoutParams;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ILcom/onyx/galaxy/note/common/view/ResizableRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final F(FFFF)Z
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->listview:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    const-string v1, "listview"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->screenVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->k:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->getIconRotationByType()F

    move-result p0

    const/high16 v1, 0x43870000    # 270.0f

    cmpg-float p0, p0, v1

    const/4 v1, 0x1

    if-nez p0, :cond_2

    move p0, v1

    goto :goto_0

    :cond_2
    move p0, v2

    :goto_0
    const/4 v3, -0x1

    if-eqz p0, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_3
    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_6

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_6

    :goto_1
    move v2, v1

    :cond_6
    return v2
.end method

.method public final G(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-lez p0, :cond_0

    sput-object p1, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->v:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public final I(Z)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/a1l;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/a1l;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Z)V

    const-wide/16 p0, 0x12c

    sget v2, Lcom/onyx/galaxy/note/R$id;->tag_sidebar_animation_done_runnable:I

    invoke-static {v0, v1, p0, p1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postDelayedLastTaskWithTag(Landroid/view/View;Ljava/lang/Runnable;JI)V

    return-void
.end method

.method public final L()V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->shadowContent:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    const-string v2, "shadowContent"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v0

    sget-object v2, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getPenBoxLocation()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->k:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->getIconRotationByType()F

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    cmpg-float v3, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    sget-object v6, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->v:Landroid/graphics/Rect;

    if-eqz v6, :cond_3

    if-eqz v3, :cond_2

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->b:[I

    aget v7, v7, v4

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v6

    aget v6, v0, v4

    sub-int/2addr v6, v7

    aput v6, v0, v4

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->b:[I

    aget v7, v7, v5

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v6

    aget v6, v0, v5

    sub-int/2addr v6, v7

    aput v6, v0, v5

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    aget v5, v0, v5

    int-to-float v5, v5

    goto :goto_2

    :cond_4
    aget v5, v0, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->n:F

    sub-float/2addr v5, v6

    :goto_2
    if-nez v3, :cond_5

    aget v0, v0, v4

    int-to-float v0, v0

    goto :goto_3

    :cond_5
    aget v0, v0, v4

    int-to-float v0, v0

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->n:F

    sub-float/2addr v0, v3

    :goto_3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->h:Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

    if-nez p0, :cond_6

    const-string p0, "movingDraggable"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-object v1, p0

    :goto_4
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p0, v0, v2}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->resetLocation(Ljava/lang/Float;Ljava/lang/Float;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    return-void
.end method

.method public final M()V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->shadowContent:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    const-string v2, "shadowContent"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v0

    sget-object v2, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getPenBoxLocation()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->getLocationPoint()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v2

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->d:[I

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->b:[I

    aget v6, v6, v5

    aget v4, v4, v5

    sub-int/2addr v6, v4

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    sget-object v4, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->v:Landroid/graphics/Rect;

    if-eqz v4, :cond_3

    aget v4, v0, v5

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->b:[I

    aget v7, v7, v5

    sub-int/2addr v4, v7

    add-int/2addr v4, v6

    aput v4, v0, v5

    :cond_3
    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->h:Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

    if-nez v4, :cond_4

    const-string v4, "movingDraggable"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, v4

    :goto_2
    aget v0, v0, v5

    int-to-float v0, v0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->n:F

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v1, p0, v3, v2}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->resetLocation(Ljava/lang/Float;Ljava/lang/Float;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    return-void
.end method

.method public final N()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->shadowContent:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    const-string v2, "shadowContent"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v0

    sget-object v2, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getPenBoxLocation()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->getLocationPoint()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v2

    sget-object v4, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->v:Landroid/graphics/Rect;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->b:[I

    aget v6, v6, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    aget v4, v0, v5

    sub-int/2addr v4, v6

    aput v4, v0, v5

    :cond_2
    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->h:Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

    if-nez v4, :cond_3

    const-string v4, "movingDraggable"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v4

    :goto_1
    aget v0, v0, v5

    int-to-float v0, v0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->n:F

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v1, v3, p0, v2}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->resetLocation(Ljava/lang/Float;Ljava/lang/Float;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    return-void
.end method

.method public final O()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->k:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->getIconRotationByType()F

    move-result v0

    const/high16 v1, 0x43870000    # 270.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    const-string v4, "binding"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->r()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez v0, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->llyContent:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez p0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v3, p0

    :goto_1
    iget-object p0, v3, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->ivOperation:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$drawable;->ic_pen_box_arrow_up:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->r()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez v0, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->llyContent:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez p0, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v3, p0

    :goto_2
    iget-object p0, v3, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->ivOperation:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$drawable;->ic_pen_box_arrow_left:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void
.end method

.method public final P()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->listview:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final Q()V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getId()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    move-object v7, v6

    :goto_1
    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-le v1, v5, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v0, v6

    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_5
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez p0, :cond_6

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move-object v6, p0

    :goto_5
    iget-object p0, v6, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->listview:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;->restoreScrollOffset(I)V

    :cond_7
    return-void
.end method

.method public final T(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/BallpointPenPopup;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->p(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/BallpointPenPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->q:Ljava/util/LinkedHashMap;

    const-class p1, Lcom/onyx/galaxy/note/editor/view/popup/BallpointPenPopup;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final U(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->p(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->q:Ljava/util/LinkedHashMap;

    const-class p1, Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final V(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->p(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->q()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->getInkPenBoxArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->q:Ljava/util/LinkedHashMap;

    const-class p1, Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final W(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->p(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->q()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->getMarkPenBoxArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->q:Ljava/util/LinkedHashMap;

    const-class p1, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final X(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->p(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->q()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->getPencilBoxArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->q:Ljava/util/LinkedHashMap;

    const-class p1, Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final Y(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/SoftPaintPenPopup;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->p(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SoftPaintPenPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->q:Ljava/util/LinkedHashMap;

    const-class p1, Lcom/onyx/galaxy/note/editor/view/popup/SoftPaintPenPopup;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final Z()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->dismissAllPopup()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->h:Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

    const-string v1, "movingDraggable"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->isTouchMoving()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->h:Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->enableDrag(Z)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->p:Landroid/app/Activity;

    if-nez v3, :cond_3

    const-string v3, "activity"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const-string v4, "getDecorView(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    const-string v5, "binding"

    if-nez v4, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_4
    invoke-virtual {v4}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v4

    const-string v6, "getRoot(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->k:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-direct {v0, v1, v3, v4, v7}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    new-instance v1, Lcom/sunia/HTREnginev2/h1l;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/h1l;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez p0, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;->showAlignByDockType(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method public final applyPenArgs(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/BeforeChangePenArgsEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/BeforeChangePenArgsEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->onItemClick(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v1, v3, v2, v3}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->updateSelectedId$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->clone()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Z)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final b0(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder<",
            "*>;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;->getVSelected()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->k:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->getIconRotationByType()F

    move-result p2

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;->getVSelected()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->k:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->LEFT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    const/4 v3, -0x1

    if-ne v0, v2, :cond_2

    iput v3, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    goto :goto_2

    :cond_2
    iput v1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v3, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;->getIconView()Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;->getIconView()Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.onyx.galaxy.note.editor.view.IShapeViewOpt"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->setDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    :cond_4
    return-void
.end method

.method public final c0(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder<",
            "*>;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;->getIconView()Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;->getTvValue()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->k:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object p2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->LEFT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, p2, :cond_1

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne p0, p2, :cond_2

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final deleteSelectedPenArgs()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$deleteSelectedPenArgs$1$1;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$deleteSelectedPenArgs$1$1;-><init>(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    invoke-static {v1, v2}, Lcom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt;->removeIf(Lcom/chad/library/adapter4/BaseQuickAdapter;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->deletePenArgs$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->clearSelectedItem()V

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeRecoverEvent;

    invoke-direct {v2}, Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeRecoverEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPenBoxCount()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->clearPenBox()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/common/events/DeleteAllPenBoxEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/common/events/DeleteAllPenBoxEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final dismissAllPopup()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->q:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->q:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->j:Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->k:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    :cond_0
    return-object v0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getPenAdapter()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    return-object p0
.end method

.method public final getRootLocation()[I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->d:[I

    return-object p0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->o:I

    return p0
.end method

.method public final hasSelectedPen()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hide()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->dismissAllPopup()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->s:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez v2, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_0
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->f:Lcom/hjq/window/EasyWindow;

    if-nez p0, :cond_2

    const-string p0, "popupWindow"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/hjq/window/EasyWindow;->cancel()V

    return-void
.end method

.method public final isPenBoxAlignedWithSidebar(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Z
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/data/SlideBarType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getShortcutBarData()Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/data/SlideBarTypeKt;->toShortcutType(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    move-result-object p1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez v1, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const-string v2, "getRoot(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->isLeftSideShortcut(Lcom/onyx/galaxy/note/editor/data/ShortcutType;Z)Z

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->LEFT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne p0, v0, :cond_3

    if-eqz p1, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->f:Lcom/hjq/window/EasyWindow;

    if-nez p0, :cond_0

    const-string p0, "popupWindow"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method public final j(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v1, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    invoke-direct {v1}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->setItemViewSwipeEnabled(Z)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->setLongPressDragEnabled(Z)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->setDragMoveFlags(I)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$$inlined$setItemDragListener$default$1;

    invoke-direct {v2, p0, p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$$inlined$setItemDragListener$default$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->setItemDragListener(Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$4;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$4;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->setDataCallback(Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->i:Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    if-nez v0, :cond_0

    const-string p0, "dragCallback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    return-void
.end method

.method public final k()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->reloadPenList$default(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ZILjava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeRecoverEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeRecoverEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final l()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->f:Lcom/hjq/window/EasyWindow;

    if-nez p0, :cond_0

    const-string p0, "popupWindow"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$doAlphaInAnimation$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$doAlphaInAnimation$1;

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->requireSafeContentView(Lcom/hjq/window/EasyWindow;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Landroid/view/View;)V
    .locals 4

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->getShapeToolType$default(Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;ILcom/onyx/galaxy/note/editor/data/ShapeToolType;ILjava/lang/Object;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->X(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->W(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->T(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->Y(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Landroid/view/View;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->U(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Landroid/view/View;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->V(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Landroid/view/View;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(ZZ)V
    .locals 3

    if-nez p2, :cond_0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->l:Z

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->O()V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    const-string v1, "binding"

    if-nez p2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_1
    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->listview:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    const-string v2, "listview"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez p2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_2
    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->ivOperation:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivOperation"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->B()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->D()V

    :goto_0
    const/4 p2, 0x1

    if-nez p1, :cond_5

    const/4 v1, 0x0

    invoke-static {p0, v1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->J(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ZILjava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->j:Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;

    xor-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->setExpandState(Z)V

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getPenBoxLocation()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->j:Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangePenBoxEvent(Lcom/onyx/android/sdk/universal/common/events/ChangePenBoxEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/ChangePenBoxEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->reloadPenList$default(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ZILjava/lang/Object;)V

    return-void
.end method

.method public final onCreateOtherPopupEvent(Lcom/onyx/galaxy/note/editor/event/CreateOtherPopupEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/event/CreateOtherPopupEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->q:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/CreateOtherPopupEvent;->getPopupView()Lcom/onyx/galaxy/note/common/view/BasePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/CreateOtherPopupEvent;->getPopupView()Lcom/onyx/galaxy/note/common/view/BasePopupWindow;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onDeleteAllPenBoxEvent(Lcom/onyx/android/sdk/universal/common/events/DeleteAllPenBoxEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/DeleteAllPenBoxEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->f:Lcom/hjq/window/EasyWindow;

    if-nez p0, :cond_0

    const-string p0, "popupWindow"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->cancel()V

    return-void
.end method

.method public final onDeletePenBoxEvent(Lcom/onyx/android/sdk/universal/common/events/DeletePenBoxEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/DeletePenBoxEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/common/events/DeletePenBoxEvent;->getDeletePenList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->clearSelectedItem()V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->k()V

    return-void
.end method

.method public final onPenItemClick(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Landroid/view/View;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->dismissAllPopup()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->m(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->applyPenArgs(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    :goto_1
    return-void
.end method

.method public final onQuitNoteDocumentEvent(Lcom/onyx/android/sdk/universal/editor/events/note/QuitNoteDocumentEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/QuitNoteDocumentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onShapeToolTypeChangedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->clearSelectedItem()V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->updateSelectedId$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onSystemThemeChangedEvent(Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->refreshView(Landroid/view/View;)V

    return-void
.end method

.method public final onThemeChangedEvent(Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->refreshView(Landroid/view/View;)V

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;
    .locals 11

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->getShapeToolType$default(Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;ILcom/onyx/galaxy/note/editor/data/ShapeToolType;ILjava/lang/Object;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColorList()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object v0

    invoke-virtual {v7}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getHistoryColorList(II)Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColorList()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->setColorList(Lcom/onyx/android/sdk/base/extension/IntList;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColor()I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    :goto_3
    move v1, v4

    new-instance v10, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->p:Landroid/app/Activity;

    if-nez v4, :cond_4

    const-string v4, "activity"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    goto :goto_4

    :cond_4
    move-object v5, v4

    :goto_4
    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->k:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->clone()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    invoke-virtual {v10, v2}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->setAddOperation(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->q()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->getPenArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;

    move-result-object p0

    invoke-virtual {v10, p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->setListener(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;)V

    invoke-virtual {v10, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->setColorList(Lcom/onyx/android/sdk/base/extension/IntList;)V

    invoke-virtual {v10, v1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->setColorIndex(I)V

    return-object v10
.end method

.method public final post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final q()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->r:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    return-object p0
.end method

.method public final r()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->t:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method public final reloadPenList(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->o(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ZZILjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez v1, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/e1l;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/e1l;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final resetPosition([ILandroid/graphics/Rect;[I)V
    .locals 6
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->b:[I

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->d:[I

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->G(Landroid/graphics/Rect;)V

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getPenBoxLocation()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->getLocationPoint()Landroid/graphics/Point;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->v:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->h:Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

    const-string v3, "movingDraggable"

    const/4 v4, 0x0

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_3
    sget-object v5, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->v:Landroid/graphics/Rect;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v5, p3}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->setEditorContainerRect(Landroid/graphics/Rect;[I)V

    iget-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->h:Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

    if-nez p3, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v4

    :cond_4
    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object p1

    invoke-virtual {p3, v0, p2, p1}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->resetLocation(Ljava/lang/Float;Ljava/lang/Float;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    invoke-static {p0, v2, v1, v4}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->J(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ZILjava/lang/Object;)V

    return-void
.end method

.method public final s(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPenList$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final setRootLocation([I)V
    .locals 0
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->d:[I

    return-void
.end method

.method public final setState(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->o:I

    return-void
.end method

.method public final setVisible(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x64

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez v2, :cond_1

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/sunia/HTREnginev2/f1l;

    invoke-direct {v3, p0, p1}, Lcom/sunia/HTREnginev2/f1l;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Z)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 9
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->m:Z

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->p:Landroid/app/Activity;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->G(Landroid/graphics/Rect;)V

    const-string v1, "PenBoxPopup"

    invoke-static {v1}, Lcom/hjq/window/EasyWindow;->cancelByTag(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->x(Landroid/content/Context;)V

    new-instance v8, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

    sget-object v4, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->v:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->d:[I

    new-instance v6, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$1;

    invoke-direct {v6, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    new-instance v7, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$2;

    invoke-direct {v7, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;-><init>(Landroid/content/Context;Landroid/graphics/Rect;[ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$a;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$a;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    invoke-virtual {v8, v2}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->setOnMoveInterceptListener(Lcom/onyx/galaxy/note/common/extension/MovingDraggable$OnMoveInterceptListener;)V

    iput-object v8, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->h:Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

    invoke-static {p1}, Lcom/hjq/window/EasyWindow;->with(Landroid/app/Activity;)Lcom/hjq/window/EasyWindow;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->addFullScreenFlag(Lcom/hjq/window/EasyWindow;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/hjq/window/EasyWindow;->setContentView(Landroid/view/View;)Lcom/hjq/window/EasyWindow;

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$4$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$4$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    invoke-virtual {p1, v2}, Lcom/hjq/window/EasyWindow;->setOnWindowLifecycle(Lcom/hjq/window/EasyWindow$OnWindowLifecycle;)Lcom/hjq/window/EasyWindow;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->h:Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

    if-nez v2, :cond_1

    const-string v2, "movingDraggable"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    invoke-virtual {p1, v2}, Lcom/hjq/window/EasyWindow;->setDraggable(Lcom/hjq/window/draggable/BaseDraggable;)Lcom/hjq/window/EasyWindow;

    const v2, 0x800033

    invoke-virtual {p1, v2}, Lcom/hjq/window/EasyWindow;->setGravity(I)Lcom/hjq/window/EasyWindow;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/hjq/window/EasyWindow;->setXOffset(I)Lcom/hjq/window/EasyWindow;

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getWindowDefaultHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    invoke-virtual {p1, v4}, Lcom/hjq/window/EasyWindow;->setYOffset(I)Lcom/hjq/window/EasyWindow;

    const v4, 0x5265c00

    invoke-virtual {p1, v4}, Lcom/hjq/window/EasyWindow;->setDuration(I)Lcom/hjq/window/EasyWindow;

    sget v4, Lcom/onyx/galaxy/note/R$style;->popupWindowAnimationLong:I

    invoke-virtual {p1, v4}, Lcom/hjq/window/EasyWindow;->setAnimStyle(I)Lcom/hjq/window/EasyWindow;

    invoke-virtual {p1, v0}, Lcom/hjq/window/EasyWindow;->setOutsideTouchable(Z)Lcom/hjq/window/EasyWindow;

    invoke-virtual {p1, v1}, Lcom/hjq/window/EasyWindow;->setTag(Ljava/lang/String;)Lcom/hjq/window/EasyWindow;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->j:Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->getLocationPoint()Landroid/graphics/Point;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeContentView(Lcom/hjq/window/EasyWindow;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v5, Lcom/sunia/HTREnginev2/g1l;

    invoke-direct {v5, p0, v1}, Lcom/sunia/HTREnginev2/g1l;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Landroid/graphics/Point;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    const-string v1, "apply(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->f:Lcom/hjq/window/EasyWindow;

    invoke-virtual {p1}, Lcom/hjq/window/EasyWindow;->show()V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->applyPenArgs(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->j:Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->getExpandState()Z

    move-result p1

    xor-int/2addr p1, v0

    const/4 p2, 0x2

    invoke-static {p0, p1, v2, p2, v3}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->o(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ZZILjava/lang/Object;)V

    return-void
.end method

.method public final u()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->o(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ZZILjava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->h:Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

    if-nez p0, :cond_0

    const-string p0, "movingDraggable"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    invoke-virtual {v3, v0}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->enableDrag(Z)V

    return-void
.end method

.method public final v()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->q:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "<get-values>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_4
    :goto_1
    return v1
.end method

.method public final w()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->listview:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->r()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->listview:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->listview:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    const-string v1, "listview"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->j(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->reloadPenList$default(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ZILjava/lang/Object;)V

    return-void
.end method

.method public final x(Landroid/content/Context;)V
    .locals 8

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object v2, p1, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->ivOperation:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string p1, "ivOperation"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/c1l;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/c1l;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    iget-object v2, p1, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->icon:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const-string p1, "icon"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/d1l;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/d1l;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->j:Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->getLocationPoint()Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->g:Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    iget-object p1, v0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->flyContent:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->w()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->P()V

    return-void
.end method
