.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;
.super Lcom/onyx/galaxy/note/common/view/MaxWidthFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$Companion;,
        Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeToolViewAuto.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeToolViewAuto.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,804:1\n1#2:805\n1855#3,2:806\n215#4,2:808\n*S KotlinDebug\n*F\n+ 1 ShapeToolViewAuto.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto\n*L\n406#1:806,2\n755#1:808,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00de\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u0084\u00012\u00020\u0001:\u0002\u0084\u0001B\u0011\u0008\u0016\u0012\u0006\u0010|\u001a\u00020{\u00a2\u0006\u0004\u0008}\u0010~B\u001f\u0008\u0016\u0012\u0006\u0010|\u001a\u00020{\u0012\u000b\u0008\u0002\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007f\u00a2\u0006\u0005\u0008}\u0010\u0081\u0001B(\u0008\u0016\u0012\u0006\u0010|\u001a\u00020{\u0012\u000b\u0008\u0002\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007f\u0012\u0007\u0010\u0082\u0001\u001a\u00020\u0018\u00a2\u0006\u0005\u0008}\u0010\u0083\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0016\u0010\u0015\u001a\u00020\u00022\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0013H\u0002J\u0016\u0010\u0016\u001a\u00020\u00022\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0010\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u0010\u0010 \u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u0010\u0010\"\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u0010\u0010$\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u0018H\u0002J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u0018H\u0002J\u0010\u0010&\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u0018\u0010\'\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u0010\u0010)\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u0018\u0010,\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u000eH\u0002J\u0010\u0010-\u001a\u00020\u00022\u0006\u0010+\u001a\u00020\u000eH\u0002J\u0008\u0010.\u001a\u00020\u0002H\u0002J\u0008\u0010/\u001a\u00020\u0002H\u0002J\u0016\u00102\u001a\u00020\u00022\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002000\u0013H\u0002J\u0018\u00104\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u00105\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u00106\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u00107\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u00108\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u00109\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u0010:\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010;\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u0010<\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u0010=\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u0010@\u001a\u00020\u00022\u0006\u0010?\u001a\u00020>2\u0006\u00103\u001a\u00020\u000bH\u0002J\u0010\u0010A\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010D\u001a\u00020\u00022\u0006\u0010C\u001a\u00020BH\u0002J\u0010\u0010E\u001a\u00020\u00022\u0006\u0010C\u001a\u00020BH\u0002J\u0010\u0010F\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0002J\u0010\u0010H\u001a\u00020G2\u0006\u00103\u001a\u00020\u000bH\u0002J\u0010\u0010K\u001a\u00020J2\u0006\u0010I\u001a\u00020GH\u0002J\u0008\u0010L\u001a\u00020\u0002H\u0014J\u0008\u0010M\u001a\u00020\u0002H\u0014J\u000e\u0010P\u001a\u00020\u00022\u0006\u0010O\u001a\u00020NJ\u000e\u0010R\u001a\u00020\u00022\u0006\u0010Q\u001a\u00020\u001bJ\u0014\u0010U\u001a\u00020\u00022\u000c\u0010T\u001a\u0008\u0012\u0004\u0012\u00020\u00020SJ\u0006\u0010V\u001a\u00020\u0018J\u0006\u0010W\u001a\u00020\u0002J\u0010\u0010Y\u001a\u00020\u00022\u0006\u0010C\u001a\u00020XH\u0007J\u0010\u0010[\u001a\u00020\u00022\u0006\u0010C\u001a\u00020ZH\u0007J\u000e\u0010^\u001a\u00020\u00022\u0006\u0010]\u001a\u00020\\J\u0010\u0010_\u001a\u00020\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010`\u001a\u00020\u0002J\u0010\u0010b\u001a\u00020\u00022\u0006\u0010C\u001a\u00020aH\u0007J\u0010\u0010d\u001a\u00020\u00022\u0006\u0010C\u001a\u00020cH\u0007J\u0010\u0010f\u001a\u00020\u00022\u0006\u0010C\u001a\u00020eH\u0007J\u000e\u0010i\u001a\u00020\u00022\u0006\u0010h\u001a\u00020gRL\u0010p\u001a:\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020l0k\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020l0m0jj\u001c\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020l0k\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020l0m`n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010oR\u0016\u0010]\u001a\u00020\\8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010qR\u0016\u0010t\u001a\u00020r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008H\u0010sR\u0016\u0010O\u001a\u00020N8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00082\u0010uR\u0018\u0010Q\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010vR\u0016\u0010w\u001a\u00020g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010FR\u0016\u0010z\u001a\u00020x8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010y\u00a8\u0006\u0085\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;",
        "Lcom/onyx/galaxy/note/common/view/MaxWidthFrameLayout;",
        "",
        "q",
        "o",
        "Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;",
        "iShapeViewOpt",
        "m",
        "n",
        "shapeOpt",
        "l",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "shapeToolType",
        "F",
        "Landroid/view/View;",
        "view",
        "O",
        "N",
        "p",
        "",
        "shapeToolTypes",
        "G",
        "g",
        "C",
        "",
        "color",
        "d",
        "",
        "size",
        "f",
        "toolType",
        "s",
        "x",
        "r",
        "t",
        "shapeType",
        "e",
        "j",
        "A",
        "B",
        "z",
        "v",
        "u",
        "anchor",
        "w",
        "y",
        "U",
        "K",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "list",
        "i",
        "viewShapeType",
        "Y",
        "Q",
        "J",
        "V",
        "I",
        "S",
        "T",
        "M",
        "R",
        "X",
        "Landroid/widget/PopupWindow;",
        "popup",
        "H",
        "W",
        "",
        "event",
        "D",
        "E",
        "Z",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;",
        "h",
        "handler",
        "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;",
        "k",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "setEditorBundle",
        "rotation",
        "setOrientationChanged",
        "Lkotlin/Function0;",
        "callBack",
        "addShapeToolChildChangeCallback",
        "getShapeToolWidth",
        "ensureToolVisible",
        "Lcom/onyx/galaxy/note/editor/event/ShowEraserSettingEvent;",
        "onShowEraserSettingEvent",
        "Lcom/onyx/galaxy/note/editor/event/EraserPopupDismissEvent;",
        "onEraserPopupDismissEvent",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "penViewModel",
        "setPenViewModel",
        "setSelectByType",
        "dismissAllPopup",
        "Lcom/onyx/android/sdk/universal/editor/events/app/GlobalDocumentOpenSuccessEvent;",
        "onGlobalDocumentOpenSuccessEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/RulerToolEvent;",
        "onRulerToolEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierToolEvent;",
        "onMagnifierToolEvent",
        "",
        "enable",
        "enableShapeToolViewAuto",
        "Ljava/util/LinkedHashMap;",
        "Ljava/lang/Class;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "Ljava/lang/ref/WeakReference;",
        "Lkotlin/collections/LinkedHashMap;",
        "Ljava/util/LinkedHashMap;",
        "curPopupMenus",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;",
        "Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;",
        "binding",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Ljava/lang/Float;",
        "hadReportItemInit",
        "Landroid/graphics/Rect;",
        "Landroid/graphics/Rect;",
        "offerRect",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyle",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
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
        "SMAP\nShapeToolViewAuto.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeToolViewAuto.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,804:1\n1#2:805\n1855#3,2:806\n215#4,2:808\n*S KotlinDebug\n*F\n+ 1 ShapeToolViewAuto.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto\n*L\n406#1:806,2\n755#1:808,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ShapeToolViewAuto"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final f:Ljava/util/LinkedHashMap;
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

