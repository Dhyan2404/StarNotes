.class public final Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenderContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderContext.kt\ncom/onyx/android/sdk/note/common/data/render/RenderContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,555:1\n1#2:556\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c4\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008.\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0018\u0000 \u00c5\u00012\u00020\u0001:\u0002\u00c5\u0001B\u000b\u0008\u0016\u00a2\u0006\u0006\u0008\u00bf\u0001\u0010\u00c0\u0001B\u001c\u0008\u0016\u0012\u0007\u0010\u0090\u0001\u001a\u00020\u0016\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u00a2\u0006\u0006\u0008\u00bf\u0001\u0010\u00c1\u0001B%\u0008\u0016\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0006\u0008\u00bf\u0001\u0010\u00c2\u0001B/\u0008\u0016\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0006\u0008\u00bf\u0001\u0010\u00c3\u0001B7\u0008\u0016\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0008\u00a2\u0006\u0006\u0008\u00bf\u0001\u0010\u00c4\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u001c\u0010\n\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002J\u0006\u0010\u000c\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fJ2\u0010\u0019\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0008J\"\u0010\u0019\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0002J\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0014J\u0010\u0010\u001e\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 J\u0006\u0010#\u001a\u00020 J\u0006\u0010%\u001a\u00020$J\u0006\u0010&\u001a\u00020\u0014J\u000e\u0010)\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\'J\u000e\u0010*\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\'J\u0006\u0010+\u001a\u00020\u0004J\u0006\u0010,\u001a\u00020\u0004J\u0006\u0010-\u001a\u00020\u0004J\u0006\u0010.\u001a\u00020\u0004J\u0006\u0010/\u001a\u00020\u0004J\u0010\u0010/\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J\u0008\u00100\u001a\u00020\u0004H\u0007J\u0006\u00102\u001a\u000201J\u0010\u00105\u001a\u00020\u00042\u0008\u00104\u001a\u0004\u0018\u000103J\u000e\u00107\u001a\u00020\u00002\u0006\u00106\u001a\u00020\u0011J\u000e\u00109\u001a\u00020\u00002\u0006\u00108\u001a\u00020\u0011J\u000e\u0010;\u001a\u00020\u00002\u0006\u0010:\u001a\u00020\u0011J\u0006\u0010<\u001a\u00020$J\u000e\u0010>\u001a\u00020$2\u0006\u0010=\u001a\u00020\u0011J\u0006\u0010?\u001a\u00020$J\u0006\u0010@\u001a\u00020\u0011J\u0006\u0010A\u001a\u00020\u0011J\u0006\u0010B\u001a\u00020\u0011J\u0006\u0010C\u001a\u00020$J\u0006\u0010E\u001a\u00020DJ\u0006\u0010F\u001a\u00020DJ\u0010\u0010H\u001a\u00020\u00042\u0008\u0010G\u001a\u0004\u0018\u00010\u0008J\u0006\u0010I\u001a\u00020\u0008J\u0006\u0010J\u001a\u00020\'J\u0010\u0010L\u001a\u00020\u00042\u0008\u0010K\u001a\u0004\u0018\u00010\u0008J\u0006\u0010M\u001a\u00020 J\u000e\u0010O\u001a\u00020\u00002\u0006\u0010N\u001a\u00020 J\u0006\u0010P\u001a\u00020 J\u000e\u0010R\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020 J\u000e\u0010T\u001a\u00020\u00042\u0006\u0010S\u001a\u00020\u0008J\u0006\u0010U\u001a\u00020\u0004J\u000e\u0010W\u001a\u00020\u00042\u0006\u0010V\u001a\u00020\u0008J\u0006\u0010X\u001a\u00020\u0008J\u000e\u0010Z\u001a\u00020\u00112\u0006\u0010Y\u001a\u00020\u0011J\u000e\u0010[\u001a\u00020\u00112\u0006\u0010Y\u001a\u00020\u0011J\u0010\u0010^\u001a\u00020\u00042\u0008\u0010]\u001a\u0004\u0018\u00010\\J\u000e\u0010a\u001a\u00020\u00042\u0006\u0010`\u001a\u00020_J\u0010\u0010d\u001a\u00020\u00042\u0008\u0010c\u001a\u0004\u0018\u00010bJ\u0014\u0010h\u001a\u00020\u00042\u000c\u0010g\u001a\u0008\u0012\u0004\u0012\u00020f0eJ\u0006\u0010i\u001a\u00020\u0004J\u0006\u0010j\u001a\u00020\u0011J\u000e\u0010l\u001a\u00020$2\u0006\u0010k\u001a\u00020 J\u0010\u0010o\u001a\u00020\u00042\u0008\u0010n\u001a\u0004\u0018\u00010mJ\u0008\u0010p\u001a\u0004\u0018\u00010mJ\u0006\u0010q\u001a\u00020\u0002J\u0006\u0010s\u001a\u00020rJ\u0008\u0010t\u001a\u0004\u0018\u00010\\J\u0006\u0010u\u001a\u00020\u0008J\u000e\u0010w\u001a\u00020\u00002\u0006\u0010v\u001a\u00020$J\u0006\u0010x\u001a\u00020$J\u000e\u0010z\u001a\u00020 2\u0006\u0010y\u001a\u00020 J\u0006\u0010{\u001a\u00020\u0002J\u0016\u0010~\u001a\u00020\u00042\u0006\u0010|\u001a\u00020\u00112\u0006\u0010}\u001a\u00020\u0011J*\u0010\u0083\u0001\u001a\u00020\u00042\u0006\u0010\u007f\u001a\u00020\u00112\u0007\u0010\u0080\u0001\u001a\u00020\u00112\u0007\u0010\u0081\u0001\u001a\u00020\u00112\u0007\u0010\u0082\u0001\u001a\u00020\u0011J\u0010\u0010\u0085\u0001\u001a\u00020\u00042\u0007\u0010\u0084\u0001\u001a\u00020$J\u0007\u0010\u0086\u0001\u001a\u00020$J\u0007\u0010\u0087\u0001\u001a\u00020 J\u0007\u0010\u0088\u0001\u001a\u00020$R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\n\u0010\u0089\u0001R\u0019\u0010\u001d\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0005\u0010\u008a\u0001R(\u0010\u0090\u0001\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0015\u0010\u008b\u0001\u001a\u0006\u0008\u008c\u0001\u0010\u008d\u0001\"\u0006\u0008\u008e\u0001\u0010\u008f\u0001R\u0018\u0010V\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001R\u0017\u0010\u0095\u0001\u001a\u00020D8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001R\u0018\u0010N\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\u0018\u0010Q\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0098\u0001\u0010\u0097\u0001R\u001a\u0010n\u001a\u0004\u0018\u00010m8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0099\u0001\u0010\u009a\u0001R\u0018\u0010!\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009b\u0001\u0010\u0097\u0001R\u001a\u00104\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0001\u0010\u009d\u0001R\u0019\u0010\u00a0\u0001\u001a\u00020r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u009f\u0001R\u001a\u0010\u00a4\u0001\u001a\u00030\u00a1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001R\u0018\u0010\u00a5\u0001\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0003\u0010\u0097\u0001R\u001b\u0010\u00a8\u0001\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R,\u0010\u00b0\u0001\u001a\u0005\u0018\u00010\u00a9\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001\u001a\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001\"\u0006\u0008\u00ae\u0001\u0010\u00af\u0001R+\u0010\u00b7\u0001\u001a\u0005\u0018\u00010\u00b1\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0017\u0010\u00b2\u0001\u001a\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001\"\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001R)\u0010\u00be\u0001\u001a\u00020$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001\u001a\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001\"\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001\u00a8\u0006\u00c6\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "",
        "Landroid/graphics/Matrix;",
        "m",
        "",
        "b",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "Landroid/graphics/RectF;",
        "clearRect",
        "a",
        "Landroid/content/Context;",
        "getAppContext",
        "Lcom/onyx/android/sdk/note/common/data/text/TextRender;",
        "getTextRender",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "",
        "getStrokeWidthDisplayScale",
        "getDisplayScaleAndShapeScale",
        "Landroid/graphics/Canvas;",
        "c",
        "Landroid/graphics/Paint;",
        "p",
        "r",
        "update",
        "matrix",
        "setMatrix",
        "updateCanvas",
        "canvas",
        "setBitmap",
        "getBitmap",
        "",
        "renderType",
        "setRenderType",
        "getRenderType",
        "",
        "isFillRenderType",
        "getCanvas",
        "Landroid/graphics/Rect;",
        "rect",
        "createBitmap",
        "updateRect",
        "recycleBitmap",
        "clearSelectionRect",
        "reset",
        "eraseBitmap",
        "clearContent",
        "recycleTextRender",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "getTextRenderObserveOn",
        "Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;",
        "lineLayoutArgs",
        "setLineLayoutArgs",
        "viewPortScale",
        "setViewPortScale",
        "scaling",
        "setViewPortScaling",
        "scale",
        "setRenderScale",
        "isDither",
        "strokeWidth",
        "isAntiAlias",
        "isUseLineStyle",
        "getViewPortScale",
        "getScale",
        "getViewPortScaling",
        "isViewScaling",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;",
        "getRenderMeasure",
        "copyRenderMeasure",
        "viewPortRect",
        "setViewPortRect",
        "getViewPortRect",
        "getContentRect",
        "zoomRect",
        "setZoomRect",
        "getRenderColorConfig",
        "renderColorConfig",
        "setRenderColorConfig",
        "getSpecifiedRenderColor",
        "specifiedRenderColor",
        "setSpecifiedRenderColor",
        "unionRectF",
        "unionClipRect",
        "resetClipRect",
        "clipRect",
        "setClipRect",
        "getClipRect",
        "value",
        "getMatrixInvertValue",
        "getMatrixNormalValue",
        "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;",
        "selectionRect",
        "setSelectionRect",
        "Landroid/graphics/Path;",
        "selectionPath",
        "setSelectionPath",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "selectionTrackPoints",
        "addSelectionTrackPoints",
        "",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "selectionTouchDataList",
        "addSelectionPagePoints",
        "clearSelectionPath",
        "getNormalizeScale",
        "layerId",
        "isLayerVisibleById",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "pageInfo",
        "updatePageInfo",
        "getPageInfo",
        "getNormalizeMatrix",
        "Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;",
        "getSelectionArgs",
        "getSelectionRect",
        "createRenderRect",
        "exportModel",
        "setExportModel",
        "hasValidBitmap",
        "rawColor",
        "getRenderColor",
        "getMatrix",
        "dx",
        "dy",
        "postTranslate",
        "sx",
        "sy",
        "px",
        "py",
        "postScale",
        "abort",
        "setAbortRender",
        "isAbortRender",
        "getLinePaintColor",
        "isDarkBackground",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Canvas;",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "setPaint",
        "(Landroid/graphics/Paint;)V",
        "paint",
        "d",
        "Landroid/graphics/RectF;",
        "e",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;",
        "renderMeasure",
        "f",
        "I",
        "g",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "i",
        "j",
        "Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;",
        "k",
        "Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;",
        "selectionArgs",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "l",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "abortRender",
        "linePaintColor",
        "n",
        "Lcom/onyx/android/sdk/note/common/data/text/TextRender;",
        "textRender",
        "Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;",
        "o",
        "Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;",
        "getLowLatencyRenderData",
        "()Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;",
        "setLowLatencyRenderData",
        "(Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;)V",
        "lowLatencyRenderData",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;",
        "getShapeShaderManager",
        "()Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;",
        "setShapeShaderManager",
        "(Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;)V",
        "shapeShaderManager",
        "q",
        "Z",
        "getShowExcerptIndicator",
        "()Z",
        "setShowExcerptIndicator",
        "(Z)V",
        "showExcerptIndicator",
        "<init>",
        "()V",
        "(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V",
        "(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;)V",
        "(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;)V",
        "(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V",
        "Companion",
        "sdk-note_overseasRelease"
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
        "SMAP\nRenderContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderContext.kt\ncom/onyx/android/sdk/note/common/data/render/RenderContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,555:1\n1#2:556\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static r:Z


