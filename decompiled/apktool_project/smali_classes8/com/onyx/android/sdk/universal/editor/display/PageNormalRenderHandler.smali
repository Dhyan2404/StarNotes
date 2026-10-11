.class public final Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPageNormalRenderHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageNormalRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,552:1\n766#2:553\n857#2,2:554\n1855#2,2:556\n766#2:558\n857#2,2:559\n766#2:572\n857#2,2:573\n1855#2,2:575\n1855#2,2:577\n766#2:579\n857#2,2:580\n1855#2,2:582\n1549#2:586\n1620#2,3:587\n1855#2,2:590\n1549#2:592\n1620#2,3:593\n1855#2,2:604\n526#3:561\n511#3,6:562\n215#4,2:568\n215#4,2:570\n215#4,2:584\n215#4,2:596\n76#4:598\n96#4,5:599\n*S KotlinDebug\n*F\n+ 1 PageNormalRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler\n*L\n76#1:553\n76#1:554,2\n87#1:556,2\n100#1:558\n100#1:559,2\n164#1:572\n164#1:573,2\n167#1:575,2\n173#1:577,2\n174#1:579\n174#1:580,2\n175#1:582,2\n418#1:586\n418#1:587,3\n451#1:590,2\n469#1:592\n469#1:593,3\n524#1:604,2\n106#1:561\n106#1:562,6\n107#1:568,2\n119#1:570,2\n360#1:584,2\n505#1:596,2\n523#1:598\n523#1:599,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001fB\t\u00a2\u0006\u0006\u0008\u0081\u0001\u0010\u0082\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J&\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0014\u0008\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00100\u0014H\u0002J&\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0014\u0008\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00100\u0014H\u0002J6\u0010\u001b\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u00122\u0014\u0008\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00100\u0014H\u0002J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0016\u0010#\u001a\u00020\u000b2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0 H\u0002J\u0016\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020!0&2\u0006\u0010%\u001a\u00020$H\u0002J&\u0010*\u001a\u0008\u0012\u0004\u0012\u00020!0 2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020!0 2\u0008\u0008\u0002\u0010)\u001a\u00020\u0010H\u0002J\u0010\u0010+\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0012\u0010.\u001a\u00020\u000b2\u0008\u0010-\u001a\u0004\u0018\u00010,H\u0016J\u0006\u00100\u001a\u00020/J\u000e\u00102\u001a\u00020\u000b2\u0006\u00101\u001a\u00020!J\u0016\u00103\u001a\u00020\u000b2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J\u0016\u00104\u001a\u00020\u000b2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J\u0010\u00105\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u00108\u001a\u00020\u000b2\u0006\u00107\u001a\u000206H\u0016J\u000e\u0010;\u001a\u00020\u000b2\u0006\u0010:\u001a\u000209J\u0010\u0010<\u001a\u00020\u000b2\u0008\u0010:\u001a\u0004\u0018\u000109J\u0012\u0010>\u001a\u0004\u0018\u00010\t2\u0006\u0010=\u001a\u00020\u0005H\u0016J\u0012\u0010?\u001a\u0004\u0018\u0001092\u0006\u0010=\u001a\u00020\u0005H\u0016J\u0010\u0010@\u001a\u00020\u00102\u0006\u00101\u001a\u00020!H\u0016J\u0010\u0010A\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0010\u0010B\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0006\u0010D\u001a\u00020CJ\u0018\u0010H\u001a\u00020\u00102\u0006\u0010F\u001a\u00020E2\u0006\u0010G\u001a\u00020!H\u0016J\u0008\u0010I\u001a\u00020\u000bH\u0016J$\u0010L\u001a\u0008\u0012\u0004\u0012\u00020!0&2\u0006\u0010K\u001a\u00020J2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020!0 H\u0016J$\u0010M\u001a\u0008\u0012\u0004\u0012\u00020!0&2\u0006\u0010K\u001a\u00020J2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020!0 H\u0016J$\u0010N\u001a\u0008\u0012\u0004\u0012\u00020!0&2\u0006\u0010K\u001a\u00020J2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0 H\u0016J$\u0010O\u001a\u0008\u0012\u0004\u0012\u00020!0&2\u0006\u0010K\u001a\u00020J2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020!0 H\u0016J\u001c\u0010T\u001a\u0006\u0012\u0002\u0008\u00030&2\u0006\u0010Q\u001a\u00020P2\u0006\u0010S\u001a\u00020RH\u0016J\u0018\u0010V\u001a\u00020\u000b2\u0006\u00101\u001a\u00020!2\u0006\u0010U\u001a\u00020\u0010H\u0016J\u000e\u0010W\u001a\u0008\u0012\u0004\u0012\u00020!0 H\u0016J\u0016\u0010Y\u001a\u00020\u000b2\u000c\u0010X\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H\u0016J\u0008\u0010Z\u001a\u00020\u000bH\u0016J\u0010\u0010[\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020\u0005H\u0016J\u0008\u0010\\\u001a\u00020\u000bH\u0016J\u0008\u0010]\u001a\u00020\u000bH\u0016J\u0008\u0010^\u001a\u00020\u0005H\u0016J\u0008\u0010_\u001a\u00020\u000bH\u0016J\u0008\u0010`\u001a\u00020\u000bH\u0016J\u0010\u0010c\u001a\u00020\u000b2\u0006\u0010b\u001a\u00020aH\u0016J\u0006\u0010e\u001a\u00020dR\u0014\u0010h\u001a\u00020d8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0014\u0010j\u001a\u00020d8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008i\u0010gR\u0014\u0010l\u001a\u00020d8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008k\u0010gR2\u0010q\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0mj\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t`n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u001b\u0010w\u001a\u00020r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008s\u0010t\u001a\u0004\u0008u\u0010vR&\u0010{\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120y0x8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010zR\u0016\u0010}\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010|R\u0017\u0010\u0080\u0001\u001a\u00020~8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u007f\u00a8\u0006\u0083\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;",
        "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;",
        "Lcom/onyx/android/sdk/geometry/data/SliceLruCache;",
        "x",
        "",
        "",
        "pageIdSet",
        "",
        "p",
        "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;",
        "pageNodeInfo",
        "",
        "z",
        "A",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "l",
        "Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;",
        "shapeFlushInfo",
        "Lkotlin/Function1;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "render",
        "u",
        "s",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "slice",
        "q",
        "Landroid/graphics/Matrix;",
        "h",
        "i",
        "f",
        "",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "boxList",
        "y",
        "Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;",
        "params",
        "Lio/reactivex/rxjava3/core/Observable;",
        "j",
        "visibleBoxList",
        "forceRequestAllBoxList",
        "m",
        "g",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "geoLayout",
        "setBackground",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;",
        "renderRequestManager",
        "virtualPageBoxInfo",
        "invalidateOtherScaleSlice",
        "invalidateSliceByPages",
        "invalidateNotVisiblePagesIf",
        "onDraw",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "draw",
        "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;",
        "pageSliceInfo",
        "refreshPageAfterRender",
        "refreshPage",
        "pageId",
        "getPageRenderNodeInfo",
        "getPageSliceInfo",
        "isEnabledPageBorder",
        "flushShapeToPage",
        "lowLatencyFlushToPage",
        "Landroid/graphics/RectF;",
        "viewportRectF",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "virtualBoxInfo",
        "removeVerifyId",
        "clearDisplay",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "createDisplayScalingBoxListObservable",
        "createDisplayScrollingBoxListObservable",
        "createPreRenderBoxListObservable",
        "createDisplayBoxListObservable",
        "Landroid/view/View;",
        "hostView",
        "Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;",
        "args",
        "animateBoxChange",
        "forceUpdate",
        "updateExistsRenderNode",
        "displayBoxList",
        "keepList",
        "evict",
        "safeClearAllNoteSliceCache",
        "safeClearPageNoteSliceCache",
        "safeClearAllSliceCache",
        "cancelAllRenderRequest",
        "getDisplayDebugString",
        "destroy",
        "clearShapeFlushInfo",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "viewSize",
        "resizeCache",
        "",
        "pendingRenderTaskMaxCount",
        "a",
        "I",
        "PAGE_BITMAP_LAYER_COUNT",
        "b",
        "DISPLAY_CACHE_COUNT",
        "c",
        "MAX_VIEWPORT_CACHE_COUNT",
        "Ljava/util/LinkedHashMap;",
        "Lkotlin/collections/LinkedHashMap;",
        "d",
        "Ljava/util/LinkedHashMap;",
        "pageRenderNodeMap",
        "Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;",
        "e",
        "Lkotlin/Lazy;",
        "getSliceStateManager",
        "()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;",
        "sliceStateManager",
        "",
        "",
        "Ljava/util/Map;",
        "shapeFlushInfoMap",
        "Z",
        "isAnimating",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;",
        "geoLayoutShaderWrapper",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
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
        "SMAP\nPageNormalRenderHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageNormalRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,552:1\n766#2:553\n857#2,2:554\n1855#2,2:556\n766#2:558\n857#2,2:559\n766#2:572\n857#2,2:573\n1855#2,2:575\n1855#2,2:577\n766#2:579\n857#2,2:580\n1855#2,2:582\n1549#2:586\n1620#2,3:587\n1855#2,2:590\n1549#2:592\n1620#2,3:593\n1855#2,2:604\n526#3:561\n511#3,6:562\n215#4,2:568\n215#4,2:570\n215#4,2:584\n215#4,2:596\n76#4:598\n96#4,5:599\n*S KotlinDebug\n*F\n+ 1 PageNormalRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler\n*L\n76#1:553\n76#1:554,2\n87#1:556,2\n100#1:558\n100#1:559,2\n164#1:572\n164#1:573,2\n167#1:575,2\n173#1:577,2\n174#1:579\n174#1:580,2\n175#1:582,2\n418#1:586\n418#1:587,3\n451#1:590,2\n469#1:592\n469#1:593,3\n524#1:604,2\n106#1:561\n106#1:562,6\n107#1:568,2\n119#1:570,2\n360#1:584,2\n505#1:596,2\n523#1:598\n523#1:599,5\n*E\n"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Z

