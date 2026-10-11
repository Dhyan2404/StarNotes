.class public final Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPageHighQualityRenderHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageHighQualityRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,550:1\n526#2:551\n511#2,6:552\n215#3,2:558\n215#3,2:560\n215#3,2:574\n215#3,2:592\n76#3:594\n96#3,5:595\n766#4:562\n857#4,2:563\n1855#4,2:565\n1855#4,2:567\n766#4:569\n857#4,2:570\n1855#4,2:572\n766#4:576\n857#4,2:577\n1855#4,2:579\n1855#4,2:581\n766#4:583\n857#4,2:584\n1855#4,2:586\n1549#4:588\n1620#4,3:589\n1855#4,2:600\n*S KotlinDebug\n*F\n+ 1 PageHighQualityRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler\n*L\n80#1:551\n80#1:552,6\n81#1:558,2\n92#1:560,2\n351#1:574,2\n509#1:592,2\n527#1:594\n527#1:595,5\n143#1:562\n143#1:563,2\n146#1:565,2\n152#1:567,2\n153#1:569\n153#1:570,2\n154#1:572,2\n388#1:576\n388#1:577,2\n395#1:579,2\n412#1:581,2\n437#1:583\n437#1:584,2\n438#1:586,2\n474#1:588\n474#1:589,3\n528#1:600,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0001^B\u0007\u00a2\u0006\u0004\u0008~\u0010\u007fJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000cH\u0002J&\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0014\u0008\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011H\u0002J&\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0014\u0008\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011H\u0002J4\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\u000f2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011H\u0002J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0016\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\"2\u0006\u0010!\u001a\u00020 H\u0002J\u0016\u0010&\u001a\u00020\u00022\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u001d0$H\u0002J\u0008\u0010\'\u001a\u00020\u0002H\u0002J\u0016\u0010)\u001a\u00020\u00022\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001d0$H\u0002J\u0010\u0010*\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0010\u0010+\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0006\u0010-\u001a\u00020,J\u0010\u0010.\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0010\u00101\u001a\u00020\u00022\u0006\u00100\u001a\u00020/H\u0016J\u0010\u00104\u001a\u00020\u00022\u0008\u00103\u001a\u0004\u0018\u000102J\u0012\u00107\u001a\u0004\u0018\u00010\u00072\u0006\u00106\u001a\u000205H\u0016J\u0012\u00108\u001a\u0004\u0018\u0001022\u0006\u00106\u001a\u000205H\u0016J\u0010\u00109\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u0010\u0010:\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010;\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0006\u0010=\u001a\u00020<J\u0018\u0010A\u001a\u00020\u00132\u0006\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020\u001dH\u0016J\u0008\u0010B\u001a\u00020\u0002H\u0016J$\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\"2\u0006\u0010D\u001a\u00020C2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001d0$H\u0016J$\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\"2\u0006\u0010D\u001a\u00020C2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001d0$H\u0016J$\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\"2\u0006\u0010D\u001a\u00020C2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001d0$H\u0016J\u001c\u0010L\u001a\u0006\u0012\u0002\u0008\u00030\"2\u0006\u0010I\u001a\u00020H2\u0006\u0010K\u001a\u00020JH\u0016J\u0018\u0010N\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010M\u001a\u00020\u0013H\u0016J\u000e\u0010O\u001a\u0008\u0012\u0004\u0012\u00020\u001d0$H\u0016J\u0016\u0010R\u001a\u00020\u00022\u000c\u0010Q\u001a\u0008\u0012\u0004\u0012\u0002050PH\u0016J\u0008\u0010S\u001a\u00020\u0002H\u0016J\u0010\u0010T\u001a\u00020\u00022\u0006\u00106\u001a\u000205H\u0016J\u0008\u0010U\u001a\u00020\u0002H\u0016J\u0008\u0010V\u001a\u00020\u0002H\u0016J\u0008\u0010W\u001a\u000205H\u0016J\u0008\u0010X\u001a\u00020\u0002H\u0016J\u0008\u0010Y\u001a\u00020\u0002H\u0016J\u0010\u0010\\\u001a\u00020\u00022\u0006\u0010[\u001a\u00020ZH\u0016R\u0014\u0010`\u001a\u00020]8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u0014\u0010b\u001a\u00020]8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008a\u0010_R\u0014\u0010f\u001a\u00020c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0014\u0010h\u001a\u00020]8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008g\u0010_R2\u0010m\u001a\u001e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020\u00070ij\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020\u0007`j8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u001b\u0010s\u001a\u00020n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008o\u0010p\u001a\u0004\u0008q\u0010rR&\u0010w\u001a\u0014\u0012\u0004\u0012\u000205\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0u0t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010vR\u001a\u0010{\u001a\u0008\u0012\u0004\u0012\u00020 0x8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008y\u0010zR\u0016\u0010}\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010|\u00a8\u0006\u0080\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;",
        "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;",
        "",
        "v",
        "D",
        "Lcom/onyx/android/sdk/geometry/data/SliceLruCache;",
        "x",
        "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;",
        "pageNodeInfo",
        "A",
        "z",
        "C",
        "Landroid/graphics/Canvas;",
        "canvas",
        "m",
        "Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;",
        "shapeFlushInfo",
        "Lkotlin/Function1;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "",
        "render",
        "s",
        "q",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "slice",
        "p",
        "Landroid/graphics/Matrix;",
        "i",
        "j",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualPageBoxInfo",
        "E",
        "Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;",
        "params",
        "Lio/reactivex/rxjava3/core/Observable;",
        "k",
        "",
        "boxList",
        "y",
        "w",
        "visibleBoxList",
        "B",
        "n",
        "g",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;",
        "renderRequestManager",
        "onDraw",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "draw",
        "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;",
        "pageSliceInfo",
        "refreshPage",
        "",
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
        "createDisplayBoxListObservable",
        "Landroid/view/View;",
        "hostView",
        "Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;",
        "args",
        "animateBoxChange",
        "forceUpdate",
        "updateExistsRenderNode",
        "displayBoxList",
        "",
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
        "a",
        "I",
        "PAGE_BITMAP_LAYER_COUNT",
        "b",
        "MAX_VIEWPORT_CACHE_COUNT",
        "",
        "c",
        "J",
        "DISPLAY_FILTER_TIME_MILL",
        "d",
        "PENDING_RENDER_TASK_MAX_COUNT",
        "Ljava/util/LinkedHashMap;",
        "Lkotlin/collections/LinkedHashMap;",
        "e",
        "Ljava/util/LinkedHashMap;",
        "pageRenderNodeMap",
        "Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;",
        "f",
        "Lkotlin/Lazy;",
        "getSliceStateManager",
        "()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;",
        "sliceStateManager",
        "",
        "",
        "Ljava/util/Map;",
        "shapeFlushInfoMap",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "h",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "displayFilter",
        "Z",
        "isAnimating",
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
        "SMAP\nPageHighQualityRenderHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageHighQualityRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,550:1\n526#2:551\n511#2,6:552\n215#3,2:558\n215#3,2:560\n215#3,2:574\n215#3,2:592\n76#3:594\n96#3,5:595\n766#4:562\n857#4,2:563\n1855#4,2:565\n1855#4,2:567\n766#4:569\n857#4,2:570\n1855#4,2:572\n766#4:576\n857#4,2:577\n1855#4,2:579\n1855#4,2:581\n766#4:583\n857#4,2:584\n1855#4,2:586\n1549#4:588\n1620#4,3:589\n1855#4,2:600\n*S KotlinDebug\n*F\n+ 1 PageHighQualityRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler\n*L\n80#1:551\n80#1:552,6\n81#1:558,2\n92#1:560,2\n351#1:574,2\n509#1:592,2\n527#1:594\n527#1:595,5\n143#1:562\n143#1:563,2\n146#1:565,2\n152#1:567,2\n153#1:569\n153#1:570,2\n154#1:572,2\n388#1:576\n388#1:577,2\n395#1:579,2\n412#1:581,2\n437#1:583\n437#1:584,2\n438#1:586,2\n474#1:588\n474#1:589,3\n528#1:600,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:I

