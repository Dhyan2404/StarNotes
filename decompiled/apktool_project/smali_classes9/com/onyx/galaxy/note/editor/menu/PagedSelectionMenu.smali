.class public final Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;
.super Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$Companion;,
        Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPagedSelectionMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PagedSelectionMenu.kt\ncom/onyx/galaxy/note/editor/menu/PagedSelectionMenu\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,639:1\n1855#2,2:640\n800#2,11:647\n1549#2:658\n1620#2,3:659\n1855#2:662\n1856#2:664\n41#3,5:642\n1#4:663\n*S KotlinDebug\n*F\n+ 1 PagedSelectionMenu.kt\ncom/onyx/galaxy/note/editor/menu/PagedSelectionMenu\n*L\n281#1:640,2\n401#1:647,11\n405#1:658\n405#1:659,3\n519#1:662\n519#1:664\n357#1:642,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u009e\u00012\u00020\u0001:\u0002\u009e\u0001B\u0015\u0008\u0016\u0012\u0008\u0010\u0096\u0001\u001a\u00030\u0095\u0001\u00a2\u0006\u0006\u0008\u0097\u0001\u0010\u0098\u0001B!\u0008\u0016\u0012\u0008\u0010\u0096\u0001\u001a\u00030\u0095\u0001\u0012\n\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u0099\u0001\u00a2\u0006\u0006\u0008\u0097\u0001\u0010\u009b\u0001B*\u0008\u0016\u0012\u0008\u0010\u0096\u0001\u001a\u00030\u0095\u0001\u0012\n\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u0099\u0001\u0012\u0007\u0010\u009c\u0001\u001a\u00020\t\u00a2\u0006\u0006\u0008\u0097\u0001\u0010\u009d\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0018\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u001a\u0010\u000f\u001a\u00020\u00022\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\tH\u0002J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u001a\u0010\u0015\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0002J \u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u001e\u0010\u001f\u001a\u00020\u00022\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u001d2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0008\u0010 \u001a\u00020\u0002H\u0002J\u0008\u0010!\u001a\u00020\u0002H\u0002J\u0008\u0010\"\u001a\u00020\u0002H\u0002J\u0008\u0010#\u001a\u00020\u0002H\u0002J\u0008\u0010$\u001a\u00020\u0013H\u0002J\u0008\u0010%\u001a\u00020\u0013H\u0002J\u0008\u0010&\u001a\u00020\tH\u0002J\u0008\u0010\'\u001a\u00020\tH\u0002J\u0018\u0010+\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020(H\u0002J\u0010\u0010-\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\tH\u0002J\u001c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00170.2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00170.H\u0002J\u0010\u00102\u001a\u00020\u00132\u0006\u00101\u001a\u00020\u0017H\u0002J\u0008\u00103\u001a\u00020\u0002H\u0002J\n\u00105\u001a\u0004\u0018\u000104H\u0002J\u0010\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u00020\u0013H\u0002J\u0008\u00108\u001a\u00020\u0002H\u0014J\u0006\u00109\u001a\u00020\u0002J\u0006\u0010:\u001a\u00020\u0002J\u0006\u0010;\u001a\u00020\u0002J\u001e\u0010?\u001a\u00020\u00022\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020<0.2\u0008\u0008\u0002\u0010>\u001a\u00020\u0013J\u000e\u0010B\u001a\u00020\u00022\u0006\u0010A\u001a\u00020@J\u000e\u0010D\u001a\u00020\u00022\u0006\u0010A\u001a\u00020CJ\u000e\u0010G\u001a\u00020\u00022\u0006\u0010F\u001a\u00020EJ\u001c\u0010J\u001a\u00020\u00022\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020<0.2\u0006\u0010I\u001a\u00020HJ\u001c\u0010K\u001a\u00020\u00022\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020<0.2\u0006\u0010I\u001a\u00020HJ$\u0010N\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020(2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020L0.J\u0006\u0010O\u001a\u00020\tJ\u0006\u0010P\u001a\u00020\tJ\u0006\u0010Q\u001a\u00020(J\u0006\u0010R\u001a\u00020\tJ\u000e\u0010T\u001a\u00020\u00022\u0006\u0010S\u001a\u00020\tJ\u000e\u0010W\u001a\u00020\u00022\u0006\u0010V\u001a\u00020UJ\u000e\u0010Z\u001a\u00020\u00022\u0006\u0010Y\u001a\u00020XJ\u0006\u0010[\u001a\u00020\u0013J\u0006\u0010\\\u001a\u00020\u0002R\u001b\u0010a\u001a\u00020]8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u0010^\u001a\u0004\u0008_\u0010`R\u001b\u0010d\u001a\u00020\u00018@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010^\u001a\u0004\u0008b\u0010cR\u001b\u0010h\u001a\u00020e8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010^\u001a\u0004\u0008f\u0010gR\u001b\u0010l\u001a\u00020i8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010^\u001a\u0004\u0008j\u0010kR\u001b\u0010p\u001a\u00020m8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010^\u001a\u0004\u0008n\u0010oR\u001b\u0010t\u001a\u00020q8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010^\u001a\u0004\u0008r\u0010sR\u001c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020<0.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010vR\"\u0010)\u001a\u00020(8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008w\u0010x\u001a\u0004\u0008y\u0010z\"\u0004\u0008{\u0010|R\"\u0010*\u001a\u00020(8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008}\u0010x\u001a\u0004\u0008~\u0010z\"\u0004\u0008\u007f\u0010|R)\u0010\u0086\u0001\u001a\u00020\u00138\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001\"\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\'\u0010\u008b\u0001\u001a\u00020L8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0016\n\u0004\u0008%\u0010\u000b\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001\"\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\'\u0010\u008e\u0001\u001a\u00020L8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0016\n\u0004\u0008$\u0010\u000b\u001a\u0006\u0008\u008c\u0001\u0010\u0088\u0001\"\u0006\u0008\u008d\u0001\u0010\u008a\u0001R\u0018\u0010\u0090\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001c\u0010\u008f\u0001R\u001a\u0010\u0092\u0001\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001f\u0010\u0091\u0001R\u0018\u0010\u0093\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0003\u0010\u008f\u0001R\u0019\u0010V\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008!\u0010\u0094\u0001\u00a8\u0006\u009f\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;",
        "Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;",
        "",
        "t",
        "j",
        "k",
        "E",
        "Landroid/widget/ImageView;",
        "iconView",
        "",
        "style",
        "F",
        "C",
        "Landroid/view/View;",
        "view",
        "D",
        "color",
        "e",
        "x",
        "",
        "changeColor",
        "y",
        "g",
        "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
        "menu",
        "itemView",
        "Landroid/view/ViewGroup;",
        "menuRoot",
        "r",
        "",
        "menuViews",
        "s",
        "v",
        "u",
        "i",
        "h",
        "q",
        "p",
        "getMenuWidth",
        "getMenuHeight",
        "Landroid/graphics/RectF;",
        "selectionRect",
        "limitRect",
        "B",
        "menuViewWidth",
        "setArrowLocation",
        "",
        "menus",
        "f",
        "menuType",
        "A",
        "w",
        "Lcom/onyx/android/sdk/data/ElementType;",
        "getElementTypeByShape",
        "isReversed",
        "setWrapperLayoutOrder",
        "onDetachedFromWindow",
        "cancel",
        "hide",
        "update",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapes",
        "forceUpdate",
        "updateSelectedShapes",
        "Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;",
        "info",
        "updateTextSelection",
        "Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;",
        "updateAnnotationSelection",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;",
        "args",
        "updateExcerptSelection",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualPageBoxInfo",
        "updateEditTextShapeSelection",
        "updateUniversalShapeSelection",
        "",
        "noteOffset",
        "updateLocation",
        "getAnnotationMenuHeight",
        "getAnnotationMenuWidth",
        "getVisibleContentRectF",
        "getArrowDirection",
        "maxMenuWidth",
        "setMaxMenuWidth",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "setEditorBundle",
        "Landroidx/fragment/app/FragmentManager;",
        "fragmentManager",
        "setFragmentManager",
        "isOpen",
        "flushUI",
        "Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;",
        "Lkotlin/Lazy;",
        "getBinding$note_overseasRelease",
        "()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;",
        "binding",
        "getMenuContainer$note_overseasRelease",
        "()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;",
        "menuContainer",
        "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;",
        "getHandler$note_overseasRelease",
        "()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;",
        "handler",
        "Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;",
        "getPrimaryMenuAdapter$note_overseasRelease",
        "()Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;",
        "primaryMenuAdapter",
        "Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;",
        "getSecondaryMenuAdapter",
        "()Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;",
        "secondaryMenuAdapter",
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;",
        "getAnnotationColorAdapter",
        "()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;",
        "annotationColorAdapter",
        "l",
        "Ljava/util/List;",
        "m",
        "Landroid/graphics/RectF;",
        "getSelectionRect$note_overseasRelease",
        "()Landroid/graphics/RectF;",
        "setSelectionRect$note_overseasRelease",
        "(Landroid/graphics/RectF;)V",
        "n",
        "getLimitRect$note_overseasRelease",
        "setLimitRect$note_overseasRelease",
        "o",
        "Z",
        "getFixMenuPosition$note_overseasRelease",
        "()Z",
        "setFixMenuPosition$note_overseasRelease",
        "(Z)V",
        "fixMenuPosition",
        "getOffsetX$note_overseasRelease",
        "()F",
        "setOffsetX$note_overseasRelease",
        "(F)V",
        "offsetX",
        "getOffsetY$note_overseasRelease",
        "setOffsetY$note_overseasRelease",
        "offsetY",
        "I",
        "arrowDirection",
        "Lcom/onyx/android/sdk/data/ElementType;",
        "currElementType",
        "annotationColorStyle",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
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
        "SMAP\nPagedSelectionMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PagedSelectionMenu.kt\ncom/onyx/galaxy/note/editor/menu/PagedSelectionMenu\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,639:1\n1855#2,2:640\n800#2,11:647\n1549#2:658\n1620#2,3:659\n1855#2:662\n1856#2:664\n41#3,5:642\n1#4:663\n*S KotlinDebug\n*F\n+ 1 PagedSelectionMenu.kt\ncom/onyx/galaxy/note/editor/menu/PagedSelectionMenu\n*L\n281#1:640,2\n401#1:647,11\n405#1:658\n405#1:659,3\n519#1:662\n519#1:664\n357#1:642,5\n*E\n"
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final Companion:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOP:I = 0x1


