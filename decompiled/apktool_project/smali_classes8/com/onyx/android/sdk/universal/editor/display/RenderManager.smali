.class public final Lcom/onyx/android/sdk/universal/editor/display/RenderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Companion;,
        Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenderManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderManager.kt\ncom/onyx/android/sdk/universal/editor/display/RenderManager\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,627:1\n526#2:628\n511#2,6:629\n215#3,2:635\n215#3,2:637\n215#3,2:639\n187#3,3:641\n215#3,2:647\n215#3,2:650\n215#3,2:654\n215#3,2:656\n125#3:658\n152#3,3:659\n125#3:665\n152#3,3:666\n125#3:672\n152#3,3:673\n215#3,2:679\n215#3,2:681\n215#3,2:683\n215#3,2:685\n215#3,2:687\n215#3,2:689\n215#3,2:691\n215#3,2:697\n1855#4,2:644\n1855#4:646\n1856#4:649\n1855#4,2:652\n1747#4,3:662\n1747#4,3:669\n1747#4,3:676\n1549#4:693\n1620#4,3:694\n*S KotlinDebug\n*F\n+ 1 RenderManager.kt\ncom/onyx/android/sdk/universal/editor/display/RenderManager\n*L\n78#1:628\n78#1:629,6\n94#1:635,2\n98#1:637,2\n103#1:639,2\n281#1:641,3\n325#1:647,2\n331#1:650,2\n375#1:654,2\n438#1:656,2\n444#1:658\n444#1:659,3\n457#1:665\n457#1:666,3\n469#1:672\n469#1:673,3\n494#1:679,2\n500#1:681,2\n506#1:683,2\n512#1:685,2\n518#1:687,2\n528#1:689,2\n534#1:691,2\n575#1:697,2\n316#1:644,2\n324#1:646\n324#1:649\n338#1:652,2\n445#1:662,3\n458#1:669,3\n470#1:676,3\n559#1:693\n559#1:694,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f2\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u001e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u0098\u00012\u00020\u0001:\u0004\u0098\u0001\u0099\u0001B\t\u00a2\u0006\u0006\u0008\u0096\u0001\u0010\u0097\u0001J(\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u0002J\"\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0005H\u0002J\u001e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J \u0010\u0014\u001a\u00020\t2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0007H\u0002J\u001a\u0010\u0017\u001a\u00020\t2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0016\u001a\u00020\u0005H\u0002J\u0008\u0010\u0018\u001a\u00020\tH\u0002J\u0008\u0010\u0019\u001a\u00020\tH\u0002J\u0010\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0010\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0006\u0010\u001e\u001a\u00020\u000fJ\u0006\u0010\u001f\u001a\u00020\u000fJ\u0006\u0010 \u001a\u00020\u000fJ\u0006\u0010!\u001a\u00020\u000fJ\u0006\u0010\"\u001a\u00020\u000fJ\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u000f0#J\u0006\u0010&\u001a\u00020%J\u0006\u0010(\u001a\u00020\'J\u0006\u0010)\u001a\u00020\tJ\u0006\u0010*\u001a\u00020\tJ\u0006\u0010+\u001a\u00020\tJ\u0006\u0010,\u001a\u00020\tJ\u0018\u00101\u001a\u00020\t2\u0008\u0010.\u001a\u0004\u0018\u00010-2\u0006\u00100\u001a\u00020/J\u001c\u00102\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u001c\u00104\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u001c\u00105\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u001c\u00106\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J&\u00107\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007J\u0016\u0010:\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00109\u001a\u000208J\u001c\u0010;\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010<\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010?\u001a\u00020\t2\u0006\u0010>\u001a\u00020=J$\u0010A\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010@\u001a\u00020=J\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010D\u001a\u00020\t2\u0006\u0010C\u001a\u00020BJ \u0010H\u001a\u00020\t2\u0006\u0010E\u001a\u00020\u001a2\u0006\u0010G\u001a\u00020F2\u0008\u0008\u0002\u0010,\u001a\u00020\u0007J\u0018\u0010I\u001a\u00020\t2\u0006\u0010E\u001a\u00020\u001a2\u0008\u0008\u0002\u0010,\u001a\u00020\u0007J\u000e\u0010J\u001a\u00020\t2\u0006\u0010E\u001a\u00020\u001aJ\u0014\u0010N\u001a\u0008\u0012\u0004\u0012\u00020M0L2\u0006\u0010K\u001a\u00020\u001aJ\u0010\u0010P\u001a\u0004\u0018\u00010O2\u0006\u0010K\u001a\u00020\u001aJ\u000e\u0010S\u001a\u00020\t2\u0006\u0010R\u001a\u00020QJ\u000e\u0010V\u001a\u00020\u00072\u0006\u0010U\u001a\u00020TJ\u0018\u0010X\u001a\u00020\u00072\u0006\u0010U\u001a\u00020T2\u0008\u0008\u0002\u0010W\u001a\u00020\u0007J\u0016\u0010\\\u001a\u00020\u00072\u0006\u0010Z\u001a\u00020Y2\u0006\u0010[\u001a\u00020\u0005J\u0014\u0010_\u001a\u00020\u00072\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00020]0\u0004J\u0006\u0010`\u001a\u00020\tJ\u0010\u0010b\u001a\u0004\u0018\u00010a2\u0006\u0010K\u001a\u00020\u001aJ\u000e\u0010c\u001a\u00020\u00072\u0006\u0010K\u001a\u00020\u001aJ\u0010\u0010d\u001a\u00020\t2\u0008\u0008\u0002\u0010&\u001a\u00020%J\u0006\u0010e\u001a\u00020\tJ\u0006\u0010f\u001a\u00020\tJ\u0006\u0010g\u001a\u00020\tJ\u000e\u0010h\u001a\u00020\t2\u0006\u0010K\u001a\u00020\u001aJ\u0014\u0010k\u001a\u00020\t2\u000c\u0010j\u001a\u0008\u0012\u0004\u0012\u00020\u001a0iJ\u0014\u0010l\u001a\u00020\t2\u000c\u0010j\u001a\u0008\u0012\u0004\u0012\u00020\u001a0iJ\u001a\u0010n\u001a\u0004\u0018\u00010O2\u0006\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010m\u001a\u00020\u0007J\u000e\u0010p\u001a\u00020o2\u0006\u0010\r\u001a\u00020\u0005J\u0014\u0010r\u001a\u0008\u0012\u0004\u0012\u00020q0L2\u0006\u0010\r\u001a\u00020\u0005J\u0010\u0010u\u001a\u00020\t2\u0008\u0010t\u001a\u0004\u0018\u00010sJ\u0006\u0010v\u001a\u00020\u001aR$\u0010.\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008w\u0010x\u001a\u0004\u0008y\u0010z\"\u0004\u0008{\u0010|R&\u0010\u0083\u0001\u001a\u00020}8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0004\u0008\u0017\u0010~\u001a\u0005\u0008\u007f\u0010\u0080\u0001\"\u0006\u0008\u0081\u0001\u0010\u0082\u0001R#\u0010\u0086\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u000f0\u0084\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u000c\u0010\u0085\u0001R\u001d\u0010\u008c\u0001\u001a\u00030\u0087\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0088\u0001\u0010\u0089\u0001\u001a\u0006\u0008\u008a\u0001\u0010\u008b\u0001R)\u0010>\u001a\u0004\u0018\u00010=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\n\u0010\u008d\u0001\u001a\u0006\u0008\u008e\u0001\u0010\u008f\u0001\"\u0006\u0008\u0090\u0001\u0010\u0091\u0001R\u0018\u0010\u0095\u0001\u001a\u00030\u0092\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001\u00a8\u0006\u009a\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/display/RenderManager;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "visibleBoxList",
        "",
        "highQualityFirst",
        "",
        "e",
        "Lio/reactivex/rxjava3/core/Observable;",
        "c",
        "virtualPageBoxInfo",
        "n",
        "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;",
        "pageHandler",
        "visibleList",
        "k",
        "forceUpdate",
        "l",
        "pageNormalBoxInfo",
        "pageHighQualityBoxInfo",
        "b",
        "h",
        "i",
        "",
        "msg",
        "g",
        "j",
        "getPageBorderHandler",
        "getPageNormalHandler",
        "getPageHighQualityHandler",
        "getOtherRenderListHandler",
        "getPageSearchHighlightRenderHandler",
        "",
        "getPageHandlerMap",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "viewSize",
        "Landroid/graphics/RectF;",
        "viewportRect",
        "destroy",
        "clearDisplay",
        "clearShapeFlushInfo",
        "invalidate",
        "Landroid/view/View;",
        "view",
        "Lorg/greenrobot/eventbus/EventBus;",
        "eventBus",
        "updateEditorView",
        "displayScrollingBoxList",
        "boxList",
        "preRenderBoxList",
        "displayBoxListAfterStopScroll",
        "displayBoxListAfterStopScale",
        "displayBoxList",
        "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;",
        "context",
        "displayBoxListAnimation",
        "displayBoxListAfterRefreshFullScreen",
        "isPageRendered",
        "Landroid/graphics/Matrix;",
        "displayMatrix",
        "displayWithMatrix",
        "matrix",
        "displayScalingBoxList",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "key",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;",
        "renderer",
        "addRenderer",
        "removeRenderer",
        "removeRenderSilent",
        "pageId",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;",
        "findPageCacheSliceList",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "findPageNormalSlice",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "draw",
        "Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;",
        "shapeFlushInfo",
        "flushShapeToPage",
        "resetLowLatencyData",
        "lowLatencyFlushToPage",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "virtualBoxInfo",
        "removeVerifyId",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "list",
        "addNoteSearchBeanList",
        "clearNoteSearchBeanList",
        "Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;",
        "getPageRenderNode",
        "isPageHighQualityOutOfDate",
        "resizeCache",
        "safeClearAllNoteSliceCache",
        "safeClearAllSliceCache",
        "cancelAllRenderRequest",
        "safeClearPageNoteSliceCache",
        "",
        "pageIdSet",
        "invalidateSliceByPages",
        "invalidateNotVisiblePagesIf",
        "isHighQuality",
        "getDisplayContentSlice",
        "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;",
        "createNoteRenderArgs",
        "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
        "computeNoteSliceRenderInfoList",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "geoLayout",
        "setBackground",
        "getDisplayDebugString",
        "a",
        "Landroid/view/View;",
        "getView",
        "()Landroid/view/View;",
        "setView",
        "(Landroid/view/View;)V",
        "",
        "F",
        "getScale",
        "()F",
        "setScale",
        "(F)V",
        "scale",
        "",
        "Ljava/util/Map;",
        "renderHandlerMap",
        "Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "d",
        "Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "getDrawBenchmark",
        "()Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "drawBenchmark",
        "Landroid/graphics/Matrix;",
        "getDisplayMatrix",
        "()Landroid/graphics/Matrix;",
        "setDisplayMatrix",
        "(Landroid/graphics/Matrix;)V",
        "Lcom/onyx/android/sdk/base/utils/debug/LogThrottler;",
        "f",
        "Lcom/onyx/android/sdk/base/utils/debug/LogThrottler;",
        "logThrottler",
        "<init>",
        "()V",
        "Companion",
        "Renderer",
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
        "SMAP\nRenderManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderManager.kt\ncom/onyx/android/sdk/universal/editor/display/RenderManager\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,627:1\n526#2:628\n511#2,6:629\n215#3,2:635\n215#3,2:637\n215#3,2:639\n187#3,3:641\n215#3,2:647\n215#3,2:650\n215#3,2:654\n215#3,2:656\n125#3:658\n152#3,3:659\n125#3:665\n152#3,3:666\n125#3:672\n152#3,3:673\n215#3,2:679\n215#3,2:681\n215#3,2:683\n215#3,2:685\n215#3,2:687\n215#3,2:689\n215#3,2:691\n215#3,2:697\n1855#4,2:644\n1855#4:646\n1856#4:649\n1855#4,2:652\n1747#4,3:662\n1747#4,3:669\n1747#4,3:676\n1549#4:693\n1620#4,3:694\n*S KotlinDebug\n*F\n+ 1 RenderManager.kt\ncom/onyx/android/sdk/universal/editor/display/RenderManager\n*L\n78#1:628\n78#1:629,6\n94#1:635,2\n98#1:637,2\n103#1:639,2\n281#1:641,3\n325#1:647,2\n331#1:650,2\n375#1:654,2\n438#1:656,2\n444#1:658\n444#1:659,3\n457#1:665\n457#1:666,3\n469#1:672\n469#1:673,3\n494#1:679,2\n500#1:681,2\n506#1:683,2\n512#1:685,2\n518#1:687,2\n528#1:689,2\n534#1:691,2\n575#1:697,2\n316#1:644,2\n324#1:646\n324#1:649\n338#1:652,2\n445#1:662,3\n458#1:669,3\n470#1:676,3\n559#1:693\n559#1:694,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DRAW_WARNING_TIME_THRESHOLD:I = 0xc