.field public h:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->b:I

    rsub-int/lit8 v1, v0, 0x3

    iput v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->c:I

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$sliceStateManager$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$sliceStateManager$2;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->e:Lkotlin/Lazy;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->f:Ljava/util/Map;

    new-instance v1, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;-><init>(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->setEnabledUnionCanvasBoundingRectF(Z)V

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->h:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->k(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;)V

    return-void
.end method

.method public static final synthetic access$getPageRenderNodeMap$p(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static final synthetic access$prepareDisplayBoxList(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->y(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setAnimating$p(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->g:Z

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->o(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->w(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->e(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;)V

    return-void
.end method

.method public static final e(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->g:Z

    return-void
.end method

.method public static final k(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->logBitmapDisplayCount(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->m(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final o(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    return-object p0
.end method

.method public static synthetic r(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    new-instance p4, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$flushShapeToPage$1;

    invoke-direct {p4, p3}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$flushShapeToPage$1;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->q(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic t(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$flushShapeToPageImpl$1;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$flushShapeToPageImpl$1;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->s(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$flushShapeToPageWithStash$1;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$flushShapeToPageWithStash$1;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->u(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public static final w(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final A(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v0

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->g:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->toRenderNodePositionRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->setPosition(Landroid/graphics/Rect;)V

    :cond_0
    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->beginRecording()Landroid/graphics/Canvas;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->l(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Landroid/graphics/Canvas;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->updateDisplayStateAfterDrawPageNode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->endRecording()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->endRecording()V

    throw p0
.end method

.method public addNoteSearchBeanList(Ljava/util/List;)Z
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->addNoteSearchBeanList(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public addRenderer(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->addRenderer(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;)V

    return-void
.end method

.method public animateBoxChange(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hostView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->g:Z

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$b;

    invoke-direct {v1, p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$b;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$c;

    invoke-direct {v1, v0, p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$c;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$d;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$d;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/btk;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/btk;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doFinally(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public cancelAllRenderRequest()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->renderRequestManager()Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->cancelAllRequest()V

    return-void
.end method

.method public clearDisplay()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->h:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->clearCache()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->h:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->setVisible(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->discardDisplayList()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->moveDisplayToCache(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public clearNoteSearchBeanList()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->clearNoteSearchBeanList(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)Z

    move-result p0

    return p0
.end method

.method public clearRenderer()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->clearRenderer(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)V

    return-void
.end method

.method public clearShapeFlushInfo()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->f:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->forceClearShapeCacheData()V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearShapeFlushInfo, size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->f:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public createDisplayBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleBoxList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->j(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public createDisplayScalingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleBoxList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getSCALING_RENDER_MAX_SCREEN_SCALE()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v2, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;ZF)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->j(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public createDisplayScrollingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleBoxList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->j(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public createPreRenderBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boxList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$e;

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$e;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$f;->e:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$f;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->clearDisplay()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->clear()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->clearShapeFlushInfo()V

    return-void
.end method

.method public displayBoxList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "<get-values>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public draw(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->h:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationX()F

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->l(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Landroid/graphics/Canvas;)Z

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    neg-float v1, v2

    neg-float v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public evict(Ljava/util/Set;)V
    .locals 4
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keepList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

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

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->discardDisplayList()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->moveDisplayToCache(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->renderRequestManager()Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->cancelPageRenderingRequestList(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evict, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->viewportRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->isEnabledHighQuality(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v0

    cmpg-float p0, p0, v0

    const/4 v0, 0x1

    if-nez p0, :cond_3

    move p0, v0

    goto :goto_0

    :cond_3
    move p0, v2

    :goto_0
    if-nez p0, :cond_4

    move v2, v0

    :cond_4
    :goto_1
    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->setSliceOutOfDate(Z)V

    return-void
.end method

.method public flushShapeToPage(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapeFlushInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->v(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final g(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->clearShapeCacheDataIf()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearShapeCacheData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getDisplayDebugString()Ljava/lang/String;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pageRenderNodeMap.size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxScale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->viewportRectF()Landroid/graphics/RectF;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->virtualPageMaxScale$default(Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;FILjava/lang/Object;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->toDebugString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", stateCache = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->getSimpleDebugString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getPageRenderNodeInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    return-object p0
.end method

.method public getPageSliceInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getContentSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    invoke-direct {p1, v1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    return-object p1
.end method

.method public final getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)Landroid/graphics/Matrix;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->i(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationX()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)Landroid/graphics/Matrix;
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p0

    div-float/2addr p1, p0

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-object p0
.end method

.method public invalidateNotVisiblePagesIf(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pageIdSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->p(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->invalidateSliceByPages(Ljava/util/Collection;)V

    return-void
.end method

.method public final invalidateOtherScaleSlice(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->x()Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->findAllScaleSliceList(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v4

    cmpg-float v3, v3, v4

    const/4 v4, 0x1

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;->NO_CACHE:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->updateSliceListState(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateOtherScaleSlice, size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exclude scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->log(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public invalidateSliceByPages(Ljava/util/Collection;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pageIdSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->x()Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$invalidateSliceByPages$1;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$invalidateSliceByPages$1;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->findAllScaleSliceList(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateSliceByPages, id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;->NO_CACHE:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->updateState(Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isEnabledPageBorder(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return p1

    :cond_1
    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/data/SliceKt;->isValidContentNote(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result p0

    return p0
.end method

.method public final j(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;)Lio/reactivex/rxjava3/core/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;->j()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;->g()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->toBoxIdSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->evict(Ljava/util/Set;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->m(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->boundingRectF(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->h:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewport(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->updateViewportAndBoundingRectF(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)V

    move-object v0, v3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pageCount = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/AbstractMap;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", requestDisplayList = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", forceRequestAllBoxList = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->log(Ljava/lang/String;)V

    :cond_1
    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$g;

    invoke-direct {v1, v2, p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$g;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/dtk;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/dtk;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$h;->e:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$h;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Landroid/graphics/Canvas;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/data/SliceKt;->isValidContentNote(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->i(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/config/DebugConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/DebugConfig;

    invoke-virtual {v2, p2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/config/DebugConfig;->drawRenderNodeDebugRect(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawBitmap, rnId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", src = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rn.size = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getHeight()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", pageId = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->log(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;->INSTANCE:Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$drawPageNodeImpl$1;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$drawPageNodeImpl$1;-><init>(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;->endFirstDisplaySinceOpen(Lkotlin/jvm/functions/Function0;)V

    const/4 p0, 0x1

    return p0
.end method

.method public log(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->log(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)V

    return-void
.end method

.method public log(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->log(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public logW(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->logW(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)V

    return-void
.end method

.method public lowLatencyFlushToPage(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapeFlushInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$lowLatencyFlushToPage$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$lowLatencyFlushToPage$1;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->u(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public final m(Ljava/util/List;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$ensureUpdatePageNodeAndCollectRequestDisplayBoxList$1$pageNodeInfo$1;

    invoke-direct {v5, v2}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$ensureUpdatePageNodeAndCollectRequestDisplayBoxList$1$pageNodeInfo$1;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    new-instance v6, Lcom/sunia/HTREnginev2/ctk;

    invoke-direct {v6, v5}, Lcom/sunia/HTREnginev2/ctk;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "computeIfAbsent(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isNeedRequestDisplay()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isScaleChanged(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;->LOADING:Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->setDisplayState(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;)V

    :cond_1
    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->updateRenderNodeBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    return-object p1

    :cond_3
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->h:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->hasDisplayList()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no display list, re-record page render node, rn.id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->log(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->A(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->drawInto(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final p(Ljava/util/Collection;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "<get-keys>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final pendingRenderTaskMaxCount()I
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getPendingRenderTaskMaxCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final q(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            "Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "flushShapeToPage, bitmap invalid, slice.state = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getState()Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->logW(Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->getShapeReference()Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->h(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->createFlushMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updateCanvas(Landroid/graphics/Canvas;)V

    invoke-interface {p4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_1

    const-string p1, "flushShapeToPage, lowLatencyRender fail"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->logW(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->ensureShapeUniqueId()V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->getAddVerifyId()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getVerifyIdList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addIfNotContains(Ljava/util/Collection;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isSliceOutOfDate()Z

    move-result p2

    const/4 p4, 0x1

    xor-int/2addr p2, p4

    invoke-virtual {p3, p2}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->setPageNormalFlushFinish(Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flushShapeToPage, lastRenderShapeId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flushFinish = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->isPageNormalFlushFinish()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", normalizeMatrix = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", isSliceOutOfDate = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isSliceOutOfDate()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->log(Ljava/lang/String;)V

    return p4
.end method

.method public final refreshPage(Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p1, "pageSliceInfo null, refresh fail"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->logW(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->updateSliceInfo(Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;)Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->getSuccess()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isRenderNodeSizeChanged()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->A(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->f(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->z(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->afterRefreshPage(Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;)V

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshPage, id = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actualScale = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final refreshPageAfterRender(Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageSliceInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isScaleChanged(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "isScaleChanged, do not refresh page"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->logW(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->refreshPage(Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->invalidateOtherScaleSlice(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method

.method public removeRenderer(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->removeRenderer(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)V

    return-void
.end method

.method public removeVerifyId(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualBoxInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return p2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getVerifyIdList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final renderRequestManager()Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->getRenderRequestManager()Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    move-result-object p0

    return-object p0
.end method

.method public rendererSize()I
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->rendererSize(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)I

    move-result p0

    return p0
.end method

.method public resizeCache(Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getRENDER_MAX_SCREEN_SCALE()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getRENDER_MAX_SCREEN_SCALE()F

    move-result v0

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->a:I

    int-to-float v0, v0

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->c:I

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resizeCache, viewSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", maxViewportCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->x()Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/SizeConfig;

    invoke-direct {v1, p1, v0}, Lcom/onyx/android/sdk/geometry/data/SizeConfig;-><init>(Lcom/onyx/android/sdk/base/data/Size;I)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->resize(Lcom/onyx/android/sdk/geometry/data/SizeConfig;)V

    return-void
.end method

.method public final s(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->q(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public safeClearAllNoteSliceCache()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->safeClearAllNoteSliceCache()V

    return-void
.end method

.method public safeClearAllSliceCache()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->clear()V

    return-void
.end method

.method public safeClearPageNoteSliceCache(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->safeClearPageNoteSliceCache(Ljava/lang/String;)V

    return-void
.end method

.method public setBackground(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->h:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->setGeoLayout(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

    return-void
.end method

.method public setPageVisible(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->setPageVisible(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V

    return-void
.end method

.method public final u(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->s(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;)Z

    move-result p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->isPageNormalFlushFinish()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->stashShapeFlushInfo()Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$flushShapeToPageWithStash$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$flushShapeToPageWithStash$2;

    new-instance v2, Lcom/sunia/HTREnginev2/atk;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/atk;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return p2
.end method

.method public updateExistsRenderNode(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->updateRenderNodeBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p1

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->f(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->discardDisplayList()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->A(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateExistsRenderNode, isSliceOutOfDate = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isSliceOutOfDate()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final viewportRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->x()Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->getSizeConfig()Lcom/onyx/android/sdk/geometry/data/SizeConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->getViewportSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final x()Lcom/onyx/android/sdk/geometry/data/SliceLruCache;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->getLruCache()Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    move-result-object p0

    return-object p0
.end method

.method public final y(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->toBoxIdSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->evict(Ljava/util/Set;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->m(Ljava/util/List;Z)Ljava/util/List;

    return-void
.end method

.method public final z(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V
    .locals 9

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getVerifyIdList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->shapeId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->setPageNormalFlushFinish(Z)V

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->g(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)V

    goto :goto_1

    :cond_5
    invoke-interface {v1, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {p0, v5, v7, v6, v7}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->t(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->isPageNormalFlushFinish()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->g(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)V

    goto :goto_4

    :cond_9
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reFlushToPage, rn.id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", page.id = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reFlushList = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", hasRenderList = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", remainList = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->log(Ljava/lang/String;)V

    return-void
.end method