# instance fields
.field public a:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Landroid/graphics/Canvas;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:I

.field public j:Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:I

.field public n:Lcom/onyx/android/sdk/note/common/data/text/TextRender;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->Companion:Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->c:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->d:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/note/common/data/render/RenderColorConfig;->INSTANCE:Lcom/onyx/android/sdk/note/common/data/render/RenderColorConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderColorConfig;->getDefaultColorConfig()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->f:I

    const/high16 v0, -0x1000000

    .line 6
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->g:I

    .line 7
    new-instance v1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->k:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->m:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->q:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "m"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->c:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->d:Landroid/graphics/RectF;

    .line 39
    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    .line 40
    sget-object v0, Lcom/onyx/android/sdk/note/common/data/render/RenderColorConfig;->INSTANCE:Lcom/onyx/android/sdk/note/common/data/render/RenderColorConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderColorConfig;->getDefaultColorConfig()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->f:I

    const/high16 v0, -0x1000000

    .line 41
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->g:I

    .line 42
    new-instance v1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->k:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    .line 43
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->m:I

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->q:Z

    .line 46
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    .line 47
    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->b:Landroid/graphics/Canvas;

    .line 48
    iput-object p3, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->c:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "m"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->c:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->d:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    .line 54
    sget-object v0, Lcom/onyx/android/sdk/note/common/data/render/RenderColorConfig;->INSTANCE:Lcom/onyx/android/sdk/note/common/data/render/RenderColorConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderColorConfig;->getDefaultColorConfig()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->f:I

    const/high16 v0, -0x1000000

    .line 55
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->g:I

    .line 56
    new-instance v1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->k:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    .line 57
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->m:I

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->q:Z

    .line 60
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    .line 61
    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->b:Landroid/graphics/Canvas;

    .line 62
    iput-object p3, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->c:Landroid/graphics/Paint;

    .line 63
    iput-object p5, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->d:Landroid/graphics/RectF;

    .line 64
    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "m"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->c:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->d:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    .line 27
    sget-object v0, Lcom/onyx/android/sdk/note/common/data/render/RenderColorConfig;->INSTANCE:Lcom/onyx/android/sdk/note/common/data/render/RenderColorConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderColorConfig;->getDefaultColorConfig()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->f:I

    const/high16 v0, -0x1000000

    .line 28
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->g:I

    .line 29
    new-instance v1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->k:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    .line 30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->m:I

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->q:Z

    .line 33
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->b:Landroid/graphics/Canvas;

    .line 34
    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->c:Landroid/graphics/Paint;

    .line 35
    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V
    .locals 3
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->c:Landroid/graphics/Paint;

    .line 13
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->d:Landroid/graphics/RectF;

    .line 14
    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    .line 15
    sget-object v0, Lcom/onyx/android/sdk/note/common/data/render/RenderColorConfig;->INSTANCE:Lcom/onyx/android/sdk/note/common/data/render/RenderColorConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderColorConfig;->getDefaultColorConfig()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->f:I

    const/high16 v0, -0x1000000

    .line 16
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->g:I

    .line 17
    new-instance v1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->k:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    .line 18
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->m:I

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->q:Z

    .line 21
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->c:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static final synthetic access$getNormalized$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->r:Z

    return v0