.field public static final OTHER_RENDERER_LIST_HANDLER:Ljava/lang/String; = "other_renderer_list_handler"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAGE_BORDER_HANDLER:Ljava/lang/String; = "page_border_handler"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAGE_HIGH_QUALITY_HANDLER:Ljava/lang/String; = "page_high_quality_handler"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAGE_NORMAL_HANDLER:Ljava/lang/String; = "page_normal_handler"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAGE_SEARCH_HIGHLIGHT_HANDLER:Ljava/lang/String; = "page_search_highlight_handler"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RENDER_KEY_ERASER:Ljava/lang/String; = "render_key_eraser"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RENDER_KEY_LASER:Ljava/lang/String; = "render_key_laser"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RENDER_KEY_RECT_EXCERPT:Ljava/lang/String; = "render_key_rect_excerpt"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RENDER_KEY_SELECTION:Ljava/lang/String; = "render_key_selection"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RENDER_KEY_SHAPE_DRAWING:Ljava/lang/String; = "render_key_shape_drawing"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RENDER_KEY_SHAPE_HIGHLIGHT:Ljava/lang/String; = "render_key_shape_highlight"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RENDER_KEY_TEXT_EXCERPT:Ljava/lang/String; = "render_key_text_excerpt"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RENDER_KEY_TEXT_SELECTION:Ljava/lang/String; = "render_key_text_selection"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RENDER_KEY_TRANSFORM:Ljava/lang/String; = "render_key_transform"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RENDER_KEY_UNIVERSAL:Ljava/lang/String; = "render_key_universal"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:F

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/onyx/android/sdk/base/utils/Benchmark;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/base/utils/debug/LogThrottler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->Companion:Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->b:F

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->c:Ljava/util/Map;

    new-instance v1, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v1}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->d:Lcom/onyx/android/sdk/base/utils/Benchmark;

    new-instance v1, Lcom/onyx/android/sdk/base/utils/debug/LogThrottler;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/base/utils/debug/LogThrottler;-><init>(I)V

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->f:Lcom/onyx/android/sdk/base/utils/debug/LogThrottler;

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/display/PageBorderRenderHandler;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageBorderRenderHandler;-><init>()V

    const-string v1, "page_border_handler"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;-><init>()V

    const-string v1, "page_normal_handler"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;-><init>()V

    const-string v1, "page_high_quality_handler"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler;-><init>()V

    const-string v1, "other_renderer_list_handler"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageSearchHighlightRenderHandler;-><init>()V

    const-string v1, "page_search_highlight_handler"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->d(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;)V

    return-void