.field public e:Ljava/util/LinkedHashMap;
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

.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/util/Map;
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

.field public final h:Lcom/onyx/android/sdk/base/rx/RxFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->a:I

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->b:I

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->c:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->d:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$sliceStateManager$2;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$sliceStateManager$2;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->f:Lkotlin/Lazy;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->g:Ljava/util/Map;

    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->h:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->v()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->l(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)V

    return-void
.end method

.method public static final synthetic access$displayBoxImpl(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->k(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPENDING_RENDER_TASK_MAX_COUNT$p(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->d:I

    return p0
.end method

.method public static final synthetic access$getPageRenderNodeMap$p(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static final synthetic access$prepareDisplayBoxList(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->y(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setAnimating$p(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->i:Z

    return-void
.end method

.method public static final synthetic access$updateRenderNodeBoxInfo(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->E(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->f(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->h(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->u(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->o(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->i:Z

    return-void
.end method

.method public static final h(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$visibleBoxList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->h:Lcom/onyx/android/sdk/base/rx/RxFilter;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;

    invoke-direct {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static final l(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->removeNotDisplayCache()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->w()V

    return-void
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

.method public static synthetic r(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$flushShapeToPageImpl$1;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$flushShapeToPageImpl$1;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->q(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic t(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$flushShapeToPageWithStash$1;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$flushShapeToPageWithStash$1;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->s(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public static final u(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
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
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->removeDisplayBitmap(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getContentSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->removeDisplayBitmap(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeDisplayBitmap, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", contentNote = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", content = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final B(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

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

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->viewportRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->isEnabledHighQuality(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->A(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->clearRenderNode()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actual scale < maxScale, remove node, rnId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final C(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v0

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->i:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->toRenderNodePositionRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->setPosition(Landroid/graphics/Rect;)V

    :cond_0
    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->beginRecording()Landroid/graphics/Canvas;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->m(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->endRecording()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renderPageNode, rnId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->endRecording()V

    throw p0
.end method

.method public final D()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->h:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->v()V

    return-void
.end method

.method public final E(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->updateRenderNodeBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p0

    return p0
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

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->i:Z

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$b;

    invoke-direct {v1, p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$b;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$c;

    invoke-direct {v1, v0, p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$c;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$d;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$d;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/fsk;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/fsk;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doFinally(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public cancelAllRenderRequest()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->renderRequestManager()Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->cancelAllRequest()V

    return-void
.end method

.method public clearDisplay()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

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

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->A(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

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

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->g:Ljava/util/Map;

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

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public createDisplayBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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

    const-string v0, "visibleBoxList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayBoxList, resetDisplayFilter"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->D()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->cancelAllRenderRequest()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;

    invoke-direct {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->k(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public createDisplayScalingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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

    const-string p1, "visibleBoxList"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->cancelAllRenderRequest()V

    sget-object p1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->toBoxIdSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->evict(Ljava/util/Set;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$e;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$e;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public createDisplayScrollingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
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

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->toBoxIdSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->evict(Ljava/util/Set;)V

    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$f;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/esk;

    invoke-direct {v1, p0, p1, p2}, Lcom/sunia/HTREnginev2/esk;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnComplete(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public createPreRenderBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->createPreRenderBoxListObservable(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->h:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->clearDisplay()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->clear()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->clearShapeFlushInfo()V

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

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

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

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

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

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->m(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Landroid/graphics/Canvas;)V

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

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

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

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->discardDisplayList()V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->A(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

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

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
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

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->t(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final g(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->clearShapeCacheDataIf()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->shapeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", clearShapeCacheData = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getDisplayDebugString()Ljava/lang/String;
    .locals 5
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

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

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

    const-string v3, ", cacheSize = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

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

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    return-object p0
.end method

.method public getPageSliceInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isSliceOutOfDate()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isSliceOutOfDate, return null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getContentSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0}, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    return-object p0
.end method

.method public final getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    return-object p0
.end method

.method public final i(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)Landroid/graphics/Matrix;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->j(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)Landroid/graphics/Matrix;

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

.method public invalidateNotVisiblePagesIf(Ljava/util/Collection;)V
    .locals 0
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

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->invalidateNotVisiblePagesIf(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/util/Collection;)V

    return-void
.end method

.method public invalidateSliceByPages(Ljava/util/Collection;)V
    .locals 0
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

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->invalidateSliceByPages(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/util/Collection;)V

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

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

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

.method public final j(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)Landroid/graphics/Matrix;
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSliceRectFInPage()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p0

    div-float/2addr v0, p0

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginDisplayPixel()Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    move-result-object p1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p0
.end method

.method public final k(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;)Lio/reactivex/rxjava3/core/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;->e()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;->f()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->B(Ljava/util/List;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    sget-object v4, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->viewportRectF()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->isEnabledHighQuality(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->clearDisplay()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->safeClearAllSliceCache()V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "fromIterable(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    sget-object p1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->toBoxIdSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->evict(Ljava/util/Set;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->n(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageCount = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Ljava/lang/String;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$g;

    invoke-direct {v1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$g;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/isk;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/isk;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnComplete(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
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

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$lowLatencyFlushToPage$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$lowLatencyFlushToPage$1;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->s(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public final m(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/data/SliceKt;->isValidContentNote(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result v1

    const-string v2, ", sliceRectFInPage = "

    if-nez v1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawPageNodeImpl fail, invalid bitmap, rnId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSliceRectFInPage()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->j(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    sget-object v4, Lcom/onyx/android/sdk/universal/editor/config/DebugConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/DebugConfig;

    invoke-virtual {v4, p2}, Lcom/onyx/android/sdk/universal/editor/config/DebugConfig;->drawRenderNodeDebugRect(Landroid/graphics/Canvas;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawBitmap, rnId = "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSliceRectFInPage()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSliceRectFInPage()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " * "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSliceRectFInPage()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", bitmap.rect = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", verifyId = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->lastVerifyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", displayMatrix = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;
    .locals 3

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$ensureRenderNodeExists$pageNodeInfo$1;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$ensureRenderNodeExists$pageNodeInfo$1;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    new-instance v2, Lcom/sunia/HTREnginev2/gsk;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/gsk;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "computeIfAbsent(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->updateRenderNodeBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    return-object p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

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

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->C(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

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

.method public final p(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;)Z
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

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", sliceRectInPage = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSliceRectFInPage()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->logW(Ljava/lang/String;)V

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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->i(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)Landroid/graphics/Matrix;

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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->logW(Ljava/lang/String;)V

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

    invoke-virtual {p3, p2}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->setPageHighQualityFlushFinish(Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flushShapeToPage, lastRenderShapeId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flushFinish = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->isPageHighQualityFlushFinish()Z

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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Ljava/lang/String;)V

    return p4
.end method

.method public final q(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;)Z
    .locals 6
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

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

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
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->viewportRectF()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->isEnabledHighQuality(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->p(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public final refreshPage(Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p1, "pageSliceInfo null, refresh fail"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->logW(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    if-nez v5, :cond_1

    return-void

    :cond_1
    invoke-virtual {v5, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->updateSliceInfo(Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;)Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;

    move-result-object v2

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isRenderNodeSizeChanged()Z

    move-result v3

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->getSuccess()Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->C(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->setSliceOutOfDate(Z)V

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->z(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->afterRefreshPage(Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;)V

    :cond_3
    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->setSliceOutOfDate(Z)V

    new-instance v7, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$refreshPage$1;

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$refreshPage$1;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;ZZLcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;)V

    invoke-virtual {p0, v7}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Lkotlin/jvm/functions/Function0;)V

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

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

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

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->a:I

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->b:I

    mul-int/2addr v0, v1

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

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->x()Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

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

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->viewportRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->isEnabledHighQuality(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->setPageHighQualityFlushFinish(Z)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->w()V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->q(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;)Z

    move-result p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->isPageHighQualityFlushFinish()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->stashShapeFlushInfo()Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$flushShapeToPageWithStash$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$flushShapeToPageWithStash$2;

    new-instance v2, Lcom/sunia/HTREnginev2/hsk;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/hsk;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return p2
.end method

.method public safeClearAllNoteSliceCache()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->safeClearAllNoteSliceCache()V

    return-void
.end method

.method public safeClearAllSliceCache()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

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

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->setBackground(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

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

.method public updateExistsRenderNode(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->updateRenderNodeBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result v1

    if-nez p2, :cond_1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->discardDisplayList()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->C(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->setSliceOutOfDate(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateExistsRenderNode, id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isSliceOutOfDate = true, forceUpdate = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", updateResult = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final v()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->h:Lcom/onyx/android/sdk/base/rx/RxFilter;

    iget-wide v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->c:J

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$h;

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$h;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/rx/RxFilter;->subscribeThrottleLast(JLio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public final viewportRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->x()Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->getSizeConfig()Lcom/onyx/android/sdk/geometry/data/SizeConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->getViewportSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final w()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->logBitmapDisplayCount(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public final x()Lcom/onyx/android/sdk/geometry/data/SliceLruCache;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->getSliceStateManager()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

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

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->evict(Ljava/util/Set;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->n(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V
    .locals 9

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->g:Ljava/util/Map;

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

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->setPageHighQualityFlushFinish(Z)V

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->g(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)V

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

    invoke-static {p0, v5, v7, v6, v7}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->r(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

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

    invoke-virtual {v6}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->isPageHighQualityFlushFinish()Z

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

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->g(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)V

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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Ljava/lang/String;)V

    return-void
.end method