.field public g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

.field public h:Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

.field public i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public j:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Z

.field public l:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->Companion:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/common/view/MaxWidthFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 7
    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p3, Lcom/onyx/android/sdk/device/R$dimen;->dp_20:I

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    neg-int p3, p3

    .line 8
    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_20:I

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    neg-int p2, p2

    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0, v0, p3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->l:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->q()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final L(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)V
    .locals 1

    const-string v0, "$editTagForNoteContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->getSelectedNoteTagBean()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i(Ljava/util/List;)V

    return-void
.end method

.method public static final P(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Landroid/view/View;Z)V
    .locals 4

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/ImagePopup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez v3, :cond_1

    const-string v3, "penViewModel"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPopupType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v3

    invoke-direct {p2, v0, v1, v3}, Lcom/onyx/galaxy/note/editor/view/popup/ImagePopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    const-class v0, Lcom/onyx/galaxy/note/editor/view/popup/ImagePopup;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/popup/ImagePopup;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    const-string p2, "view_galaxy_picture_0002"

    const-string v0, "view"

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public static final synthetic access$changeColor(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->d(I)V

    return-void
.end method

.method public static final synthetic access$changeSize(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f(F)V

    return-void
.end method

.method public static final synthetic access$checkRecordTool(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h:Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    return-object p0
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getPenViewModel$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    return-object p0
.end method

.method public static final synthetic access$getRotation$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->j:Ljava/lang/Float;

    return-object p0
.end method

.method public static final synthetic access$handlerItemDoubleClicked(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->l(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V

    return-void
.end method

.method public static final synthetic access$handlerItemNormalClicked(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->m(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V

    return-void
.end method

.method public static final synthetic access$handlerItemVipClicked(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->n(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V

    return-void
.end method

.method public static final synthetic access$penTypeChane(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->C(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void
.end method

.method public static final synthetic access$postGlobalEvent(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$reportItemClickEvent(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->F(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void
.end method

.method public static final synthetic access$showEraserPopup(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->M(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$statisticTool(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->Z(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->L(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->P(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 1

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/StartUniversalShapeDrawingEvent;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/StartUniversalShapeDrawingEvent;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public final B(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    const-string v1, "penViewModel"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPopupType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v8

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v3, "getContext(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v3, :cond_1

    const-string v3, "editorBundle"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    goto :goto_0

    :cond_1
    move-object v5, v3

    :goto_0
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez v3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v2

    goto :goto_1

    :cond_2
    move-object v7, v3

    :goto_1
    move-object v3, v0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->GRAPH_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->H(Landroid/widget/PopupWindow;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void
.end method

.method public final C(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeChangedEvent;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeChangedEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->e(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->v(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->z(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->A(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->t(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->x(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->s(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->r(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->u(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final D(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_0

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final E(Ljava/lang/Object;)V
    .locals 0

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final F(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->getToolTypeMapToItemClickReportKey()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v1

    :cond_0
    const-string v2, "click"

    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final G(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    sget-object v1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->getToolTypeMapToItemInitReportKey()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, "editorBundle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "view"

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->k:Z

    return-void
.end method

.method public final H(Landroid/widget/PopupWindow;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 8

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->getToolTypeMapToPopupReportKey()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lkotlin/Pair;

    if-eqz v4, :cond_2

    sget-object v1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object v1

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getPenArgsOption(I)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v7

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v7}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {v0, v1, v6, p2, v2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportShowPopupMenuEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    :cond_1
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$reportShowBasePopup$1$2;

    move-object v2, p2

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$reportShowBasePopup$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/Pair;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Ljava/lang/String;Lcom/onyx/android/sdk/data/utils/JSONObjectOption;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2
    return-void
.end method

.method public final I(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/BallpointPenPopup;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->k(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/BallpointPenPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    const-class v2, Lcom/onyx/galaxy/note/editor/view/popup/BallpointPenPopup;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    invoke-virtual {p0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->H(Landroid/widget/PopupWindow;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void
.end method

.method public final J(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->k(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    const-class v2, Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    invoke-virtual {p0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->H(Landroid/widget/PopupWindow;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void
.end method

.method public final K()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getActivityHelper()Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v2, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    invoke-direct {v2}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;-><init>()V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v1}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->D(Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/action/EditTagForNoteAction;

    const-string v3, "ShapeToolViewAuto"

    invoke-direct {v1, v2, v3}, Lcom/onyx/galaxy/note/category/action/EditTagForNoteAction;-><init>(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/imm;

    invoke-direct {v1, v2, p0}, Lcom/sunia/HTREnginev2/imm;-><init>(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final M(Landroid/view/View;)V
    .locals 7

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "editorBundle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    const-string v5, "penViewModel"

    if-nez v4, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_1
    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez v6, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v6

    :goto_0
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPopupType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->show(Landroid/view/View;)V

    return-void
.end method

.method public final N(Landroid/view/View;)V
    .locals 5

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/ExcerptPenMenuPopup;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez v4, :cond_1

    const-string v4, "penViewModel"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPopupType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/onyx/galaxy/note/editor/view/popup/ExcerptPenMenuPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/onyx/galaxy/note/editor/view/popup/ExcerptPenMenuPopup;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final O(Landroid/view/View;)V
    .locals 5

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget-object v3, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_IMPORT_PHOTOS_FUNCTION_NAME()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_IMPORT_PHOTOS_INTENT_NAME()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->requestImagePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/jmm;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/jmm;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final Q(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->k(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->getInkPenArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    const-class v2, Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    invoke-virtual {p0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->H(Landroid/widget/PopupWindow;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void
.end method

.method public final R(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V
    .locals 4

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez v3, :cond_1

    const-string v3, "penViewModel"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPopupType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    const-class v0, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final S(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->k(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->getMarkPenArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    const-class v2, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    invoke-virtual {p0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->H(Landroid/widget/PopupWindow;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void
.end method

.method public final T(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->k(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->getPencilArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    const-class v2, Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    invoke-virtual {p0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->H(Landroid/widget/PopupWindow;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void
.end method

.method public final U()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const-string v1, "editorBundle"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getActivityHelper()Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v5, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez v1, :cond_3

    const-string v1, "penViewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPopupType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const-string v0, "getDecorView(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {v3, p0, v0, v1, v1}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->showAtLocation(Landroid/view/View;III)V

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportCustomSettingPopupMenuEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)V

    return-void
.end method

.method public final V(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/SoftPaintPenPopup;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->k(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/SoftPaintPenPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    const-class v2, Lcom/onyx/galaxy/note/editor/view/popup/SoftPaintPenPopup;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    invoke-virtual {p0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->H(Landroid/widget/PopupWindow;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void
.end method

.method public final W(Landroid/view/View;)V
    .locals 5

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "editorBundle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez v4, :cond_1

    const-string v4, "penViewModel"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPopupType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final X(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V
    .locals 8

    new-instance v6, Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "getContext(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    const-string v4, "penViewModel"

    if-nez v0, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez v0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPopupType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v7

    move-object v0, v6

    move-object v2, p1

    move-object v4, v5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    const-class p1, Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final Y(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->k(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->getWritePenGroupChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$showWriteGroupPopup$1;

    invoke-direct {v3, p2, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$showWriteGroupPopup$1;-><init>(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    const-class v2, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    invoke-virtual {p0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->H(Landroid/widget/PopupWindow;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void
.end method

.method public final Z(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V
    .locals 1

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toLowerCase(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getLaserShapeAttrOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->getLaserShapeName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;->Companion:Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption$Companion;->getTapeTypeOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption$Companion;->getTapeNameByType(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;->Companion:Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption$Companion;->getLassoTypeOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption$Companion;->getLassoNameByType(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseType;->INSTANCE:Lcom/onyx/android/sdk/note/common/data/erase/EraseType;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserTypeOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseType;->getEraseNmeByType(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v0, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarEvent;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final addShapeToolChildChangeCallback(Lkotlin/jvm/functions/Function0;)V
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

    const-string v0, "callBack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h:Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;->llShapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->addChildViewChangeCallback(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeColorEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeColorEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public final dismissAllPopup()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

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
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final e(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->j(I)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeTypeEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeTypeEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public final enableShapeToolViewAuto(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h:Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;->llShapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->enableShapeIconViews(Z)V

    return-void
.end method

.method public final ensureToolVisible()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "penViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h:Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    if-nez p0, :cond_1

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;->llShapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->ensureShapeToolViewVisible(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    :cond_2
    return-void
.end method

.method public final f(F)V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeWidthEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeWidthEvent;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "penViewModel"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez v6, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_1
    invoke-virtual {v6}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    if-eqz v5, :cond_0

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    check-cast v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v3, v0

    :goto_2
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    move v1, v4

    :goto_3
    if-nez v1, :cond_7

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/ActivateShapeHandlerEvent;

    const-string v3, "dummy"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/onyx/android/sdk/universal/editor/events/note/ActivateShapeHandlerEvent;-><init>(Ljava/lang/String;ZLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->E(Ljava/lang/Object;)V

    :cond_7
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/RulerCheckEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/RulerCheckEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->D(Ljava/lang/Object;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierCheckEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierCheckEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->D(Ljava/lang/Object;)V

    return-void
.end method

.method public final getShapeToolWidth()I
    .locals 3

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h:Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;->llShapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;

    const-string v1, "llShapeToolContainer"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    return p0
.end method

.method public final h(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez p0, :cond_1

    const-string p0, "penViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-direct {v0, p1, v1, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;-><init>(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V

    return-object v0
.end method

.method public final i(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v2, :cond_1

    const-string v2, "editorBundle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewportRect(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->center(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;->getTagList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/InsertTagEvent;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/InsertTagEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;Lcom/onyx/android/sdk/base/data/TouchPoint;Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->D(Ljava/lang/Object;)V

    return-void
.end method

.method public final j(I)V
    .locals 0

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->ensurePenArgsInitialized(I)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    return-void
.end method

.method public final k(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;
    .locals 10

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v0

    sget-object v1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getPenArgsOption(I)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getColorListOption(I)Lcom/onyx/android/sdk/data/utils/IntListOption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/IntListOption;->get()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getColorIndexOption(I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v4, "getContext(...)"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v6, 0x0

    if-nez v4, :cond_0

    const-string v4, "editorBundle"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v6

    goto :goto_0

    :cond_0
    move-object v7, v4

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v8

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez p0, :cond_1

    const-string p0, "penViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v6, p0

    :goto_1
    invoke-virtual {v6}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPopupType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object p0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->clone()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v9

    move-object v4, v1

    move-object v6, v7

    move-object v7, v8

    move-object v8, p0

    invoke-direct/range {v4 .. v9}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->setAddOperation(Z)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->getPenArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->setListener(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;)V

    invoke-virtual {v1, v3}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->setColorList(Lcom/onyx/android/sdk/base/extension/IntList;)V

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->setColorIndex(I)V

    return-object v1
.end method

.method public final l(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V
    .locals 4

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v2

    sget-object v3, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->y(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/RulerEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/RulerEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->w(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->X(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->B(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->N(Landroid/view/View;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->R(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->M(Landroid/view/View;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->T(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->S(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->I(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->V(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->J(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->Q(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V

    goto :goto_0

    :pswitch_e
    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->Y(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->W(Landroid/view/View;)V

    goto :goto_0

    :pswitch_10
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->O(Landroid/view/View;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V
    .locals 3

    instance-of v0, p1, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object p1

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->CUSTOM:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->U()V

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->F(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void

    :cond_2
    sget-object v2, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->TAG:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->K()V

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->F(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void

    :cond_3
    sget-object v2, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->RULER:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-ne p1, v2, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/RulerEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/RulerEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void

    :cond_4
    sget-object v2, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->MAGNIFIER:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-ne p1, v2, :cond_5

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez v2, :cond_6

    const-string v2, "penViewModel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v1, v2

    :goto_1
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->W(Landroid/view/View;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->O(Landroid/view/View;)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->F(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void
.end method

.method public final n(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->m(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V

    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h:Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;->llShapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initListener$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->setItemClickListener(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final onEraserPopupDismissEvent(Lcom/onyx/galaxy/note/editor/event/EraserPopupDismissEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/event/EraserPopupDismissEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->hasPenBox()Z

    move-result v0

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p1, v2, v0, v2}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPenBox$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getSelectedId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h:Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_0
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;->llShapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;

    invoke-virtual {p1, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->setSelectByType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h:Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_2
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;->llShapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->ensureSelectShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->setSelectByType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_3

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, p0

    :goto_1
    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->restoreUserProvider()V

    return-void
.end method

.method public final onGlobalDocumentOpenSuccessEvent(Lcom/onyx/android/sdk/universal/editor/events/app/GlobalDocumentOpenSuccessEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/GlobalDocumentOpenSuccessEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez p1, :cond_0

    const-string p1, "penViewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getShapeShowList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->G(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final onMagnifierToolEvent(Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierToolEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierToolEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h:Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;->llShapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->MAGNIFIER:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierToolEvent;->getSelected()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->updateSelectByType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Z)V

    return-void
.end method

.method public final onRulerToolEvent(Lcom/onyx/android/sdk/universal/editor/events/app/RulerToolEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/RulerToolEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h:Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;->llShapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->RULER:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/RulerToolEvent;->getSelected()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->updateSelectByType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Z)V

    return-void
.end method

.method public final onShowEraserSettingEvent(Lcom/onyx/galaxy/note/editor/event/ShowEraserSettingEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ShowEraserSettingEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h:Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;->llShapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->ERASER:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {p1, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->setSelectByType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h:Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iget-object p1, v0, Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;->llShapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$onShowEraserSettingEvent$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$onShowEraserSettingEvent$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final p()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    const/4 v2, 0x0

    const-string v3, "penViewModel"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getColor()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    new-instance v4, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$1;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)V

    new-instance v5, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$a;

    invoke-direct {v5, v4}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v0, v5}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getSize()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v4, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$2;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$2;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)V

    new-instance v5, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$a;

    invoke-direct {v5, v4}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v0, v5}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getShapeShowList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v4, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$3;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$3;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)V

    new-instance v5, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$a;

    invoke-direct {v5, v4}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v0, v5}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$4;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$4;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)V

    new-instance p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$a;

    invoke-direct {p0, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v0, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_4
    return-void
.end method

.method public final q()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h:Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->o()V

    return-void
.end method

.method public final r(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 7

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;-><init>(Ljava/lang/String;ZLcom/onyx/android/sdk/base/data/TouchPoint;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 1

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/StartEraseHandlerEvent;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/StartEraseHandlerEvent;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setOrientationChanged(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->j:Ljava/lang/Float;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h:Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;->llShapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;

    const-string v1, "llShapeToolContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->rotationAllChildView(Landroid/view/ViewGroup;F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->ensureToolVisible()V

    return-void
.end method

.method public final setPenViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penViewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->p()V

    return-void
.end method

.method public final setSelectByType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->h:Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;->llShapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->setSelectByType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void
.end method

.method public final t(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptHandlerEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptHandlerEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public final u(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->toShapeHandlerProviderName(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/ActivateShapeHandlerEvent;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ActivateShapeHandlerEvent;-><init>(Ljava/lang/String;ZLjava/lang/Integer;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public final v(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/StartLaserShapeDrawingEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/StartLaserShapeDrawingEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->E(Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeTypeEvent;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeTypeEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public final w(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V
    .locals 8

    new-instance v6, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "getContext(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    const-string v4, "penViewModel"

    if-nez v0, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez v0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPopupType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v7

    move-object v0, v6

    move-object v2, v3

    move-object v3, p1

    move-object v4, v5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    const-class p1, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final x(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/StartSelectionHandlerEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartSelectionHandlerEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public final y(Landroid/view/View;)V
    .locals 6

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/MagnifierToolPopup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    const/4 v3, 0x0

    const-string v4, "penViewModel"

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez v5, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPopupType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/editor/view/popup/MagnifierToolPopup;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->f:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/onyx/galaxy/note/editor/view/popup/MagnifierToolPopup;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final z(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->e(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->g:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-nez p1, :cond_0

    const-string p1, "penViewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getNoteConfig()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getTapePropertyOption()Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;->getTapeType()I

    move-result p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;->Companion:Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption$Companion;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption$Companion;->toSubShapeType(I)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->E(Ljava/lang/Object;)V

    return-void
.end method