.end method

.method public static final synthetic access$createPageBorderDisplayBoxListObservable(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->c(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$logW(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$updateExistsRenderNodeList(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->k(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$updatePageBorderVisible(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->n(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method

.method public static synthetic addRenderer$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->addRenderer(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;Z)V

    return-void
.end method

.method public static final d(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    return-void
.end method

.method public static synthetic displayBoxList$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->displayBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->e(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic getDisplayContentSlice$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->viewportRect()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->isEnabledHighQuality(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Z

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getDisplayContentSlice(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lowLatencyFlushToPage$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->lowLatencyFlushToPage(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->l(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic removeRenderer$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeRenderer(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic resizeCache$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/base/data/Size;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->viewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->resizeCache(Lcom/onyx/android/sdk/base/data/Size;)V

    return-void
.end method


# virtual methods
.method public final addNoteSearchBeanList(Ljava/util/List;)Z
    .locals 3
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

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageSearchHighlightRenderHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->addNoteSearchBeanList(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->visibleBoxList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->toBoxIdSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->Companion:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;->toPageIdSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    :cond_0
    return v0
.end method

.method public final addRenderer(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getOtherRenderListHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->addRenderer(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;)V

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->f:Lcom/onyx/android/sdk/base/utils/debug/LogThrottler;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$collectBoxInfoLogIf$1;

    invoke-direct {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$collectBoxInfoLogIf$1;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p2, v0, p1, p2}, Lcom/onyx/android/sdk/base/utils/debug/LogThrottler;->collectLogIf$default(Lcom/onyx/android/sdk/base/utils/debug/LogThrottler;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportPageBorder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageBorderHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->createDisplayBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$a;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$a;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final cancelAllRenderRequest()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHandlerMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->cancelAllRenderRequest()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final clearDisplay()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->c:Ljava/util/Map;

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

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    invoke-interface {v1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->clearDisplay()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    return-void
.end method

.method public final clearNoteSearchBeanList()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageSearchHighlightRenderHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->clearNoteSearchBeanList()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    :cond_0
    return-void
.end method

.method public final clearShapeFlushInfo()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->clearShapeFlushInfo()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final computeNoteSliceRenderInfoList(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Ljava/util/List;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->findPageCacheSliceList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->copy()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    invoke-direct {v2}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;-><init>()V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->setSafeBitmap(Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->getContentSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->copy()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    new-instance v2, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;

    invoke-direct {v2, v1, v0}, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;-><init>(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final createNoteRenderArgs(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getExcerptShapeAttrOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->getShowIndicator()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->setShowExcerptIndicator(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->computeNoteSliceRenderInfoList(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->setSliceRenderInfoList(Ljava/util/List;)V

    return-object v0
.end method

.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->a:Landroid/view/View;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->destroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final displayBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Z)V
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
            ">;Z)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleBoxList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->l(Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->e(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Z)V

    return-void
.end method

.method public final displayBoxListAfterRefreshFullScreen(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
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
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleBoxList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->l(Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHighQualityHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->createDisplayBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$b;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageNormalHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->createDisplayBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$c;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ekl;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ekl;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageSearchHighlightRenderHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->createDisplayBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final displayBoxListAfterStopScale(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
    .locals 7
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
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleBoxList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->cancelAllRenderRequest()V

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->l(Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->f(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;ZILjava/lang/Object;)V

    return-void
.end method

.method public final displayBoxListAfterStopScroll(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
    .locals 7
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
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleBoxList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->l(Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->f(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;ZILjava/lang/Object;)V

    return-void
.end method

.method public final displayBoxListAnimation(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;)V
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;->getAnimateBoxList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;->getVisibleBoxList()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;->getAnimateBoxList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;->getMoveList()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;->getAddList()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;->getRemoveList()Ljava/util/Set;

    move-result-object v6

    move-object v1, v8

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->editorView(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHighQualityHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v1

    invoke-interface {v1, p2, v8}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->animateBoxChange(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$g;

    invoke-direct {v2, p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$g;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$h;

    invoke-direct {v2, p0, v7}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$h;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$i;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$i;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageNormalHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v1

    invoke-interface {v1, p2, v8}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->animateBoxChange(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$j;

    invoke-direct {v2, p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$j;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$k;

    invoke-direct {v2, p0, v7}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$k;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$l;

    invoke-direct {v2, p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$l;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageBorderHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v1

    invoke-interface {v1, p2, v8}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->animateBoxChange(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$m;

    invoke-direct {v2, p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$m;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$n;

    invoke-direct {v2, p0, v7}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$n;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$o;

    invoke-direct {v2, p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$o;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageSearchHighlightRenderHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v1

    invoke-interface {v1, p2, v8}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->animateBoxChange(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$d;

    invoke-direct {v1, p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$d;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$e;

    invoke-direct {v0, p0, v7}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$e;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$f;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$f;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final displayScalingBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;",
            "Landroid/graphics/Matrix;",
            ")V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleBoxList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matrix"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHighQualityHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->createDisplayScalingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$s;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$s;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageNormalHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->createDisplayScalingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$t;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$t;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportPageBorder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageBorderHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->createDisplayScalingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$u;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$u;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageSearchHighlightRenderHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->createDisplayScalingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$v;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$v;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->displayWithMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final displayScrollingBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
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
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleBoxList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHighQualityHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->createDisplayScrollingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$w;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$w;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageNormalHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->createDisplayScrollingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$x;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$x;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportPageBorder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageBorderHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->createDisplayScrollingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$y;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$y;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageSearchHighlightRenderHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->createDisplayScrollingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$z;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$z;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final displayWithMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "displayMatrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->e:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    return-void
.end method

.method public final draw(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draw"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHandlerMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->draw(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHighQualityHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->createDisplayBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$q;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$q;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnNext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageNormalHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->createDisplayBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$r;

    invoke-direct {v3, p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$r;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->concatWith(Lio/reactivex/rxjava3/core/ObservableSource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    invoke-virtual {p3}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->c(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    invoke-virtual {p3}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageSearchHighlightRenderHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->createDisplayBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance p3, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$p;

    invoke-direct {p3, p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$p;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final findPageCacheSliceList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHighQualityHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->getPageSliceInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageNormalHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->getPageSliceInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final findPageNormalSlice(Ljava/lang/String;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageNormalHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->getPageSliceInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final flushShapeToPage(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapeFlushInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->getShapeReference()Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->ensureShapeUniqueId()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->c:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    invoke-interface {v2, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->flushShapeToPage(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->clearShapeCacheDataIf()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushShapeToPage, shape.id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->shapeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", clearCache = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->g(Ljava/lang/String;)V

    return v2
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final getDisplayContentSlice(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHighQualityHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->getPageSliceInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->getContentSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageNormalHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->getPageSliceInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->getContentSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final getDisplayDebugString()Ljava/lang/String;
    .locals 4
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

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->c:Ljava/util/Map;

    invoke-static {p0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->getDisplayDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->e:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getDrawBenchmark()Lcom/onyx/android/sdk/base/utils/Benchmark;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->d:Lcom/onyx/android/sdk/base/utils/Benchmark;

    return-object p0
.end method

.method public final getOtherRenderListHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->c:Ljava/util/Map;

    const-string v0, "other_renderer_list_handler"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    return-object p0
.end method

.method public final getPageBorderHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->c:Ljava/util/Map;

    const-string v0, "page_border_handler"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    return-object p0
.end method

.method public final getPageHandlerMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->Companion:Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Companion;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Companion;->isPageHandler(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getPageHighQualityHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->c:Ljava/util/Map;

    const-string v0, "page_high_quality_handler"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    return-object p0
.end method

.method public final getPageNormalHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->c:Ljava/util/Map;

    const-string v0, "page_normal_handler"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    return-object p0
.end method

.method public final getPageRenderNode(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageNormalHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->getPageRenderNodeInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getPageSearchHighlightRenderHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->c:Ljava/util/Map;

    const-string v0, "page_search_highlight_handler"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    return-object p0
.end method

.method public final getScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->b:F

    return p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->a:Landroid/view/View;

    return-object p0
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 0

    return-void
.end method

.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    const-string v0, "invalidate"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final invalidateNotVisiblePagesIf(Ljava/util/Collection;)V
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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHandlerMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->invalidateNotVisiblePagesIf(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final invalidateSliceByPages(Ljava/util/Collection;)V
    .locals 2
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

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalidateSliceByPages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHandlerMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->invalidateSliceByPages(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final isPageHighQualityOutOfDate(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHighQualityHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->getPageRenderNodeInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isSliceOutOfDate()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPageRendered(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHandlerMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->isEnabledPageBorder(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->e:Landroid/graphics/Matrix;

    move-object p0, p2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->updateExistsRenderNode(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->toBoxIdSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->evict(Ljava/util/Set;)V

    return-void
.end method

.method public final l(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->e:Landroid/graphics/Matrix;

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHandlerMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    invoke-interface {v3, v1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->updateExistsRenderNode(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->toBoxIdSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHandlerMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    invoke-interface {p2, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->evict(Ljava/util/Set;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final lowLatencyFlushToPage(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Z)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapeFlushInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->getShapeReference()Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->ensureShapeUniqueId()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    invoke-interface {v1, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->lowLatencyFlushToPage(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->getShapeReference()Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->resetLowLatencyData()V

    :cond_4
    return v1
.end method

.method public final n(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportPageBorder()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->isPageRendered(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageBorderHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->setPageVisible(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->i()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->d:Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->restart()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->e:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHandlerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    invoke-interface {v2, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getOtherRenderListHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->h()V

    :cond_1
    return-void
.end method

.method public final preRenderBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
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
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boxList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preRenderBoxList, size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->g(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageNormalHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->createPreRenderBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final removeRenderSilent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeRenderer(Ljava/lang/String;Z)V

    return-void
.end method

.method public final removeRenderer(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getOtherRenderListHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->removeRenderer(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    :cond_0
    return-void
.end method

.method public final removeVerifyId(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 2
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

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    invoke-interface {v1, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->removeVerifyId(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    :cond_3
    :goto_1
    return p1
.end method

.method public final resizeCache(Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHandlerMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/Size;->copy$default(Lcom/onyx/android/sdk/base/data/Size;IIILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->resizeCache(Lcom/onyx/android/sdk/base/data/Size;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final safeClearAllNoteSliceCache()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHandlerMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->safeClearAllNoteSliceCache()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final safeClearAllSliceCache()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHandlerMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->safeClearAllSliceCache()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final safeClearPageNoteSliceCache(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHandlerMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->safeClearPageNoteSliceCache(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setBackground(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageNormalHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->setBackground(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

    return-void
.end method

.method public final setDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->e:Landroid/graphics/Matrix;

    return-void
.end method

.method public final setScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->b:F

    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->a:Landroid/view/View;

    return-void
.end method

.method public final updateEditorView(Landroid/view/View;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "eventBus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/onyx/android/sdk/universal/editor/display/EditorView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/display/EditorView;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->setRenderManager(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->setEventBus(Lorg/greenrobot/eventbus/EventBus;)V

    :cond_0
    return-void
.end method

.method public final viewSize()Lcom/onyx/android/sdk/base/data/Size;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getDEFAULT_SIZE()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->a:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    :cond_0
    return-object v0
.end method

.method public final viewportRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->viewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final visibleBoxList()Ljava/util/List;
    .locals 4
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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageNormalHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->displayBoxList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$visibleBoxList$idBoxMap$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/display/RenderManager$visibleBoxList$idBoxMap$1;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageHighQualityHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->displayBoxList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, v3, v2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->b(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->f:Lcom/onyx/android/sdk/base/utils/debug/LogThrottler;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$visibleBoxList$2;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$visibleBoxList$2;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;)V

    const/4 p0, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, p0, v3}, Lcom/onyx/android/sdk/base/utils/debug/LogThrottler;->printLogIf$default(Lcom/onyx/android/sdk/base/utils/debug/LogThrottler;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
