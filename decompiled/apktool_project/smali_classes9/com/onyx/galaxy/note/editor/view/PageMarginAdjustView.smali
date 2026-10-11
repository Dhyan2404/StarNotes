.class public final Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$Companion;,
        Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;,
        Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPageMarginAdjustView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageMarginAdjustView.kt\ncom/onyx/galaxy/note/editor/view/PageMarginAdjustView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,577:1\n1855#2,2:578\n1855#2,2:580\n13309#3,2:582\n*S KotlinDebug\n*F\n+ 1 PageMarginAdjustView.kt\ncom/onyx/galaxy/note/editor/view/PageMarginAdjustView\n*L\n285#1:578,2\n305#1:580,2\n471#1:582,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00bc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u0099\u00012\u00020\u0001:\u0004\u0099\u0001\u009a\u0001B\u0017\u0008\u0016\u0012\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0090\u0001\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0093\u0001B#\u0008\u0016\u0012\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0090\u0001\u0012\n\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0094\u0001\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0096\u0001B,\u0008\u0016\u0012\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0090\u0001\u0012\n\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0094\u0001\u0012\u0007\u0010\u0097\u0001\u001a\u00020(\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0098\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\u0008\u0010\u0012\u001a\u00020\u0010H\u0002J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002J\u0008\u0010\u0015\u001a\u00020\u0002H\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J)\u0010\u001f\u001a\u00020\u00022!\u0010\u001e\u001a\u001d\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u00020\u0019J\u000e\u0010\"\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 J\u000e\u0010$\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u0013J\u0016\u0010\'\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 2\u0006\u0010&\u001a\u00020%J\u000e\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(J\u000e\u0010-\u001a\u00020\u00022\u0006\u0010,\u001a\u00020+J\u0010\u00100\u001a\u00020\u00022\u0008\u0010/\u001a\u0004\u0018\u00010.J\u0006\u00101\u001a\u00020\u0002J\u000e\u00103\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u0013J\u0010\u00105\u001a\u0002042\u0006\u0010\u0005\u001a\u00020\u0004H\u0017J\u0006\u00106\u001a\u00020\u0013J\u0006\u00107\u001a\u00020\u0013J\u000e\u00109\u001a\u00020\u00022\u0006\u00108\u001a\u000204J\u0010\u0010:\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0014J\u0006\u0010;\u001a\u00020\u001aJ\u0006\u0010<\u001a\u000204J\u0006\u0010=\u001a\u00020(J\u0008\u0010>\u001a\u0004\u0018\u00010.J\u0006\u0010?\u001a\u00020\u0013J\u0006\u0010@\u001a\u00020\u001aJ\u0006\u0010A\u001a\u00020\u0013R3\u0010\u001e\u001a\u001f\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010BR\u0014\u0010E\u001a\u00020C8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010DR\u0014\u0010F\u001a\u00020C8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010DR\u0014\u0010G\u001a\u00020C8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010DR\u0014\u0010I\u001a\u00020C8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008H\u0010DR\u0016\u0010L\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0016\u0010O\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u0016\u0010Q\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010NR\u0016\u0010S\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010KR\u0016\u0010W\u001a\u00020T8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\"\u0010^\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008X\u0010Y\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]R\u0016\u0010`\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008_\u0010YR$\u0010&\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008a\u0010b\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010fR\u0014\u0010h\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008g\u0010YR\u0016\u0010l\u001a\u00020i8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u0016\u0010n\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010NR\u0016\u0010p\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010NR\u0018\u0010s\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010rR\u0016\u0010w\u001a\u00020t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010vR\u0016\u0010y\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010YR\u0014\u0010{\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008z\u0010YR\u0016\u0010}\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010YR\'\u0010\u0082\u0001\u001a\u0012\u0012\u0004\u0012\u00020\u00060~j\u0008\u0012\u0004\u0012\u00020\u0006`\u007f8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u0017\u0010\u0085\u0001\u001a\u00020+8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u0016\u0010\u0087\u0001\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0086\u0001\u0010YR\u0018\u0010!\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0001\u0010\u0089\u0001R)\u0010\u008c\u0001\u001a\u0002048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008a\u0001\u0010\u008b\u0001\u001a\u0006\u0008\u008c\u0001\u0010\u008d\u0001\"\u0006\u0008\u008e\u0001\u0010\u008f\u0001\u00a8\u0006\u009b\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;",
        "Landroid/view/View;",
        "",
        "d",
        "Landroid/view/MotionEvent;",
        "event",
        "Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;",
        "a",
        "Landroid/graphics/Canvas;",
        "canvas",
        "b",
        "f",
        "g",
        "c",
        "Landroid/graphics/RectF;",
        "getPageScaleRectF",
        "Lcom/onyx/android/sdk/geometry/data/MarginPixel;",
        "getMarginPixel",
        "getMaxMarginPixel",
        "",
        "getScaleRatio",
        "h",
        "Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;",
        "controlType",
        "e",
        "Lkotlin/Function1;",
        "Lcom/onyx/android/sdk/geometry/data/MarginPercent;",
        "Lkotlin/ParameterName;",
        "name",
        "marginPercent",
        "callback",
        "setPageMarginChangeCallback",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "boxInfo",
        "initView",
        "layoutExpectedWidth",
        "initPageSize",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "setData",
        "",
        "color",
        "setMarginColor",
        "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;",
        "format",
        "setFixedMarginFormat",
        "",
        "templateResource",
        "updateMarginTemplate",
        "clearMarginTemplate",
        "space",
        "updateMarginTemplateSpace",
        "",
        "onTouchEvent",
        "getExpectedWidth",
        "getSmallWindowExpectedWidth",
        "isSmallWindow",
        "displayForSmallWindow",
        "onDraw",
        "getMarginPercent",
        "isLandscape",
        "getMarginColor",
        "getMarginTemplateRes",
        "getMarginTemplateSpace",
        "getMaxMarginPercent",
        "getMaxScale",
        "Lkotlin/jvm/functions/Function1;",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "bitmapPaint",
        "originRectPaint",
        "strokePaint",
        "i",
        "maskPaint",
        "j",
        "I",
        "touchSize",
        "k",
        "F",
        "halfTouchSize",
        "l",
        "hitTestRadius",
        "m",
        "adjustType",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;",
        "n",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;",
        "marginLayout",
        "o",
        "Landroid/graphics/RectF;",
        "getEditArea",
        "()Landroid/graphics/RectF;",
        "setEditArea",
        "(Landroid/graphics/RectF;)V",
        "editArea",
        "p",
        "spaceArea",
        "q",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "r",
        "bitmapScaleRect",
        "Lcom/onyx/android/sdk/geometry/data/MarginStyle;",
        "s",
        "Lcom/onyx/android/sdk/geometry/data/MarginStyle;",
        "marginStyle",
        "t",
        "centerX",
        "u",
        "centerY",
        "v",
        "Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;",
        "draggingPoint",
        "Landroid/graphics/PointF;",
        "w",
        "Landroid/graphics/PointF;",
        "downPointF",
        "x",
        "downSpace",
        "y",
        "pageScaleRectF",
        "z",
        "pageOriginSize",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "J",
        "Ljava/util/ArrayList;",
        "touchPointList",
        "O",
        "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;",
        "minPageSizeFormat",
        "Q",
        "pageRectForMargin",
        "k0",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "q0",
        "Z",
        "isSmallWindowLayout",
        "()Z",
        "setSmallWindowLayout",
        "(Z)V",
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
        "TouchBean",
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
        "SMAP\nPageMarginAdjustView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageMarginAdjustView.kt\ncom/onyx/galaxy/note/editor/view/PageMarginAdjustView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,577:1\n1855#2,2:578\n1855#2,2:580\n13309#3,2:582\n*S KotlinDebug\n*F\n+ 1 PageMarginAdjustView.kt\ncom/onyx/galaxy/note/editor/view/PageMarginAdjustView\n*L\n285#1:578,2\n305#1:580,2\n471#1:582,2\n*E\n"
    }