.end method

.method public static final synthetic access$setNormalized$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->r:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final addSelectionPagePoints(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectionTouchDataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->k:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->addSelectionPagePoints(Ljava/util/List;)V

    return-void
.end method

.method public final addSelectionTrackPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->k:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->addSelectionPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    return-void
.end method

.method public final b(Landroid/graphics/Matrix;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->updateDisplayScale(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final clearContent()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->createRenderRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->clearContent(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final clearContent(Landroid/graphics/RectF;)V
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final clearSelectionPath()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->k:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->clearSelectionPath()V

    return-void
.end method

.method public final clearSelectionRect()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->k:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    return-void
.end method

.method public final copyRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->clone()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object p0

    return-object p0
.end method

.method public final createBitmap(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->eraseBitmap()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updateRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final createRenderRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final eraseBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_1
    return-void
.end method

.method public final getAppContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getCanvas()Landroid/graphics/Canvas;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->b:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updateCanvas()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->b:Landroid/graphics/Canvas;

    const-string v0, "null cannot be cast to non-null type android.graphics.Canvas"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getClipRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->d:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getContentRect()Landroid/graphics/Rect;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final getDisplayScaleAndShapeScale(Lcom/onyx/android/sdk/note/common/shape/Shape;)F
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result p0

    return p0
.end method

.method public final getLinePaintColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->m:I

    return p0
.end method

.method public final getLowLatencyRenderData()Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->o:Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;

    return-object p0
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public final getMatrixInvertValue(F)F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getNormalizeSize(F)F

    move-result p0

    return p0
.end method

.method public final getMatrixNormalValue(F)F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getMatrixNormalValue(F)F

    move-result p0

    return p0
.end method

.method public final getNormalizeMatrix()Landroid/graphics/Matrix;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getNormalizeScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getNormalizeScale()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->setScale(FF)V

    return-object v0
.end method

.method public final getNormalizeScale()F
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->r:Z

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getStrokeWidthDisplayScale()F

    move-result p0

    div-float p0, v0, p0

    :goto_0
    return p0
.end method

.method public final getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->h:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    return-object p0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->c:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getRenderColor(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderColorConfig()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSpecifiedRenderColor()I

    move-result p1

    :goto_0
    return p1
.end method

.method public final getRenderColorConfig()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->f:I

    return p0
.end method

.method public final getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    return-object p0
.end method

.method public final getRenderType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->i:I

    return p0
.end method

.method public final getScale()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getScale()F

    move-result p0

    return p0
.end method

.method public final getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->k:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    return-object p0
.end method

.method public final getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->k:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object p0

    return-object p0
.end method

.method public final getShapeShaderManager()Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->p:Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    return-object p0
.end method

.method public final getShowExcerptIndicator()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->q:Z

    return p0
.end method

.method public final getSpecifiedRenderColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->g:I

    return p0
.end method

.method public final getStrokeWidthDisplayScale(Lcom/onyx/android/sdk/note/common/shape/Shape;)F
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getDisplayScaleAndShapeScale(Lcom/onyx/android/sdk/note/common/shape/Shape;)F

    move-result p0

    return p0
.end method

.method public final getTextRender()Lcom/onyx/android/sdk/note/common/data/text/TextRender;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->n:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->n:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->n:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getTextRenderObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->n:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->newSingleThreadManager()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getTextRender()Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->getIOScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getViewPortRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final getViewPortScale()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortScale()F

    move-result p0

    return p0
.end method

.method public final getViewPortScaling()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortScaling()F

    move-result p0

    return p0
.end method

.method public final hasValidBitmap()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->isValid(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public final isAbortRender()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final isAntiAlias(F)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->isFillRenderType()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->getMIN_STROKE_WIDTH_FOR_ENABLE_ANTI_ALIAS()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isDarkBackground()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->m:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDither()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->isFillRenderType()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isFillRenderType()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLayerVisibleById(I)Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->h:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->isLayerVisibleById(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isUseLineStyle()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->isFillRenderType()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isViewScaling()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->isViewScaling()Z

    move-result p0

    return p0
.end method

.method public final postScale(FFFF)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-void
.end method

.method public final postTranslate(FF)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public final recycleBitmap()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->recycle(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final recycleTextRender()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->n:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->n:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->n:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    return-void
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->b:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->j:Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->reset()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->recycleBitmap()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->clearSelectionRect()V

    return-void
.end method

.method public final resetClipRect()V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->d:Landroid/graphics/RectF;

    return-void
.end method

.method public final setAbortRender(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setClipRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "clipRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->d:Landroid/graphics/RectF;

    return-void
.end method

.method public final setExportModel(Z)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public final setLineLayoutArgs(Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->j:Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;

    return-void
.end method

.method public final setLowLatencyRenderData(Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->o:Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;

    return-void
.end method

.method public final setMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "matrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->b(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    return-void
.end method

.method public final setPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->c:Landroid/graphics/Paint;

    return-void
.end method

.method public final setRenderColorConfig(I)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->f:I

    return-object p0
.end method

.method public final setRenderScale(F)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setRenderScale(F)V

    return-object p0
.end method

.method public final setRenderType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->i:I

    return-void
.end method

.method public final setSelectionPath(Landroid/graphics/Path;)V
    .locals 1
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "selectionPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->k:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->setSelectionPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public final setSelectionRect(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->k:Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->setSelectionRect(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V

    return-void
.end method

.method public final setShapeShaderManager(Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->p:Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    return-void
.end method

.method public final setShowExcerptIndicator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->q:Z

    return-void
.end method

.method public final setSpecifiedRenderColor(I)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->g:I

    return-object p0
.end method

.method public final setViewPortRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setViewPortRect(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public final setViewPortScale(F)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setViewPortScale(F)V

    return-object p0
.end method

.method public final setViewPortScaling(F)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setViewPortScaling(F)V

    return-object p0
.end method

.method public final setZoomRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setZoomRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final unionClipRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "unionRectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->d:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->d:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :goto_0
    return-void
.end method

.method public final update(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    .line 7
    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->b:Landroid/graphics/Canvas;

    .line 8
    iput-object p3, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->c:Landroid/graphics/Paint;

    return-void
.end method

.method public final update(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "m"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->a:Landroid/graphics/Bitmap;

    .line 2
    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->b:Landroid/graphics/Canvas;

    .line 3
    iput-object p3, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->c:Landroid/graphics/Paint;

    .line 4
    iput-object p5, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->d:Landroid/graphics/RectF;

    .line 5
    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final updateCanvas()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updateCanvas(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final updateCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->b:Landroid/graphics/Canvas;

    return-void
.end method

.method public final updatePageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->h:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setPageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    return-void
.end method

.method public final updateRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setViewPortRect(Landroid/graphics/RectF;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setZoomRect(Landroid/graphics/RectF;)V

    return-void
.end method
