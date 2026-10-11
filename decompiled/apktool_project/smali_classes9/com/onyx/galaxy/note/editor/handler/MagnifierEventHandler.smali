.class public final Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;
.super Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$Companion;,
        Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMagnifierEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,1041:1\n256#2,2:1042\n310#2:1045\n326#2,4:1046\n311#2:1050\n277#2,2:1054\n256#2,2:1056\n256#2,2:1058\n256#2,2:1060\n277#2,2:1062\n277#2,2:1064\n256#2,2:1066\n277#2,2:1068\n254#2:1070\n1#3:1044\n288#4,2:1051\n288#4,2:1071\n337#5:1053\n*S KotlinDebug\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler\n*L\n266#1:1042,2\n499#1:1045\n499#1:1046,4\n499#1:1050\n654#1:1054,2\n856#1:1056,2\n857#1:1058,2\n858#1:1060,2\n875#1:1062,2\n876#1:1064,2\n877#1:1066,2\n878#1:1068,2\n927#1:1070\n587#1:1051,2\n945#1:1071,2\n590#1:1053\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r*\u0002\u008a\u0001\u0018\u0000 \u009b\u00012\u00020\u00012\u00020\u0002:\u0004\u009b\u0001\u009c\u0001B,\u0012\u0006\u0010d\u001a\u00020_\u0012\u0006\u0010h\u001a\u00020e\u0012\u0006\u0010l\u001a\u00020i\u0012\t\u0008\u0002\u0010\u0098\u0001\u001a\u00020i\u00a2\u0006\u0006\u0008\u0099\u0001\u0010\u009a\u0001J\u0008\u0010\u0004\u001a\u00020\u0003H\u0003J\u0008\u0010\u0005\u001a\u00020\u0003H\u0002J\u0008\u0010\u0006\u001a\u00020\u0003H\u0002J\u0008\u0010\u0007\u001a\u00020\u0003H\u0002J\u0008\u0010\u0008\u001a\u00020\u0003H\u0002J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002J8\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00112\u0014\u0008\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00030\u0013H\u0002J\u0008\u0010\u0016\u001a\u00020\u0003H\u0002J\u0012\u0010\u0018\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0017\u001a\u00020\tH\u0002J\u0008\u0010\u0019\u001a\u00020\u0003H\u0002J\u0008\u0010\u001a\u001a\u00020\u0003H\u0002J\u0008\u0010\u001c\u001a\u00020\u001bH\u0002J\u0008\u0010\u001d\u001a\u00020\u0003H\u0002J\u0018\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\r0 2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001eH\u0002J\u001a\u0010&\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\"2\u0008\u0008\u0002\u0010%\u001a\u00020$H\u0002J\u001e\u0010\'\u001a\u0006\u0012\u0002\u0008\u00030 2\u0006\u0010#\u001a\u00020\"2\u0008\u0008\u0002\u0010%\u001a\u00020$H\u0002J\u0016\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u000f0 2\u0006\u0010(\u001a\u00020\u000fH\u0002J\u0016\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u000f0 2\u0006\u0010#\u001a\u00020\"H\u0002J\u0008\u0010+\u001a\u00020\u0003H\u0002J\u0008\u0010,\u001a\u00020\u0003H\u0002J\u000c\u0010-\u001a\u0006\u0012\u0002\u0008\u00030 H\u0002J\u0008\u0010.\u001a\u00020\u0003H\u0002J\u0008\u0010/\u001a\u00020\u0003H\u0002J\u0008\u00100\u001a\u00020\u0003H\u0002J\u0008\u00101\u001a\u00020\u0003H\u0002J\u0012\u00103\u001a\u00020\u00032\u0008\u0008\u0002\u00102\u001a\u00020$H\u0002J\u0008\u00104\u001a\u00020\u0003H\u0002J\u0010\u00106\u001a\u00020\u00032\u0006\u00105\u001a\u00020\tH\u0002J\u0008\u00107\u001a\u00020\tH\u0002J\u0008\u00108\u001a\u00020\u0003H\u0002J\u0008\u00109\u001a\u00020$H\u0002J\u0008\u0010:\u001a\u00020$H\u0002J\u0008\u0010;\u001a\u00020$H\u0002J\u0010\u0010>\u001a\u00020\r2\u0006\u0010=\u001a\u00020<H\u0002J\u0008\u0010?\u001a\u00020\u0003H\u0002J\u0010\u0010A\u001a\u00020\u00032\u0006\u0010@\u001a\u00020$H\u0002J\u0008\u0010B\u001a\u00020\u0003H\u0016J\u0010\u0010E\u001a\u00020\u00032\u0006\u0010D\u001a\u00020CH\u0016J\u0010\u0010H\u001a\u00020\u00032\u0006\u0010G\u001a\u00020FH\u0007J\u0010\u0010J\u001a\u00020\u00032\u0006\u0010G\u001a\u00020IH\u0007J\u0010\u0010L\u001a\u00020\u00032\u0006\u0010G\u001a\u00020KH\u0007J\u0010\u0010N\u001a\u00020\u00032\u0006\u0010G\u001a\u00020MH\u0007J\u0010\u0010P\u001a\u00020\u00032\u0006\u0010G\u001a\u00020OH\u0007J\u0010\u0010R\u001a\u00020\u00032\u0006\u0010G\u001a\u00020QH\u0007J\u0010\u0010T\u001a\u00020\u00032\u0006\u0010G\u001a\u00020SH\u0007J\u0010\u0010V\u001a\u00020\u00032\u0006\u0010G\u001a\u00020UH\u0007J\u0010\u0010X\u001a\u00020\u00032\u0006\u0010G\u001a\u00020WH\u0007J\u0010\u0010Z\u001a\u00020\u00032\u0006\u0010G\u001a\u00020YH\u0007J\u0010\u0010\\\u001a\u00020\u00032\u0006\u0010G\u001a\u00020[H\u0007J\u0010\u0010^\u001a\u00020\u00032\u0006\u0010G\u001a\u00020]H\u0007R\u0017\u0010d\u001a\u00020_8\u0006\u00a2\u0006\u000c\n\u0004\u0008`\u0010a\u001a\u0004\u0008b\u0010cR\u0014\u0010h\u001a\u00020e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0014\u0010l\u001a\u00020i8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u0014\u0010p\u001a\u00020m8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008n\u0010oR\u0014\u0010t\u001a\u00020q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008r\u0010sR\u0016\u0010x\u001a\u00020u8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008v\u0010wR\u0016\u0010|\u001a\u00020y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010{R\u0017\u0010\u0080\u0001\u001a\u00020}8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010\u007fR\u0019\u0010\u0083\u0001\u001a\u00030\u0081\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00084\u0010\u0082\u0001R\u0019\u0010\u0086\u0001\u001a\u00030\u0084\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008,\u0010\u0085\u0001R\u0017\u0010\u0089\u0001\u001a\u00030\u0087\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008+\u0010\u0088\u0001R\u0017\u0010\u008c\u0001\u001a\u00030\u008a\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u00086\u0010\u008b\u0001R\u001d\u0010\u008f\u0001\u001a\t\u0012\u0004\u0012\u00020\t0\u008d\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u00083\u0010\u008e\u0001RB\u0010\u0094\u0001\u001a+\u0012\r\u0012\u000b \u0091\u0001*\u0004\u0018\u00010\t0\t \u0091\u0001*\u0014\u0012\r\u0012\u000b \u0091\u0001*\u0004\u0018\u00010\t0\t\u0018\u00010\u0090\u00010\u0090\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0092\u0001\u0010\u0093\u0001R\u0018\u0010\u0096\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008*\u0010\u0095\u0001R\u0017\u0010\u0097\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u00100\u00a8\u0006\u009d\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;",
        "",
        "x",
        "h0",
        "i0",
        "j0",
        "k0",
        "",
        "offsetX",
        "offsetY",
        "Y",
        "Landroid/graphics/RectF;",
        "shapeRectF",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "currentBoxInfo",
        "",
        "offsetStep",
        "Lkotlin/Function1;",
        "onNext",
        "Q",
        "n0",
        "dy",
        "o0",
        "l0",
        "m0",
        "Landroid/util/Size;",
        "f0",
        "T",
        "Landroid/graphics/Matrix;",
        "displayMatrix",
        "Lio/reactivex/rxjava3/core/Observable;",
        "M",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "virtualDocViewInfo",
        "",
        "forceCollectVirtualDocViewInfo",
        "K",
        "N",
        "boxInfo",
        "u",
        "t",
        "p",
        "o",
        "X",
        "a0",
        "b0",
        "Z",
        "W",
        "force",
        "r",
        "n",
        "newLineOffset",
        "q",
        "v",
        "g0",
        "I",
        "H",
        "J",
        "Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;",
        "idRectF",
        "w",
        "e0",
        "status",
        "d0",
        "destroy",
        "",
        "id",
        "onDown",
        "Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierEvent;",
        "event",
        "onMagniferEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierCheckEvent;",
        "onMagnifierCheckEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierAutoForwardMoveEvent;",
        "onMagnifierAutoForwardMoveEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;",
        "onDocumentOpenSuccessEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeChangedEvent;",
        "onShapeToolTypeChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;",
        "onSingleClickEvent",
        "Lcom/onyx/android/sdk/note/common/event/AddShapesEvent;",
        "onAddShapesEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;",
        "onEditorBundleChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;",
        "onChangeTouchModeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/RulerEvent;",
        "onRulerEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ContentViewSizeUpdateDoneEvent;",
        "onContentViewSizeUpdateDoneEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;",
        "onVirtualDocViewInfoEvent",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "f",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "getFragment",
        "()Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "fragment",
        "Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;",
        "g",
        "Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;",
        "focusEditorViewContainerBiding",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "focusEditorBundle",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "editorBundleManager",
        "Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;",
        "j",
        "Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;",
        "magnifierRootLayout",
        "Landroid/widget/LinearLayout;",
        "k",
        "Landroid/widget/LinearLayout;",
        "magnifierEditorContainer",
        "Lcom/onyx/android/sdk/universal/editor/display/EditorView;",
        "l",
        "Lcom/onyx/android/sdk/universal/editor/display/EditorView;",
        "magnifierEditorView",
        "Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;",
        "m",
        "Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;",
        "magnifierActionContainer",
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;",
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;",
        "magnifierViewportContainer",
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;",
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;",
        "magnifierViewportView",
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;",
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;",
        "magnifierViewportStateChangedListener",
        "com/onyx/galaxy/note/editor/handler/MagnifierEventHandler$editorViewHandler$1",
        "Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$editorViewHandler$1;",
        "editorViewHandler",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "hitTestNewLineFilter",
        "Lorg/apache/commons/lang3/Range;",
        "kotlin.jvm.PlatformType",
        "s",
        "Lorg/apache/commons/lang3/Range;",
        "scalePage",
        "F",
        "focusEditorStandardMinScale",
        "focusEditorScrolling",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "Companion",
        "b",
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
        "SMAP\nMagnifierEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,1041:1\n256#2,2:1042\n310#2:1045\n326#2,4:1046\n311#2:1050\n277#2,2:1054\n256#2,2:1056\n256#2,2:1058\n256#2,2:1060\n277#2,2:1062\n277#2,2:1064\n256#2,2:1066\n277#2,2:1068\n254#2:1070\n1#3:1044\n288#4,2:1051\n288#4,2:1071\n337#5:1053\n*S KotlinDebug\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler\n*L\n266#1:1042,2\n499#1:1045\n499#1:1046,4\n499#1:1050\n654#1:1054,2\n856#1:1056,2\n857#1:1058,2\n858#1:1060,2\n875#1:1062,2\n876#1:1064,2\n877#1:1066,2\n878#1:1068,2\n927#1:1070\n587#1:1051,2\n945#1:1071,2\n590#1:1053\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HEIGHT_RADIO:F = 0.45f