.end annotation


# static fields
.field public static final ADJUST_TYPE_MOVE:I = 0x1

.field public static final ADJUST_TYPE_RESIZE:I

.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final O:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Q:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/geometry/data/MarginPercent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:I

.field public k:F

.field public k0:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:F

.field public m:I

.field public n:Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q0:Z

.field public final r:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Lcom/onyx/android/sdk/geometry/data/MarginStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:F

.field public u:F

.field public v:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public w:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final y:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public z:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->Companion:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->f:Landroid/graphics/Paint;

    .line 5
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->g:Landroid/graphics/Paint;

    .line 6
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->h:Landroid/graphics/Paint;

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->i:Landroid/graphics/Paint;

    .line 8
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->hit_test_radius:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->l:F

    .line 9
    new-instance v2, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    invoke-direct {v2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;-><init>()V

    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->n:Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 10
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 11
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 13
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    sget p1, Lcom/onyx/android/sdk/device/R$dimen;->dp_1:I

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    sget p1, Lcom/onyx/galaxy/note/R$color;->overlay_04:I

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    sget p1, Lcom/onyx/android/sdk/device/R$dimen;->dp_1:I

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    sget p1, Lcom/onyx/galaxy/note/R$color;->black_mask:I

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    sget p1, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->j:I

    int-to-float p1, p1

    .line 22
    sget p2, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    .line 23
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->o:Landroid/graphics/RectF;

    .line 24
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    .line 25
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->r:Landroid/graphics/RectF;

    .line 26
    new-instance p1, Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-direct {p1}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->s:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    .line 27
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->w:Landroid/graphics/PointF;

    .line 28
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->x:Landroid/graphics/RectF;

    .line 29
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->y:Landroid/graphics/RectF;

    .line 30
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->z:Landroid/graphics/RectF;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->J:Ljava/util/ArrayList;

    .line 32
    sget-object p1, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->A4:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->O:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    .line 33
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->Q:Landroid/graphics/RectF;

    .line 34
    new-instance p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k0:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method private final getMarginPixel()Lcom/onyx/android/sdk/geometry/data/MarginPixel;
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->d()V

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/MarginPixel;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->y:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget v3, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, v1

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method private final getMaxMarginPixel()Lcom/onyx/android/sdk/geometry/data/MarginPixel;
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/MarginPixel;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->y:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->o:Landroid/graphics/RectF;

    iget v3, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, v1

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method private final getPageScaleRectF()Landroid/graphics/RectF;
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->z:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getScaleRatio()F

    move-result v2

    mul-float/2addr v1, v2

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v3

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->z:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getScaleRatio()F

    move-result v4

    mul-float/2addr v3, v4

    sget v4, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v2

    div-float/2addr v3, v2

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->t:F

    sub-float v4, v2, v1

    iput v4, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->u:F

    sub-float v1, p0, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p0, v3

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method private final getScaleRatio()F
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->z:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->z:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->o:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getMaxScale()F

    move-result p0

    div-float/2addr v0, p0

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->o:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getMaxScale()F

    move-result p0

    div-float/2addr v1, p0

    div-float v0, v1, v0

    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->J:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;->getControlRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->l:F

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;

    return-object v1
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->h()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->J:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;->getControlRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;->getControlRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->h:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->h:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->h:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->h:Landroid/graphics/Paint;

    sget v5, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-static {v5}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->y:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    iput v3, v0, Landroid/graphics/RectF;->left:F

    :cond_0
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    iput v3, v0, Landroid/graphics/RectF;->right:F

    :cond_1
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    iput v3, v0, Landroid/graphics/RectF;->top:F

    :cond_2
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    :cond_3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->o:Landroid/graphics/RectF;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->limitAndResize(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-void
.end method

.method public final clearMarginTemplate()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->updateMarginTemplate(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/extension/RectKt;->isEmptyOnScreen$default(Landroid/graphics/RectF;FILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->y:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "expected spaceArea not empty, reset spaceArea"

    invoke-virtual {v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->o:Landroid/graphics/RectF;

    iget v2, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_1
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    :cond_2
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    :cond_3
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, p0

    if-lez v1, :cond_4

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    :cond_4
    return-void
.end method

.method public final displayForSmallWindow(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->q0:Z

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k0:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->isNaNBox()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->q0:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getSmallWindowExpectedWidth()F

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getExpectedWidth()F

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->initPageSize(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final e(Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;)Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;
    .locals 7

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    sub-float v4, v3, p0

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v2, p0

    add-float/2addr v3, p0

    add-float/2addr v2, p0

    invoke-direct {v1, v4, v5, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;-><init>(Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    sub-float/2addr v2, v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v3

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    add-float/2addr v3, v4

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p0, v4

    invoke-direct {v1, v2, v5, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;-><init>(Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    sub-float v4, v3, p0

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v2, p0

    add-float/2addr v3, p0

    add-float/2addr v2, p0

    invoke-direct {v1, v4, v5, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;-><init>(Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    sub-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    sub-float/2addr v2, v4

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v4

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    add-float/2addr v4, p0

    invoke-direct {v1, v3, v2, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;-><init>(Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    sub-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    sub-float/2addr v2, v4

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v4

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    add-float/2addr v4, p0

    invoke-direct {v1, v3, v2, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;-><init>(Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;Landroid/graphics/RectF;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    sub-float v4, v3, p0

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v5, v2, p0

    add-float/2addr v3, p0

    add-float/2addr v2, p0

    invoke-direct {v1, v4, v5, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;-><init>(Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;Landroid/graphics/RectF;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    sub-float/2addr v2, v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v3

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    add-float/2addr v3, v4

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr p0, v4

    invoke-direct {v1, v2, v5, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;-><init>(Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;Landroid/graphics/RectF;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    sub-float v4, v3, p0

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v5, v2, p0

    add-float/2addr v3, p0

    add-float/2addr v2, p0

    invoke-direct {v1, v4, v5, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;-><init>(Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;Landroid/graphics/RectF;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final f(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->w:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->w:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget v0, v2, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->y:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v0, v1

    const/4 v4, 0x0

    if-lez v3, :cond_0

    sub-float/2addr v1, v0

    invoke-virtual {v2, v1, v4}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    iget v0, v2, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->y:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v0, v1

    if-gez v3, :cond_1

    sub-float/2addr v1, v0

    invoke-virtual {v2, v1, v4}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    iget v0, v2, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->y:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v0, v1

    if-lez v3, :cond_2

    sub-float/2addr v1, v0

    invoke-virtual {v2, v4, v1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_2
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->y:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v0, v1

    if-gez v3, :cond_3

    sub-float/2addr v1, v0

    invoke-virtual {v2, v4, v1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->o:Landroid/graphics/RectF;

    invoke-static {v2, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->limit(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->w:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final g(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->w:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->w:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->v:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;->getType()Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->x:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/RectF;->right:F

    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->x:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->x:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/RectF;->left:F

    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->x:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->x:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->x:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/RectF;->right:F

    iget v0, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, v1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->x:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->x:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/RectF;->left:F

    iget v0, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, v1, Landroid/graphics/RectF;->top:F

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->c()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->q:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getEditArea()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->o:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getExpectedWidth()F
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_480:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public final getMarginColor()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->s:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->getColor()I

    move-result p0

    return p0
.end method

.method public final getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getMarginPixel()Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->y:Landroid/graphics/RectF;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/data/MarginPixel;->toMarginPercent(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object p0

    return-object p0
.end method

.method public final getMarginTemplateRes()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->s:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->getTemplateResource()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMarginTemplateSpace()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->s:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->getTemplateSpace()F

    move-result p0

    return p0
.end method

.method public final getMaxMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getMaxMarginPixel()Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->y:Landroid/graphics/RectF;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/data/MarginPixel;->toMarginPercent(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object p0

    return-object p0
.end method

.method public final getMaxScale()F
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->O:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/SizeKt;->toRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->z:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->z:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->O:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->O:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->z:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->O:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/SizeKt;->toRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToHeight(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->landscape_margin_max_percent:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p0

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->portrait_margin_top_bottom_max_percent:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p0

    :goto_1
    const/4 v1, 0x1

    int-to-float v1, v1

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float/2addr p0, v2

    add-float/2addr v1, p0

    mul-float/2addr v1, v0

    return v1
.end method

.method public final getSmallWindowExpectedWidth()F
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_320:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->values()[Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->J:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->e(Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;)Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final initPageSize(F)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k0:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isLandscape(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k0:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->getAspectRatio(Landroid/graphics/RectF;)F

    move-result v0

    div-float v0, p1, v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->o:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->o:Landroid/graphics/RectF;

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->o:Landroid/graphics/RectF;

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k:F

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    invoke-virtual {p1, v2, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->t:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    sget v0, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->u:F

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k0:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->z:Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->y:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getPageScaleRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final initView(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "boxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k0:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getExpectedWidth()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->initPageSize(F)V

    return-void
.end method

.method public final isLandscape()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->z:Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isLandscape(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public final isSmallWindowLayout()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->q0:Z

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->k0:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->isNaNBox()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->n:Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->s:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->setMargin(Lcom/onyx/android/sdk/geometry/data/MarginPercent;Lcom/onyx/android/sdk/geometry/data/MarginStyle;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->n:Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->Q:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->setContentRect(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->r:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->f:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->y:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->createRectanglesWithHole(Landroid/graphics/RectF;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->n:Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->draw$default(Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;Landroid/graphics/Canvas;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->b(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->m:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->f(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->g(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->e:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->a(Landroid/view/MotionEvent;)Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->v:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->w:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->x:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->v:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v3, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_0

    :cond_4
    move p1, v1

    :goto_0
    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->m:I

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->v:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;

    if-nez p1, :cond_6

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->m:I

    if-ne p0, v2, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    return v1
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->q:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setData(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "boxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->y:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->toMarginPixel(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->y:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->d()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->h()V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->q:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->r:Landroid/graphics/RectF;

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->r:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->o:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setEditArea(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->o:Landroid/graphics/RectF;

    return-void
.end method

.method public final setFixedMarginFormat(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/SizeKt;->toRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object p1

    :goto_0
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getScaleRatio()F

    move-result v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->o:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->o:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v2

    sub-float/2addr v0, v4

    add-float/2addr v3, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->p:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->d()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setMarginColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->s:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setPageMarginChangeCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/geometry/data/MarginPercent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setSmallWindowLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->q0:Z

    return-void
.end method

.method public final updateMarginTemplate(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->s:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->setTemplateResource(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;->Companion:Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin$Companion;->loadFromResOrDefault(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->n:Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;->updateMarginTemplate(Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->n:Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->setXferMode(Landroid/graphics/Xfermode;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->getScaleRatio()F

    move-result p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->Q:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->y:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->Q:Landroid/graphics/RectF;

    int-to-float v1, v1

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scale(Landroid/graphics/RectF;Ljava/lang/Number;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->y:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, p1, p1, v2, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->n:Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateMarginTemplateSpace(F)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->s:Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->setTemplateSpace(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