# instance fields
.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Z

.field public p:F

.field public q:F

.field public r:I

.field public s:Lcom/onyx/android/sdk/data/ElementType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:I

.field public u:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->Companion:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$Companion;

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

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->f:Lkotlin/Lazy;

    .line 3
    new-instance p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$menuContainer$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$menuContainer$2;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->g:Lkotlin/Lazy;

    .line 4
    sget-object p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$handler$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$handler$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->h:Lkotlin/Lazy;

    .line 5
    new-instance p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$primaryMenuAdapter$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$primaryMenuAdapter$2;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->i:Lkotlin/Lazy;

    .line 6
    new-instance p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$secondaryMenuAdapter$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$secondaryMenuAdapter$2;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->j:Lkotlin/Lazy;

    .line 7
    sget-object p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$annotationColorAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$annotationColorAdapter$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->k:Lkotlin/Lazy;

    .line 8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->l:Ljava/util/List;

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->m:Landroid/graphics/RectF;

    .line 10
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->n:Landroid/graphics/RectF;

    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->r:I

    .line 12
    sget-object p1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationStyleOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->t:I

    .line 13
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->t()V

    .line 14
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->j()V

    .line 15
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->k()V

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

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->f:Lkotlin/Lazy;

    .line 18
    new-instance p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$menuContainer$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$menuContainer$2;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->g:Lkotlin/Lazy;

    .line 19
    sget-object p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$handler$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$handler$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->h:Lkotlin/Lazy;

    .line 20
    new-instance p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$primaryMenuAdapter$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$primaryMenuAdapter$2;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->i:Lkotlin/Lazy;

    .line 21
    new-instance p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$secondaryMenuAdapter$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$secondaryMenuAdapter$2;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->j:Lkotlin/Lazy;

    .line 22
    sget-object p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$annotationColorAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$annotationColorAdapter$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->k:Lkotlin/Lazy;

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->l:Ljava/util/List;

    .line 24
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->m:Landroid/graphics/RectF;

    .line 25
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->n:Landroid/graphics/RectF;

    const/4 p1, 0x2

    .line 26
    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->r:I

    .line 27
    sget-object p1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationStyleOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->t:I

    .line 28
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->t()V

    .line 29
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->j()V

    .line 30
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->k()V

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

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->f:Lkotlin/Lazy;

    .line 33
    new-instance p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$menuContainer$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$menuContainer$2;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->g:Lkotlin/Lazy;

    .line 34
    sget-object p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$handler$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$handler$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->h:Lkotlin/Lazy;

    .line 35
    new-instance p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$primaryMenuAdapter$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$primaryMenuAdapter$2;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->i:Lkotlin/Lazy;

    .line 36
    new-instance p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$secondaryMenuAdapter$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$secondaryMenuAdapter$2;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->j:Lkotlin/Lazy;

    .line 37
    sget-object p1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$annotationColorAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$annotationColorAdapter$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->k:Lkotlin/Lazy;

    .line 38
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->l:Ljava/util/List;

    .line 39
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->m:Landroid/graphics/RectF;

    .line 40
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->n:Landroid/graphics/RectF;

    const/4 p1, 0x2

    .line 41
    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->r:I

    .line 42
    sget-object p1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationStyleOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->t:I

    .line 43
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->t()V

    .line 44
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->j()V

    .line 45
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->k()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->l(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$changeAnnotationColor(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->e(I)V

    return-void
.end method

.method public static final synthetic access$getAnnotationColorAdapter(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getAnnotationColorAdapter()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAnnotationColorStyle$p(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->t:I

    return p0
.end method

.method public static final synthetic access$onMenuItemClick(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->r(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static final synthetic access$onMenuUpdated(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->s(Ljava/util/List;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static final synthetic access$setAnnotationColorStyle$p(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->t:I

    return-void
.end method

.method public static final synthetic access$statisticLinkCreate(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->w()V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->m(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->n(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->o(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Landroid/view/View;)V

    return-void
.end method

.method private final getAnnotationColorAdapter()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->k:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    return-object p0
.end method

.method private final getElementTypeByShape()Lcom/onyx/android/sdk/data/ElementType;
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->l:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/ImageShape;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/data/ElementType;->PHOTO:Lcom/onyx/android/sdk/data/ElementType;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/SvgShape;

    if-eqz v0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/data/ElementType;->STICKER:Lcom/onyx/android/sdk/data/ElementType;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/EditTextShape;

    if-eqz v0, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/data/ElementType;->TEXT:Lcom/onyx/android/sdk/data/ElementType;

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-eqz v0, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/data/ElementType;->GRAPH:Lcom/onyx/android/sdk/data/ElementType;

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/LinkShape;

    if-eqz v0, :cond_5

    sget-object p0, Lcom/onyx/android/sdk/data/ElementType;->PAGE:Lcom/onyx/android/sdk/data/ElementType;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isPenShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/onyx/android/sdk/data/ElementType;->HANDWRITING:Lcom/onyx/android/sdk/data/ElementType;

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/onyx/android/sdk/data/ElementType;->PAGE:Lcom/onyx/android/sdk/data/ElementType;

    :goto_0
    return-object p0
.end method

.method private final getMenuHeight()I
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getPrimaryMenuAdapter$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->getContentHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->q()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getSecondaryMenuAdapter()Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->getContentHeight()I

    move-result v1

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_32:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->p()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getAnnotationMenuHeight()I

    move-result p0

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_32:I

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    add-int/2addr v2, p0

    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final getMenuWidth()I
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getPrimaryMenuAdapter$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->getContentWidth()I

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_32:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->q()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    return v0

    :cond_2
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getSecondaryMenuAdapter()Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->getContentWidth()I

    move-result v2

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_32:I

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->p()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getAnnotationMenuWidth()I

    move-result p0

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_32:I

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    add-int v3, p0, v1

    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final getSecondaryMenuAdapter()Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->j:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;

    return-object p0
.end method

.method public static final l(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static final m(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, p1, v0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->z(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;IZILjava/lang/Object;)V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->z(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;IZILjava/lang/Object;)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->z(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;IZILjava/lang/Object;)V

    return-void
.end method

.method private final setArrowLocation(I)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->m:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_34:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v3

    int-to-float v4, p1

    add-float/2addr v3, v4

    sub-float/2addr v3, v1

    invoke-static {v0, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr v1, p1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->arrowView:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private final setWrapperLayoutOrder(Z)V
    .locals 10

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->wrapper:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->icon_menu_arrow_top:I

    sget v2, Lcom/onyx/galaxy/note/R$id;->arrowView:I

    sget v3, Lcom/onyx/galaxy/note/R$id;->fl_primary_menu:I

    sget v4, Lcom/onyx/galaxy/note/R$id;->fl_sub_menu:I

    sget v5, Lcom/onyx/galaxy/note/R$id;->cl_annotation_menu:I

    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_7:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v3

    goto :goto_0

    :cond_0
    sget p1, Lcom/onyx/galaxy/note/R$drawable;->icon_menu_arrow_bottom:I

    sget v2, Lcom/onyx/galaxy/note/R$id;->cl_annotation_menu:I

    sget v3, Lcom/onyx/galaxy/note/R$id;->fl_sub_menu:I

    sget v4, Lcom/onyx/galaxy/note/R$id;->fl_primary_menu:I

    sget v5, Lcom/onyx/galaxy/note/R$id;->arrowView:I

    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v2

    int-to-float v3, v1

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/android/sdk/device/R$dimen;->dp_7:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    :goto_0
    array-length v4, v2

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v2, v5

    if-nez v5, :cond_1

    move v7, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v5, -0x1

    aget v7, v2, v7

    :goto_2
    const/4 v8, 0x3

    if-nez v5, :cond_2

    move v9, v8

    goto :goto_3

    :cond_2
    const/4 v9, 0x4

    :goto_3
    invoke-virtual {v0, v6, v8, v7, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->wrapper:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->arrowView:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->arrowView:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->arrowView:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic updateSelectedShapes$default(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->updateSelectedShapes(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic z(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->y(IZ)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Z
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->isAnnotationMenuType(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->isRootMenuType(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->getParentMenu()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->saveFrequentlyAnnotationMenu(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final B(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 8

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->m:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->n:Landroid/graphics/RectF;

    const/4 v0, 0x2

    iput v0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->r:I

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getMenuWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getPrimaryMenuAdapter$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->getContentHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getSecondaryMenuAdapter()Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->getItemHeight()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getAnnotationMenuHeight()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    sub-float/2addr v2, v4

    iget v4, p1, Landroid/graphics/RectF;->top:F

    int-to-float v1, v1

    sub-float v5, v4, v1

    iget v6, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v5, v6

    const/4 v7, 0x1

    if-ltz v6, :cond_2

    cmpl-float v4, v5, v4

    if-lez v4, :cond_3

    :cond_2
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float v4, p1, v1

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_3

    iput v7, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->r:I

    move v5, p1

    :cond_3
    new-instance p1, Landroid/graphics/RectF;

    add-float v4, v2, v3

    add-float/2addr v1, v5

    invoke-direct {p1, v2, v5, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->limit(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v4, v3

    iget p2, p2, Landroid/graphics/RectF;->right:F

    cmpl-float p2, v4, p2

    const/4 v3, 0x0

    if-lez p2, :cond_4

    move p2, v7

    goto :goto_0

    :cond_4
    move p2, v3

    :goto_0
    if-eqz v1, :cond_5

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    :cond_5
    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->o:Z

    if-eqz p1, :cond_6

    if-nez v1, :cond_6

    if-eqz p2, :cond_7

    :cond_6
    invoke-virtual {p0, v2}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setY(F)V

    :cond_7
    invoke-direct {p0, v0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->setArrowLocation(I)V

    iget p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->r:I

    if-ne p1, v7, :cond_8

    goto :goto_1

    :cond_8
    move v7, v3

    :goto_1
    invoke-direct {p0, v7}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->setWrapperLayoutOrder(Z)V

    return-void
.end method

.method public final C()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getMenuContainer$note_overseasRelease()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->D(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getMenuContainer$note_overseasRelease()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->D(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getMenuContainer$note_overseasRelease()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->D(Landroid/view/View;I)V

    return-void
.end method

.method public final D(Landroid/view/View;I)V
    .locals 1

    instance-of p0, p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    :cond_2
    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {v0, p2}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationColorOption(I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p2

    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_color_01:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public final E()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->ivHighlight:Lcom/onyx/android/sdk/textbox/widget/TintImageView;

    const-string v1, "ivHighlight"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->F(Landroid/widget/ImageView;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->ivUnderline:Lcom/onyx/android/sdk/textbox/widget/TintImageView;

    const-string v1, "ivUnderline"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->F(Landroid/widget/ImageView;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->ivWavyLine:Lcom/onyx/android/sdk/textbox/widget/TintImageView;

    const-string v1, "ivWavyLine"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->F(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public final F(Landroid/widget/ImageView;I)V
    .locals 5

    iget v0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->t:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->g(I)I

    move-result p0

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    sget p0, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_04:I

    goto :goto_1

    :cond_2
    sget p0, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_color_03:I

    :goto_1
    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p0

    :goto_2
    if-eqz v0, :cond_3

    sget p2, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_color_01:I

    invoke-static {p2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p2

    goto :goto_3

    :cond_3
    sget p2, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_color_03:I

    invoke-static {p2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p2

    :goto_3
    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public final cancel()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->hide()V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->updateSelectedShapes$default(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Ljava/util/List;ZILjava/lang/Object;)V

    return-void
.end method

.method public final e(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->getActiveHandler()Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;

    move-result-object v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->t:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    instance-of v2, v0, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;

    invoke-virtual {v0, v1, p1}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->changeAnnotation(II)V

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;

    invoke-virtual {v0, v1, p1}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->changeAnnotation(II)V

    :cond_2
    :goto_0
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationColorOption(I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->put(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->C()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->E()V

    return-void
.end method

.method public final f(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
            ">;"
        }
    .end annotation

    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getFrequentlyAnnotationMenu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    check-cast v3, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->getImageResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->setImageResId(I)V

    goto :goto_0

    :cond_5
    return-object p1
.end method

.method public final flushUI()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->rvAnnotationColor:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getAnnotationColorAdapter()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final g(I)I
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationColorListOption(I)Lcom/onyx/android/sdk/data/utils/IntListOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/IntListOption;->get()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationColorIndexOption(I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getAnnotationMenuHeight()I
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_40:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    return p0
.end method

.method public final getAnnotationMenuWidth()I
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_296:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    return p0
.end method

.method public final getArrowDirection()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->r:I

    return p0
.end method

.method public final getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    return-object p0
.end method

.method public final getFixMenuPosition$note_overseasRelease()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->o:Z

    return p0
.end method

.method public final getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    return-object p0
.end method

.method public final getLimitRect$note_overseasRelease()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->n:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getMenuContainer$note_overseasRelease()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    return-object p0
.end method

.method public final getOffsetX$note_overseasRelease()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->p:F

    return p0
.end method

.method public final getOffsetY$note_overseasRelease()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->q:F

    return p0
.end method

.method public final getPrimaryMenuAdapter$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;

    return-object p0
.end method

.method public final getSelectionRect$note_overseasRelease()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->m:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getVisibleContentRectF()Landroid/graphics/RectF;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getMenuWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v4

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getMenuHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final h()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->clAnnotationMenu:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final hide()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->i()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->h()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public final i()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->subMenuContainer:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->flSubMenu:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final isOpen()Z
    .locals 2

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->l:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final j()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->setMenuView$note_overseasRelease(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getPrimaryMenuAdapter$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$initAdapterAndHandler$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$initAdapterAndHandler$1;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->setCallback(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getSecondaryMenuAdapter()Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$initAdapterAndHandler$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$initAdapterAndHandler$2;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->setCallback(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;)V

    return-void
.end method

.method public final k()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->E()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->clAnnotationMenu:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/duk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/duk;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->ivHighlight:Lcom/onyx/android/sdk/textbox/widget/TintImageView;

    const-string v0, "ivHighlight"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/euk;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/euk;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->ivUnderline:Lcom/onyx/android/sdk/textbox/widget/TintImageView;

    const-string v0, "ivUnderline"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/fuk;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/fuk;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->ivWavyLine:Lcom/onyx/android/sdk/textbox/widget/TintImageView;

    const-string v0, "ivWavyLine"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/guk;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/guk;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getAnnotationColorAdapter()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->setPickOpaqueColorOnly(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getAnnotationColorAdapter()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$initAnnotationMenu$5;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$initAnnotationMenu$5;-><init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->setColorViewListener(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->rvAnnotationColor:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getAnnotationColorAdapter()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getPrimaryMenuAdapter$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->release()V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getSecondaryMenuAdapter()Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->release()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->release()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final p()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->clAnnotationMenu:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public final q()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->flSubMenu:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public final r(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->LAST_PAGE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->NEXT_PAGE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->onMenuClick(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->A(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getPrimaryMenuAdapter$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getPrimaryMenuAdapter$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->getMenus()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->setMenus(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final s(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->m:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->m:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->n:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->B(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_1
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->u:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->setEditorBundle$note_overseasRelease(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public final setFixMenuPosition$note_overseasRelease(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->o:Z

    return-void
.end method

.method public final setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->setFragmentManager$note_overseasRelease(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public final setLimitRect$note_overseasRelease(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->n:Landroid/graphics/RectF;

    return-void
.end method

.method public final setMaxMenuWidth(I)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_150:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getPrimaryMenuAdapter$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->setMaxWidth(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getSecondaryMenuAdapter()Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->setMaxWidth(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->clAnnotationMenu:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMaxHeight(I)V

    return-void
.end method

.method public final setOffsetX$note_overseasRelease(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->p:F

    return-void
.end method

.method public final setOffsetY$note_overseasRelease(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->q:F

    return-void
.end method

.method public final setSelectionRect$note_overseasRelease(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->m:Landroid/graphics/RectF;

    return-void
.end method

.method public final t()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->i()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->h()V

    return-void
.end method

.method public final u()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->clAnnotationMenu:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final update()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->l:Ljava/util/List;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->updateSelectedShapes(Ljava/util/List;Z)V

    return-void
.end method

.method public final updateAnnotationSelection(Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object v0

    const-string v1, "annotation_selection"

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->activeProvider(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->updateAnnotationSelection(Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getPrimaryMenuAdapter$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationMenuTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->setMenus(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;->getStyle()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;->getColor()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->x()V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->y(IZ)V

    :goto_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->u()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;->getRenderRectF()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->m:Landroid/graphics/RectF;

    return-void
.end method

.method public final updateEditTextShapeSelection(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object v0

    const-string v1, "edit_text_shape_selection"

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->activeProvider(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->updateEditTextShapeSelection(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getPrimaryMenuAdapter$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/menu/ShapeMenuProvider;->INSTANCE:Lcom/onyx/galaxy/note/editor/menu/ShapeMenuProvider;

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/editor/menu/ShapeMenuProvider;->getShapeMenus(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->EDIT:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->setMenus(Ljava/util/List;)V

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToScreenRectF(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->m:Landroid/graphics/RectF;

    sget-object p1, Lcom/onyx/android/sdk/data/ElementType;->TEXT:Lcom/onyx/android/sdk/data/ElementType;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->s:Lcom/onyx/android/sdk/data/ElementType;

    return-void
.end method

.method public final updateExcerptSelection(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object v0

    const-string v1, "excerpt_selection"

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->activeProvider(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->updateExcerptSelection(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getPrimaryMenuAdapter$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getExcerptCollectionList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getExcerptMenus(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->setMenus(Ljava/util/List;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isTextExcerptShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    new-array v1, v1, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getHitTestVirtualPage()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->renderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_3
    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getHitTestVirtualPage()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteRenderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :goto_0
    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->m:Landroid/graphics/RectF;

    return-void
.end method

.method public final updateLocation(Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectionRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limitRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteOffset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->p:F

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    iput p3, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->q:F

    iget v0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->p:F

    invoke-virtual {p1, v0, p3}, Landroid/graphics/RectF;->offset(FF)V

    iget p3, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->p:F

    iget v0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->q:F

    invoke-virtual {p2, p3, v0}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->B(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public final updateSelectedShapes(Ljava/util/List;Z)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->l:Ljava/util/List;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object v0

    const-string v1, "shape_selection"

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->activeProvider(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->updateSelectedShapes(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getPrimaryMenuAdapter$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->setMenusByShape(Ljava/util/List;Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getElementTypeByShape()Lcom/onyx/android/sdk/data/ElementType;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->s:Lcom/onyx/android/sdk/data/ElementType;

    :cond_0
    return-void
.end method

.method public final updateTextSelection(Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;->getSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object v0

    const-string v1, "text_selection"

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->activeProvider(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->updateTextSelection(Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getPrimaryMenuAdapter$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getTextSelectionMenuTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->setMenus(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->x()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->u()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;->getSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->boundingRectF(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->m:Landroid/graphics/RectF;

    return-void
.end method

.method public final updateUniversalShapeSelection(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 12
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->u:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->renderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_20:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v10

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewportRect(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/graphics/RectF;

    move-result-object v0

    new-instance v11, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v5, v0

    move-object v6, v1

    invoke-static/range {v3 .. v9}, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;->findBoundRectIncludingRotationPoint$default(Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Landroid/graphics/RectF;Landroid/graphics/Matrix;Ljava/lang/Number;ILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3, v10}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v11}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->boundingRectF(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object v1

    const-string v2, "universal_shape_selection"

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->activeProvider(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getHandler$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->updateUniversalShapeSelection(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getPrimaryMenuAdapter$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;

    move-result-object p1

    sget-object p2, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getUniversalMenus()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->setMenus(Ljava/util/List;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->m:Landroid/graphics/RectF;

    sget-object p1, Lcom/onyx/android/sdk/data/ElementType;->GRAPH:Lcom/onyx/android/sdk/data/ElementType;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->s:Lcom/onyx/android/sdk/data/ElementType;

    return-void
.end method

.method public final v()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;->flSubMenu:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->s:Lcom/onyx/android/sdk/data/ElementType;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getElementTypeByShape()Lcom/onyx/android/sdk/data/ElementType;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/event/StatisticsElementLinkCreateEvent;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/event/StatisticsElementLinkCreateEvent;-><init>(Lcom/onyx/android/sdk/data/ElementType;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final x()V
    .locals 4

    iget v0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->t:I

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationColorListOption(I)Lcom/onyx/android/sdk/data/utils/IntListOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/IntListOption;->get()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getAnnotationColorAdapter()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->setSelectedPosition(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getAnnotationColorAdapter()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    iput v3, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->t:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->E()V

    iput v0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->t:I

    return-void
.end method

.method public final y(IZ)V
    .locals 2

    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->t:I

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationStyleOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->put(I)V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationColorListOption(I)Lcom/onyx/android/sdk/data/utils/IntListOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/IntListOption;->get()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->t:I

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationColorListOption(I)Lcom/onyx/android/sdk/data/utils/IntListOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/IntListOption;->get()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object p1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->t:I

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationColorIndexOption(I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result v1

    :goto_0
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getAnnotationColorAdapter()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->setSelectedPosition(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getAnnotationColorAdapter()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "get(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->e(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->E()V

    return-void
.end method