.field public static final INIT_RADIO:F = 5.0f

.field public static final SCROLL_BY_DELTA:F = 10.0f


# instance fields
.field public final f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/universal/editor/display/EditorView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$editorViewHandler$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lcom/onyx/android/sdk/base/rx/RxFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Lorg/apache/commons/lang3/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public t:F

.field public u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->Companion:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 7
    .param p1    # Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusEditorViewContainerBiding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusEditorBundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p4}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 4
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    .line 5
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->g:Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    .line 6
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 7
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->i:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    .line 8
    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->magnifierLayout:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    const-string v1, "magnifierLayout"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    .line 9
    iget-object v1, p2, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->magnifierEditorContainer:Landroid/widget/LinearLayout;

    const-string v2, "magnifierEditorContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->k:Landroid/widget/LinearLayout;

    .line 10
    iget-object v1, p2, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->magnifierEditorView:Lcom/onyx/android/sdk/universal/editor/display/EditorView;

    const-string v2, "magnifierEditorView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->l:Lcom/onyx/android/sdk/universal/editor/display/EditorView;

    .line 11
    iget-object v1, p2, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->magnifierActionContainer:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v2, "magnifierActionContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->m:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    .line 12
    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->magnifierViewPortContainer:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;

    const-string v1, "magnifierViewPortContainer"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->n:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;

    .line 13
    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;->getViewportView()Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    .line 14
    new-instance p2, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    .line 15
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->n:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->l:Lcom/onyx/android/sdk/universal/editor/display/EditorView;

    .line 16
    invoke-direct {p2, p3, p4, v1, v2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;Landroid/view/View;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->p:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    .line 17
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object p2

    .line 18
    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$editorViewHandler$1;

    invoke-direct {v1, p4, p0, p2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$editorViewHandler$1;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->q:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$editorViewHandler$1;

    .line 19
    new-instance p2, Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-direct {p2}, Lcom/onyx/android/sdk/base/rx/RxFilter;-><init>()V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->r:Lcom/onyx/android/sdk/base/rx/RxFilter;

    .line 20
    sget-object v2, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->getPageScaleRange()Lorg/apache/commons/lang3/Range;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->s:Lorg/apache/commons/lang3/Range;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    iput v2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->t:F

    .line 22
    sget-object v2, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    .line 23
    sget-object v2, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v2, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureRegister(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 24
    invoke-static {p4, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->setOwner(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    .line 25
    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object p3

    .line 26
    const-class v3, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getSimpleName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v4, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, p0, v5, v6, v5}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    invoke-virtual {p3, v3, v4}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    .line 29
    invoke-virtual {v0, p4}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->registerEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 30
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-string v3, "requireActivity(...)"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->attachActivity(Landroid/app/Activity;)V

    .line 31
    invoke-static {p4}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->setEnabledLongPress(Z)V

    .line 32
    invoke-static {p4}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p3

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$1;

    invoke-direct {v1, p4, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$1;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {p3, v1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->setEditorDataProxy(Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;)V

    .line 33
    invoke-static {p4}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->touchStateInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->setTextSelectionTouchEnabled(Z)V

    .line 34
    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->setEnableUpdateScaleOnRotation(Z)V

    .line 35
    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object p3

    .line 36
    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$2;

    invoke-direct {v1, p4, p0, v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$2;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;)V

    const-string v0, "sync"

    .line 37
    invoke-virtual {p3, v0, v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    .line 38
    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object p3

    .line 39
    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$3;

    invoke-direct {v0, p4, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$3;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    const-string v1, "erase"

    .line 40
    invoke-virtual {p3, v1, v0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    .line 41
    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventHandlerManager()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;

    move-result-object p3

    .line 42
    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    invoke-direct {v0, p4, p1}, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    const-string p1, "beautify"

    .line 43
    invoke-virtual {p3, p1, v0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;->registerEventHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;)V

    .line 44
    new-instance p1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$a;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$a;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    const-wide/16 p3, 0x1f4

    invoke-virtual {p2, p3, p4, p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->subscribeDebounce(JLio/reactivex/rxjava3/functions/Consumer;)V

    .line 45
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->x()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 1
    sget-object p4, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->Companion:Lcom/onyx/android/sdk/universal/editor/EditorBundle$Companion;

    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/EditorBundle$Companion;->createInstance()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p4

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public static final A(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j0()V

    return-void
.end method

.method public static final B(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    const/high16 p1, -0x3ee00000    # -10.0f

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveUp(F)V

    return-void
.end method

.method public static final C(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    const/high16 p1, 0x41200000    # 10.0f

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveDown(F)V

    return-void
.end method

.method public static final D(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->l0()V

    return-void
.end method

.method public static final E(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->s(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final F(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->r:Lcom/onyx/android/sdk/base/rx/RxFilter;

    const/high16 p1, -0x40800000    # -1.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final G(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->f0()Landroid/util/Size;

    return-void
.end method

.method public static synthetic L(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->K(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;Z)V

    return-void
.end method

.method public static synthetic O(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/graphics/Matrix;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/lite/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/lite/utils/MathUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/lite/utils/MathUtils;->getEMPTY_MATRIX()Landroid/graphics/Matrix;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->M(Landroid/graphics/Matrix;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->N(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    new-instance p4, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateToNextPage$1;

    invoke-direct {p4, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateToNextPage$1;-><init>(Landroid/graphics/RectF;)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->Q(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final S(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->p()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->X()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static final U(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->W()V

    return-void
.end method

.method public static final V(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->I()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->H()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->s(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;ZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->g0()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->C(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$autoNewLine(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->q(F)V

    return-void
.end method

.method public static final synthetic access$closeMagnifier(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->r(Z)V

    return-void
.end method

.method public static final synthetic access$findFocusBoxInfo(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->u(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFocusEditorBundle$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getFocusEditorStandardMinScale$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->t:F

    return p0
.end method

.method public static final synthetic access$getMagnifierEditorContainer$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->k:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static final synthetic access$getMagnifierEditorView$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/android/sdk/universal/editor/display/EditorView;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->l:Lcom/onyx/android/sdk/universal/editor/display/EditorView;

    return-object p0
.end method

.method public static final synthetic access$getMagnifierRootLayout$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    return-object p0
.end method

.method public static final synthetic access$getMagnifierViewportRatio(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->v()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMagnifierViewportStateChangedListener$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->p:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    return-object p0
.end method

.method public static final synthetic access$getMagnifierViewportView$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    return-object p0
.end method

.method public static final synthetic access$getScalePage$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lorg/apache/commons/lang3/Range;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->s:Lorg/apache/commons/lang3/Range;

    return-object p0
.end method

.method public static final synthetic access$isShowMagnifierEditorView(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->I()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$locateFocusEditorViewRect(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->K(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;Z)V

    return-void
.end method

.method public static final synthetic access$locateFocusEditorViewRectObservable(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/graphics/Matrix;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->M(Landroid/graphics/Matrix;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onFocusEditorDocOpened(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->T()V

    return-void
.end method

.method public static final synthetic access$setFocusEditorScrolling$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->u:Z

    return-void
.end method

.method public static final synthetic access$updateMagnifierEditorScaleRange(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->a0()V

    return-void
.end method

.method public static final synthetic access$updateMagnifierLayoutSize(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->b0()V

    return-void
.end method

.method public static final synthetic access$updateMagnifierViewportView(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Landroid/util/Size;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->f0()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$viewportMoveLeftImpl(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->i0()V

    return-void
.end method

.method public static final synthetic access$viewportMoveRightImpl(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->k0()V

    return-void
.end method

.method public static final synthetic access$viewportNewLineImpl(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->m0()V

    return-void
.end method

.method public static final synthetic access$viewportPreviousLineImpl(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o0(F)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->y(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->c0(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    return-void
.end method

.method public static final c0(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->g:Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->editorViewContainer:Landroid/widget/RelativeLayout;

    const-string v1, "editorViewContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$updateMagnifierLayoutSize$1$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$updateMagnifierLayoutSize$1$1;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutMargin(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->G(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->U(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->B(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->z(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->A(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->V(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    return-void
.end method

.method public static synthetic j(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->S(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->D(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->E(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->F(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;FILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getNewLineOffset()F

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o0(F)V

    return-void
.end method

.method public static synthetic s(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->r(Z)V

    return-void
.end method

.method public static final y(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static final z(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h0()V

    return-void
.end method


# virtual methods
.method public final H()Z
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->isPenDrawing()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->ERASER:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    const/4 v2, 0x0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->GRAPH_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public final I()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final J()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->n:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getSize(Landroid/view/View;)Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/SizeKt;->toRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public final K(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->N(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final M(Landroid/graphics/Matrix;)Lio/reactivex/rxjava3/core/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Matrix;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->l:Lcom/onyx/android/sdk/universal/editor/display/EditorView;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getSize(Landroid/view/View;)Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/SizeKt;->toRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iput v2, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v2, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget v3, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iput v3, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentMinScale(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)F

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->t(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    sget-object v5, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$i;->e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$i;

    invoke-virtual {v4, v5}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    new-instance v5, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$j;

    invoke-direct {v5, v1, v0, p0, v3}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$j;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;F)V

    invoke-virtual {v4, v5}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    new-instance v5, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$k;

    invoke-direct {v5, v2, v0, p0, v3}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$k;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;F)V

    invoke-virtual {v4, v5}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$l;

    invoke-direct {v4, v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$l;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$m;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$m;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    sget-object v4, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$n;->e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$n;

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$o;

    invoke-direct {v4, v2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$o;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$p;

    invoke-direct {v4, v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$p;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$q;

    invoke-direct {v4, p0, v1, v2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$q;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$f;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$f;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$g;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$g;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$h;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$h;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final N(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
            "Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->p:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->isProcessing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->u:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->updateVirtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->n:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getSize(Landroid/view/View;)Landroid/util/Size;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/SizeKt;->toRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->O(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/graphics/Matrix;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$13;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$13;-><init>(Landroid/graphics/RectF;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14;

    invoke-direct {v2, p1, p0, p2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14;-><init>(Landroid/graphics/RectF;Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Z)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final Q(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateToNextPage$2;

    invoke-direct {v1, p2, p3}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateToNextPage$2;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;I)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createCoreObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    sget-object p3, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$r;->e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$r;

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    sget-object p3, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$s;->e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$s;

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance p3, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$t;

    invoke-direct {p3, p4}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$t;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance p3, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$u;

    invoke-direct {p3, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$u;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/graphics/RectF;)V

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final T()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->e0()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->getMagnifierStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->r(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->ensureCloseDoc(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/p6j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/p6j;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final W()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentMinScale(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->t:F

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->magnifierNewLineAreaView:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierNewLineAreaView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierNewLineAreaView;->onLayoutChanged()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->m:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->n:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->b0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->f0()Landroid/util/Size;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/app/HideRulerEvent;

    invoke-direct {v2}, Lcom/onyx/android/sdk/universal/editor/events/app/HideRulerEvent;-><init>()V

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->touchStateInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->setShapeTouchEnabled(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->touchStateInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->setTextSelectionTouchEnabled(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->setEnabledLongPress(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->setEnabledStylusTouchProcess(Z)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->d0(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->g0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->n()V

    return-void
.end method

.method public final X()Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentVisibleBoxInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewportRect(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->getMagnifierViewport(Ljava/lang/String;)Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->w(Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    new-instance v4, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$viewRectF$2;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$viewRectF$2;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->n:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getSize(Landroid/view/View;)Landroid/util/Size;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/SizeKt;->toRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v4

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v6}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->visibleBoundingRect(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-static {v4, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v7

    const/4 v8, 0x2

    if-nez v7, :cond_1

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    int-to-float v9, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v9

    sub-float/2addr v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_1

    :cond_1
    invoke-static {v6, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, v6, Landroid/graphics/RectF;->left:F

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4, v6}, Landroid/graphics/RectF;->offsetTo(FF)V

    :cond_2
    :goto_1
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    const/4 v7, 0x0

    invoke-static {v6, v3, v7, v8, v5}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveTo$default(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-static {v3}, Lcom/onyx/android/sdk/extension/ViewKt;->post(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v5, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b0;

    invoke-direct {v5, v4, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {v3, v5}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v5, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$c0;

    invoke-direct {v5, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$c0;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {v3, v5}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v5, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$d0;

    invoke-direct {v5, p0, v0, v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$d0;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Ljava/lang/String;Landroid/graphics/RectF;)V

    invoke-virtual {v3, v5}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$e0;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$e0;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "observeOn(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$5;

    invoke-direct {v1, v4}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$5;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v3, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$6;

    invoke-direct {v3, p0, v4, v2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$6;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;)V

    invoke-static {v0, v1, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$f0;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$f0;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$g0;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$g0;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final Y(FF)V
    .locals 9

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->v()F

    move-result v2

    mul-float v4, p1, v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->v()F

    move-result p0

    mul-float v5, p2, p0

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;-><init>(FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final Z()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->k:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->s(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;ZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->W()V

    return-void
.end method

.method public final a0()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->limitShapeRectInCurrentPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentToViewportWidthScale(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentMinScale(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)F

    move-result v1

    div-float/2addr v0, v1

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->getPageScaleRange()Lorg/apache/commons/lang3/Range;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->getDraftNoteScaleRange()Lorg/apache/commons/lang3/Range;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->s:Lorg/apache/commons/lang3/Range;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->setCustomScaleRange(Lorg/apache/commons/lang3/Range;)V

    return-void
.end method

.method public final b0()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->magnifierLayout:Landroid/widget/FrameLayout;

    const-string v1, "magnifierLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->g:Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->magnifierLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/m6j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/m6j;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->updateMagnifierStatus(Ljava/lang/String;Z)V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->r:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureUnRegister(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->r(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->i:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->unregisterEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->p:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->destroy()V

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->destroy()V

    return-void
.end method

.method public final e0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->I()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->l:Lcom/onyx/android/sdk/universal/editor/display/EditorView;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getSize(Landroid/view/View;)Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/SizeKt;->toRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->t(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$h0;->e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$h0;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$i0;

    invoke-direct {v3, v0, p0, v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$i0;-><init>(Landroid/graphics/RectF;Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final f0()Landroid/util/Size;
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->magnifierLayout:Landroid/widget/FrameLayout;

    const-string v1, "magnifierLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g0()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierToolEvent;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->I()Z

    move-result p0

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierToolEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final getFragment()Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    return-object p0
.end method

.method public final h0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->J()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->P(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$j0;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$j0;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final i0()V
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->limitShapeRectInCurrentPage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v1, v1, v0, v2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveLeft$default(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;FFILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v2, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->findIntersectsVisibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveDefaultLeft()V

    return-void

    :cond_1
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v4, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v4, v0, v2}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToShapeRect(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v5

    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40a00000    # 5.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    cmpg-float v0, v0, v6

    if-gez v0, :cond_2

    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$viewportMoveLeftImpl$1;

    invoke-direct {v1, v3}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$viewportMoveLeftImpl$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->Q(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->n0()V

    :goto_0
    return-void

    :cond_3
    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->n:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;

    invoke-static {v5}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getSize(Landroid/view/View;)Landroid/util/Size;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/android/sdk/base/extension/SizeKt;->toRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v5

    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget v7, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {v7}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getDefaultXOffset()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v0, v7, v1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v4, v0, v2}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToShapeRect(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v7

    iput-object v7, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    cmpg-float v8, v7, v1

    if-gez v8, :cond_5

    cmpl-float v6, v6, v1

    if-lez v6, :cond_5

    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    neg-float v5, v7

    invoke-virtual {v0, v5, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v2}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToScreenRectF(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->n0()V

    return-void

    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->Y(FF)V

    goto :goto_1

    :cond_5
    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getDefaultXOffset()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->Y(FF)V

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveDefaultLeft()V

    :goto_1
    return-void
.end method

.method public final j0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->J()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->P(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$k0;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$k0;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final k0()V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->limitShapeRectInCurrentPage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v1, v1, v0, v2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveRight$default(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;FFILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v2, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->findIntersectsVisibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v5, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveDefaultRight()V

    return-void

    :cond_1
    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v2, v0, v5}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToShapeRect(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v4

    iget v3, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v6

    const/high16 v6, -0x3f600000    # -5.0f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v6

    if-lez v0, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->R(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->m0()V

    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->n:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getSize(Landroid/view/View;)Landroid/util/Size;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/SizeKt;->toRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v6, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v6

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {v6}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getDefaultXOffset()F

    move-result v6

    invoke-virtual {v0, v6, v1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v2, v0, v5}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToShapeRect(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v6

    iget v7, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v8

    cmpl-float v8, v7, v1

    if-lez v8, :cond_5

    cmpg-float v4, v4, v1

    if-gez v4, :cond_5

    neg-float v0, v7

    invoke-virtual {v6, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v2, v6, v5}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToScreenRectF(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->m0()V

    return-void

    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->Y(FF)V

    goto :goto_1

    :cond_5
    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getDefaultXOffset()F

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->Y(FF)V

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveDefaultRight()V

    :goto_1
    return-void
.end method

.method public final l0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->J()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->P(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$l0;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$l0;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final m0()V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getNewLineOffset()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->limitShapeRectInCurrentPage()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->newLine()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->findIntersectsVisibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->findIntersectsVisibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v5, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->newLine()V

    return-void

    :cond_1
    sget-object v3, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v3, v1, v5}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToShapeRect(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v0, :cond_3

    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v6

    const/high16 v6, -0x3f600000    # -5.0f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v2, v0}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToShapeRect(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeRectInPageAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeRectInPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Landroid/graphics/RectF;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void

    :cond_3
    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->R(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentVisibleBoxInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->setForceSave(Z)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$c;

    invoke-direct {v3, p0, v1, v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$c;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final n0()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getNewLineOffset()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->J()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v1, v4, v2, v3}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->P(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    :goto_0
    new-instance v2, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$m0;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$m0;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;F)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final o()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->hasSelectedPen()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPenBox$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getSelectedPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getType()I

    move-result v0

    sget-object v3, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->INK_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v1, v0, v3}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->getShapeToolType(ILcom/onyx/galaxy/note/editor/data/ShapeToolType;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/events/note/ActivateShapeHandlerEvent;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->toShapeHandlerProviderName(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v1, v2, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/ActivateShapeHandlerEvent;-><init>(Ljava/lang/String;ZLjava/lang/Integer;)V

    invoke-static {p0, v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final o0(F)V
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->limitShapeRectInCurrentPage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->newLine()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->findIntersectsVisibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->findIntersectsVisibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz p1, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v3, v0, v1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToShapeRect(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    const/high16 v5, -0x3f600000    # -5.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    new-instance p1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$viewportPreviousLineImpl$1;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$viewportPreviousLineImpl$1;-><init>(Landroid/graphics/RectF;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->Q(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    invoke-virtual {v3, v2, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToShapeRect(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeRectInPageAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeRectInPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Landroid/graphics/RectF;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->newLine()V

    return-void
.end method

.method public final onAddShapesEvent(Lcom/onyx/android/sdk/note/common/event/AddShapesEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/note/common/event/AddShapesEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->magnifierNewLineAreaView:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierNewLineAreaView;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/event/AddShapesEvent;->getList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->visibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v1, :cond_4

    return-void

    :cond_4
    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToScreenRectF(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->magnifierNewLineAreaView:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierNewLineAreaView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->relativelyParentRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierNewLineAreaView;->getRealRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getNewLineMinOffset()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->r:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final onChangeTouchModeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isDocumentOpen(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;->getNewTouchMode()Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->updateTouchMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;->getNewTouchMode()Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->isReadingMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->s(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onContentViewSizeUpdateDoneEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ContentViewSizeUpdateDoneEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ContentViewSizeUpdateDoneEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->I()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$v;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$v;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$w;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$w;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$x;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$x;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$y;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$y;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$z;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$z;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$a0;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$a0;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onDocumentOpenSuccessEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/sunia/HTREnginev2/o6j;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/o6j;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->runInUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDown(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->onDown(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->i:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getEditorViewHandlers()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->i:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->onDown(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->H()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->I()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->p()V

    :cond_2
    return-void
.end method

.method public final onEditorBundleChangedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;->getCurrent()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->g0()V

    :cond_0
    return-void
.end method

.method public final onMagniferEvent(Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierEvent;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->i:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->Z()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->I()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "requireContext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public final onMagnifierAutoForwardMoveEvent(Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierAutoForwardMoveEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierAutoForwardMoveEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->magnifierNewLineAreaView:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierNewLineAreaView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierAutoForwardMoveEvent;->getAutoMove()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final onMagnifierCheckEvent(Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierCheckEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierCheckEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->g0()V

    return-void
.end method

.method public final onRulerEvent(Lcom/onyx/android/sdk/universal/editor/events/app/RulerEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/RulerEvent;
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

    invoke-static {p0, v1, p1, v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->s(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;ZILjava/lang/Object;)V

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

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->i:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/sunia/HTREnginev2/n6j;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/n6j;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->runInUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSingleClickEvent(Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->L(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;ZILjava/lang/Object;)V

    return-void
.end method

.method public final onVirtualDocViewInfoEvent(Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->L(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;ZILjava/lang/Object;)V

    return-void
.end method

.method public final p()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->H()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->ensurePenShapeToolType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->ensureSwitchUserTool$note_overseasRelease(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->isPenDrawing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o()V

    :cond_1
    return-void
.end method

.method public final q(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j0()V

    return-void
.end method

.method public final r(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->e0()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->d0(Z)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->k:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->m:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->n:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->g:Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->editorViewContainer:Landroid/widget/RelativeLayout;

    const-string v2, "editorViewContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$closeMagnifier$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$closeMagnifier$1;

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutMargin(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isDocumentOpen(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->clearDisplay()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->ensureCloseDoc(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->touchStateInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->setShapeTouchEnabled(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->touchStateInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->setTextSelectionTouchEnabled(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->setEnabledLongPress(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->setEnabledStylusTouchProcess(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->g0()V

    return-void
.end method

.method public final t(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getVisibleBoxInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getCurrentBoxId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->findVisibleBoxInfoByNotePageId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$d;->e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$d;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getVisibleBoxInfoList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->findVisibleBoxInfoByNotePageId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$e;->e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$e;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->l:Lcom/onyx/android/sdk/universal/editor/display/EditorView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final w(Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;)Landroid/graphics/RectF;
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getVisibleBoxInfoList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$getMagnifierViewportRecordRect$boxInfo$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$getMagnifierViewportRecordRect$boxInfo$2;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToScreenRectF(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final x()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->q:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$editorViewHandler$1;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->l:Lcom/onyx/android/sdk/universal/editor/display/EditorView;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->initEditorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->magnifierActionContainer:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/q6j;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/q6j;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->ivMagnifierLeft:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivMagnifierLeft"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/r6j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/r6j;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/extension/ViewKt;->quickClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->ivMagnifierRight:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivMagnifierRight"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/s6j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/s6j;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/extension/ViewKt;->quickClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->ivMagnifierUp:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivMagnifierUp"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/t6j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/t6j;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/extension/ViewKt;->quickClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->ivMagnifierDown:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivMagnifierDown"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/u6j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/u6j;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/extension/ViewKt;->quickClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->ivMagnifierNewline:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivMagnifierNewline"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/v6j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/v6j;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/extension/ViewKt;->quickClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->ivMagnifierClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivMagnifierClose"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/w6j;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/w6j;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->n:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;->setDownListener(Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->p:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->setOnViewStateChangedListener(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$OnViewStateChangedListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->magnifierNewLineAreaView:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierNewLineAreaView;

    const-string v1, "magnifierNewLineAreaView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getMagnifierAutoForwardMoveOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->magnifierNewLineAreaView:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierNewLineAreaView;

    new-instance v1, Lcom/sunia/HTREnginev2/x6j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/x6j;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->j:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->magnifierLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/y6j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/y6j;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
