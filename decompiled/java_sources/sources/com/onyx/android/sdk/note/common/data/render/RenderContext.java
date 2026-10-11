package com.onyx.android.sdk.note.common.data.render;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.MainThread;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.common.data.line.LineLayoutArgs;
import com.onyx.android.sdk.note.common.data.selection.SelectionArgs;
import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import com.onyx.android.sdk.note.common.data.shape.ShapeShaderManager;
import com.onyx.android.sdk.note.common.data.text.TextRender;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.NotePageInfoUtils;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import io.reactivex.rxjava3.core.Scheduler;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.math.NumberUtils;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Ä\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b.\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0015\u0018\u0000 Å\u00012\u00020\u0001:\u0002Å\u0001B\u000b\b\u0016¢\u0006\u0006\b¿\u0001\u0010À\u0001B\u001c\b\u0016\u0012\u0007\u0010\u0090\u0001\u001a\u00020\u0016\u0012\u0006\u0010\u001a\u001a\u00020\u0002¢\u0006\u0006\b¿\u0001\u0010Á\u0001B%\b\u0016\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0006\b¿\u0001\u0010Â\u0001B/\b\u0016\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0006\b¿\u0001\u0010Ã\u0001B7\b\u0016\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\b¢\u0006\u0006\b¿\u0001\u0010Ä\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u001c\u0010\n\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002J\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fJ2\u0010\u0019\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\bJ\"\u0010\u0019\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0002J\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0014J\u0010\u0010\u001e\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\b\u0010\u001f\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 J\u0006\u0010#\u001a\u00020 J\u0006\u0010%\u001a\u00020$J\u0006\u0010&\u001a\u00020\u0014J\u000e\u0010)\u001a\u00020\u00042\u0006\u0010(\u001a\u00020'J\u000e\u0010*\u001a\u00020\u00042\u0006\u0010(\u001a\u00020'J\u0006\u0010+\u001a\u00020\u0004J\u0006\u0010,\u001a\u00020\u0004J\u0006\u0010-\u001a\u00020\u0004J\u0006\u0010.\u001a\u00020\u0004J\u0006\u0010/\u001a\u00020\u0004J\u0010\u0010/\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\bJ\b\u00100\u001a\u00020\u0004H\u0007J\u0006\u00102\u001a\u000201J\u0010\u00105\u001a\u00020\u00042\b\u00104\u001a\u0004\u0018\u000103J\u000e\u00107\u001a\u00020\u00002\u0006\u00106\u001a\u00020\u0011J\u000e\u00109\u001a\u00020\u00002\u0006\u00108\u001a\u00020\u0011J\u000e\u0010;\u001a\u00020\u00002\u0006\u0010:\u001a\u00020\u0011J\u0006\u0010<\u001a\u00020$J\u000e\u0010>\u001a\u00020$2\u0006\u0010=\u001a\u00020\u0011J\u0006\u0010?\u001a\u00020$J\u0006\u0010@\u001a\u00020\u0011J\u0006\u0010A\u001a\u00020\u0011J\u0006\u0010B\u001a\u00020\u0011J\u0006\u0010C\u001a\u00020$J\u0006\u0010E\u001a\u00020DJ\u0006\u0010F\u001a\u00020DJ\u0010\u0010H\u001a\u00020\u00042\b\u0010G\u001a\u0004\u0018\u00010\bJ\u0006\u0010I\u001a\u00020\bJ\u0006\u0010J\u001a\u00020'J\u0010\u0010L\u001a\u00020\u00042\b\u0010K\u001a\u0004\u0018\u00010\bJ\u0006\u0010M\u001a\u00020 J\u000e\u0010O\u001a\u00020\u00002\u0006\u0010N\u001a\u00020 J\u0006\u0010P\u001a\u00020 J\u000e\u0010R\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020 J\u000e\u0010T\u001a\u00020\u00042\u0006\u0010S\u001a\u00020\bJ\u0006\u0010U\u001a\u00020\u0004J\u000e\u0010W\u001a\u00020\u00042\u0006\u0010V\u001a\u00020\bJ\u0006\u0010X\u001a\u00020\bJ\u000e\u0010Z\u001a\u00020\u00112\u0006\u0010Y\u001a\u00020\u0011J\u000e\u0010[\u001a\u00020\u00112\u0006\u0010Y\u001a\u00020\u0011J\u0010\u0010^\u001a\u00020\u00042\b\u0010]\u001a\u0004\u0018\u00010\\J\u000e\u0010a\u001a\u00020\u00042\u0006\u0010`\u001a\u00020_J\u0010\u0010d\u001a\u00020\u00042\b\u0010c\u001a\u0004\u0018\u00010bJ\u0014\u0010h\u001a\u00020\u00042\f\u0010g\u001a\b\u0012\u0004\u0012\u00020f0eJ\u0006\u0010i\u001a\u00020\u0004J\u0006\u0010j\u001a\u00020\u0011J\u000e\u0010l\u001a\u00020$2\u0006\u0010k\u001a\u00020 J\u0010\u0010o\u001a\u00020\u00042\b\u0010n\u001a\u0004\u0018\u00010mJ\b\u0010p\u001a\u0004\u0018\u00010mJ\u0006\u0010q\u001a\u00020\u0002J\u0006\u0010s\u001a\u00020rJ\b\u0010t\u001a\u0004\u0018\u00010\\J\u0006\u0010u\u001a\u00020\bJ\u000e\u0010w\u001a\u00020\u00002\u0006\u0010v\u001a\u00020$J\u0006\u0010x\u001a\u00020$J\u000e\u0010z\u001a\u00020 2\u0006\u0010y\u001a\u00020 J\u0006\u0010{\u001a\u00020\u0002J\u0016\u0010~\u001a\u00020\u00042\u0006\u0010|\u001a\u00020\u00112\u0006\u0010}\u001a\u00020\u0011J*\u0010\u0083\u0001\u001a\u00020\u00042\u0006\u0010\u007f\u001a\u00020\u00112\u0007\u0010\u0080\u0001\u001a\u00020\u00112\u0007\u0010\u0081\u0001\u001a\u00020\u00112\u0007\u0010\u0082\u0001\u001a\u00020\u0011J\u0010\u0010\u0085\u0001\u001a\u00020\u00042\u0007\u0010\u0084\u0001\u001a\u00020$J\u0007\u0010\u0086\u0001\u001a\u00020$J\u0007\u0010\u0087\u0001\u001a\u00020 J\u0007\u0010\u0088\u0001\u001a\u00020$R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\n\u0010\u0089\u0001R\u0019\u0010\u001d\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0005\u0010\u008a\u0001R(\u0010\u0090\u0001\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0015\u0010\u008b\u0001\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001\"\u0006\b\u008e\u0001\u0010\u008f\u0001R\u0018\u0010V\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001R\u0017\u0010\u0095\u0001\u001a\u00020D8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R\u0018\u0010N\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0097\u0001R\u0018\u0010Q\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0097\u0001R\u001a\u0010n\u001a\u0004\u0018\u00010m8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u009a\u0001R\u0018\u0010!\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u0097\u0001R\u001a\u00104\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001R\u0019\u0010 \u0001\u001a\u00020r8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009f\u0001R\u001a\u0010¤\u0001\u001a\u00030¡\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0001\u0010£\u0001R\u0018\u0010¥\u0001\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0003\u0010\u0097\u0001R\u001b\u0010¨\u0001\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0001\u0010§\u0001R,\u0010°\u0001\u001a\u0005\u0018\u00010©\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bª\u0001\u0010«\u0001\u001a\u0006\b¬\u0001\u0010\u00ad\u0001\"\u0006\b®\u0001\u0010¯\u0001R+\u0010·\u0001\u001a\u0005\u0018\u00010±\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0017\u0010²\u0001\u001a\u0006\b³\u0001\u0010´\u0001\"\u0006\bµ\u0001\u0010¶\u0001R)\u0010¾\u0001\u001a\u00020$8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¸\u0001\u0010¹\u0001\u001a\u0006\bº\u0001\u0010»\u0001\"\u0006\b¼\u0001\u0010½\u0001¨\u0006Æ\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "", "Landroid/graphics/Matrix;", "m", "", "b", "Landroid/graphics/Bitmap;", "bitmap", "Landroid/graphics/RectF;", "clearRect", "a", "Landroid/content/Context;", "getAppContext", "Lcom/onyx/android/sdk/note/common/data/text/TextRender;", "getTextRender", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "getStrokeWidthDisplayScale", "getDisplayScaleAndShapeScale", "Landroid/graphics/Canvas;", "c", "Landroid/graphics/Paint;", "p", "r", "update", "matrix", "setMatrix", "updateCanvas", IStyleSheet.CLASS_CANVAS, "setBitmap", "getBitmap", "", "renderType", "setRenderType", "getRenderType", "", "isFillRenderType", "getCanvas", "Landroid/graphics/Rect;", "rect", "createBitmap", "updateRect", "recycleBitmap", "clearSelectionRect", Constants.RESET, "eraseBitmap", "clearContent", "recycleTextRender", "Lio/reactivex/rxjava3/core/Scheduler;", "getTextRenderObserveOn", "Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;", "lineLayoutArgs", "setLineLayoutArgs", "viewPortScale", "setViewPortScale", "scaling", "setViewPortScaling", "scale", "setRenderScale", "isDither", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "isAntiAlias", "isUseLineStyle", "getViewPortScale", "getScale", "getViewPortScaling", "isViewScaling", "Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;", "getRenderMeasure", "copyRenderMeasure", "viewPortRect", "setViewPortRect", "getViewPortRect", "getContentRect", "zoomRect", "setZoomRect", "getRenderColorConfig", "renderColorConfig", "setRenderColorConfig", "getSpecifiedRenderColor", "specifiedRenderColor", "setSpecifiedRenderColor", "unionRectF", "unionClipRect", "resetClipRect", "clipRect", "setClipRect", "getClipRect", "value", "getMatrixInvertValue", "getMatrixNormalValue", "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;", "selectionRect", "setSelectionRect", "Landroid/graphics/Path;", "selectionPath", "setSelectionPath", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "selectionTrackPoints", "addSelectionTrackPoints", "", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "selectionTouchDataList", "addSelectionPagePoints", "clearSelectionPath", "getNormalizeScale", "layerId", "isLayerVisibleById", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "pageInfo", "updatePageInfo", "getPageInfo", "getNormalizeMatrix", "Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;", "getSelectionArgs", "getSelectionRect", "createRenderRect", "exportModel", "setExportModel", "hasValidBitmap", "rawColor", "getRenderColor", "getMatrix", "dx", "dy", "postTranslate", "sx", "sy", ExtUnits.UNIT_PX, "py", "postScale", "abort", "setAbortRender", "isAbortRender", "getLinePaintColor", "isDarkBackground", "Landroid/graphics/Bitmap;", "Landroid/graphics/Canvas;", "Landroid/graphics/Paint;", "getPaint", "()Landroid/graphics/Paint;", "setPaint", "(Landroid/graphics/Paint;)V", "paint", "d", "Landroid/graphics/RectF;", "e", "Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;", "renderMeasure", C6997f.f39671c, "I", C6998g.f39679a, C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "i", "j", "Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;", C4921e.f26537n, "Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;", "selectionArgs", "Ljava/util/concurrent/atomic/AtomicBoolean;", "l", "Ljava/util/concurrent/atomic/AtomicBoolean;", "abortRender", "linePaintColor", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/data/text/TextRender;", "textRender", "Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;", C4921e.f26528e, "Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;", "getLowLatencyRenderData", "()Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;", "setLowLatencyRenderData", "(Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;)V", "lowLatencyRenderData", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;", "getShapeShaderManager", "()Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;", "setShapeShaderManager", "(Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;)V", "shapeShaderManager", "q", Constants.HASIDCALL_INDEX_SIG, "getShowExcerptIndicator", Constants.BOOLEAN_VALUE_SIG, "setShowExcerptIndicator", "(Z)V", "showExcerptIndicator", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V", "(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;)V", "(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;)V", "(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRenderContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderContext.kt\ncom/onyx/android/sdk/note/common/data/render/RenderContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,555:1\n1#2:556\n*E\n"})
/* loaded from: classes8.dex */
public final class RenderContext {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: r */
    public static boolean f43247r;

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public Canvas canvas;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public Paint paint;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public RectF clipRect;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final RenderMeasure renderMeasure;

    /* renamed from: f, reason: from kotlin metadata */
    public int renderColorConfig;

    /* renamed from: g, reason: from kotlin metadata */
    public int specifiedRenderColor;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public PageInfo pageInfo;

    /* renamed from: i, reason: from kotlin metadata */
    public int renderType;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public LineLayoutArgs lineLayoutArgs;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public SelectionArgs selectionArgs;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public AtomicBoolean abortRender;

    /* renamed from: m, reason: from kotlin metadata */
    public int linePaintColor;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public TextRender textRender;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public LowLatencyRenderData lowLatencyRenderData;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public ShapeShaderManager shapeShaderManager;

    /* renamed from: q, reason: from kotlin metadata */
    public boolean showExcerptIndicator;

    @Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ2\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J \u0010\u0005\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0010J\u000e\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u000eJ\u0006\u0010\u001d\u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0003\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;", "", "()V", "normalized", "", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "b", "Landroid/graphics/Bitmap;", "c", "Landroid/graphics/Canvas;", "p", "Landroid/graphics/Paint;", "m", "Landroid/graphics/Matrix;", "r", "Landroid/graphics/RectF;", "rect", "Landroid/graphics/Rect;", "scale", "", "createBitmapRenderContext", "createByViewPort", "viewPortRect", "createExportRenderContext", "createRenderContext", "pageHeight", "", "getFillBitmapMatrix", "isNormalized", "setNormalized", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final RenderContext create(@Nullable Canvas c, @NotNull Paint p, @NotNull Matrix m) {
            Intrinsics.checkNotNullParameter(p, "p");
            Intrinsics.checkNotNullParameter(m, "m");
            return new RenderContext(c, p, m);
        }

        @NotNull
        public final RenderContext createBitmapRenderContext(@NotNull Rect rect) {
            Intrinsics.checkNotNullParameter(rect, "rect");
            return create(rect);
        }

        @NotNull
        public final RenderContext createByViewPort(@NotNull RectF viewPortRect) {
            Intrinsics.checkNotNullParameter(viewPortRect, "viewPortRect");
            RenderContext renderContext = new RenderContext();
            renderContext.getRenderMeasure().setViewPortRect(viewPortRect);
            return renderContext;
        }

        @NotNull
        public final RenderContext createExportRenderContext(@NotNull Rect rect) {
            Intrinsics.checkNotNullParameter(rect, "rect");
            Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
            Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
            return create(rect, FLOAT_ONE.floatValue()).setExportModel(true);
        }

        @NotNull
        public final RenderContext createRenderContext(@NotNull Rect rect, int pageHeight) {
            Intrinsics.checkNotNullParameter(rect, "rect");
            return create(rect, (NumberUtils.FLOAT_ONE.floatValue() * rect.height()) / pageHeight);
        }

        @NotNull
        public final Matrix getFillBitmapMatrix() {
            Matrix matrix = new Matrix();
            NoteConstant noteConstant = NoteConstant.INSTANCE;
            matrix.postScale(noteConstant.getFILL_BITMAP_SCALE_VALUE(), noteConstant.getFILL_BITMAP_SCALE_VALUE());
            return matrix;
        }

        public final boolean isNormalized() {
            return RenderContext.f43247r;
        }

        public final void setNormalized(boolean normalized) {
            Companion companion = RenderContext.INSTANCE;
            RenderContext.f43247r = normalized;
        }

        public Companion() {
        }

        @NotNull
        public final RenderContext create(@NotNull Paint p, @NotNull Matrix m) {
            Intrinsics.checkNotNullParameter(p, "p");
            Intrinsics.checkNotNullParameter(m, "m");
            return new RenderContext(p, m);
        }

        @NotNull
        public final RenderContext create(@Nullable Bitmap b, @Nullable Canvas c, @NotNull Paint p, @NotNull Matrix m) {
            Intrinsics.checkNotNullParameter(p, "p");
            Intrinsics.checkNotNullParameter(m, "m");
            return new RenderContext(b, c, p, m);
        }

        @NotNull
        public final RenderContext create(@Nullable Bitmap b, @Nullable Canvas c, @NotNull Paint p, @NotNull Matrix m, @NotNull RectF r) {
            Intrinsics.checkNotNullParameter(p, "p");
            Intrinsics.checkNotNullParameter(m, "m");
            Intrinsics.checkNotNullParameter(r, "r");
            return new RenderContext(b, c, p, m, r);
        }

        @NotNull
        public final RenderContext create(@NotNull Rect rect) {
            Intrinsics.checkNotNullParameter(rect, "rect");
            return create(rect, rect.height() / RenderMeasure.INSTANCE.getDefaultPageHeight());
        }

        @NotNull
        public final RenderContext create(@NotNull Rect rect, float scale) {
            Intrinsics.checkNotNullParameter(rect, "rect");
            RenderContext create = create(new Paint(), new Matrix());
            Matrix matrix = new Matrix();
            matrix.setScale(scale, scale);
            create.setMatrix(matrix);
            create.createBitmap(rect);
            create.updateCanvas();
            create.setRenderColorConfig(1);
            return create;
        }
    }

    public RenderContext() {
        this.paint = new Paint();
        this.clipRect = new RectF();
        this.renderMeasure = new RenderMeasure();
        this.renderColorConfig = RenderColorConfig.INSTANCE.getDefaultColorConfig();
        this.specifiedRenderColor = -16777216;
        this.selectionArgs = new SelectionArgs();
        this.abortRender = new AtomicBoolean(false);
        this.linePaintColor = -16777216;
        this.showExcerptIndicator = true;
    }

    /* renamed from: a */
    public final void m33653a(Bitmap bitmap, RectF clearRect) {
        if (clearRect == null || bitmap == null) {
            return;
        }
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(0);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        canvas.drawRect(clearRect, paint);
    }

    public final void addSelectionPagePoints(@NotNull List<TouchData> selectionTouchDataList) {
        Intrinsics.checkNotNullParameter(selectionTouchDataList, "selectionTouchDataList");
        this.selectionArgs.addSelectionPagePoints(selectionTouchDataList);
    }

    public final void addSelectionTrackPoints(@Nullable TouchPointList selectionTrackPoints) {
        this.selectionArgs.addSelectionPoints(selectionTrackPoints);
    }

    /* renamed from: b */
    public final void m33654b(Matrix m) {
        this.renderMeasure.updateDisplayScale(m);
    }

    public final void clearContent() {
        clearContent(createRenderRect());
    }

    public final void clearSelectionPath() {
        this.selectionArgs.clearSelectionPath();
    }

    public final void clearSelectionRect() {
        this.selectionArgs = new SelectionArgs();
    }

    @NotNull
    public final RenderMeasure copyRenderMeasure() {
        return this.renderMeasure.m72299clone();
    }

    public final void createBitmap(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.bitmap = Bitmap.createBitmap(rect.width(), rect.height(), Bitmap.Config.ARGB_8888);
        eraseBitmap();
        updateRect(rect);
    }

    @NotNull
    public final RectF createRenderRect() {
        return BitmapKt.boundingRectF(this.bitmap);
    }

    public final void eraseBitmap() {
        Bitmap bitmap;
        if (BitmapKt.isValid(this.bitmap) && (bitmap = this.bitmap) != null) {
            bitmap.eraseColor(0);
        }
    }

    @NotNull
    public final Context getAppContext() {
        return ResManager.INSTANCE.getAppContext();
    }

    @Nullable
    public final Bitmap getBitmap() {
        if (!BitmapUtils.INSTANCE.isValid(this.bitmap)) {
            this.bitmap = Bitmap.createBitmap((int) getViewPortRect().width(), (int) getViewPortRect().height(), Bitmap.Config.ARGB_8888);
        }
        return this.bitmap;
    }

    @NotNull
    public final Canvas getCanvas() {
        if (this.canvas == null) {
            updateCanvas();
        }
        Canvas canvas = this.canvas;
        Intrinsics.checkNotNull(canvas, "null cannot be cast to non-null type android.graphics.Canvas");
        return canvas;
    }

    @NotNull
    public final RectF getClipRect() {
        return this.clipRect;
    }

    @NotNull
    public final Rect getContentRect() {
        Bitmap bitmap = this.bitmap;
        if (!BitmapKt.isValid(bitmap)) {
            bitmap = null;
        }
        return bitmap == null ? new Rect() : new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
    }

    public final float getDisplayScaleAndShapeScale(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return MatrixKt.getAverageScale(shape.getRenderMatrix(this));
    }

    public final int getLinePaintColor() {
        return this.linePaintColor;
    }

    @Nullable
    public final LowLatencyRenderData getLowLatencyRenderData() {
        return this.lowLatencyRenderData;
    }

    @NotNull
    public final Matrix getMatrix() {
        return getRenderMeasure().getMatrix();
    }

    public final float getMatrixInvertValue(float value) {
        return getRenderMeasure().getNormalizeSize(value);
    }

    public final float getMatrixNormalValue(float value) {
        return this.renderMeasure.getMatrixNormalValue(value);
    }

    @NotNull
    public final Matrix getNormalizeMatrix() {
        Matrix matrix = new Matrix();
        matrix.setScale(getNormalizeScale(), getNormalizeScale());
        return matrix;
    }

    public final float getNormalizeScale() {
        if (f43247r) {
            return NumberUtils.FLOAT_ONE.floatValue() / this.renderMeasure.getStrokeWidthDisplayScale();
        }
        Float f = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNull(f);
        return f.floatValue();
    }

    @Nullable
    public final PageInfo getPageInfo() {
        return this.pageInfo;
    }

    @NotNull
    public final Paint getPaint() {
        return this.paint;
    }

    public final int getRenderColor(int rawColor) {
        return getRenderColorConfig() != 2 ? rawColor : getSpecifiedRenderColor();
    }

    public final int getRenderColorConfig() {
        return this.renderColorConfig;
    }

    @NotNull
    public final RenderMeasure getRenderMeasure() {
        return this.renderMeasure;
    }

    public final int getRenderType() {
        return this.renderType;
    }

    public final float getScale() {
        return this.renderMeasure.getScale();
    }

    @NotNull
    public final SelectionArgs getSelectionArgs() {
        return this.selectionArgs;
    }

    @Nullable
    public final SelectionRect getSelectionRect() {
        return this.selectionArgs.getSelectionRect();
    }

    @Nullable
    public final ShapeShaderManager getShapeShaderManager() {
        return this.shapeShaderManager;
    }

    public final boolean getShowExcerptIndicator() {
        return this.showExcerptIndicator;
    }

    public final int getSpecifiedRenderColor() {
        return this.specifiedRenderColor;
    }

    public final float getStrokeWidthDisplayScale(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return getDisplayScaleAndShapeScale(shape);
    }

    @NotNull
    public final TextRender getTextRender() {
        if (this.textRender == null) {
            TextRender textRender = new TextRender(getAppContext());
            this.textRender = textRender;
            Intrinsics.checkNotNull(textRender);
            textRender.setBackgroundColor(0);
        }
        TextRender textRender2 = this.textRender;
        Intrinsics.checkNotNull(textRender2);
        return textRender2;
    }

    @NotNull
    public final Scheduler getTextRenderObserveOn() {
        return this.textRender == null ? RxScheduler.INSTANCE.newSingleThreadManager().getObserveOn() : getTextRender().getIOScheduler();
    }

    @NotNull
    public final RectF getViewPortRect() {
        return this.renderMeasure.getViewPortRect();
    }

    public final float getViewPortScale() {
        return this.renderMeasure.getViewPortScale();
    }

    public final float getViewPortScaling() {
        return this.renderMeasure.getViewPortScaling();
    }

    public final boolean hasValidBitmap() {
        return BitmapUtils.INSTANCE.isValid(this.bitmap);
    }

    public final boolean isAbortRender() {
        return this.abortRender.get();
    }

    public final boolean isAntiAlias(float strokeWidth) {
        return !isFillRenderType() || strokeWidth <= NoteConstant.INSTANCE.getMIN_STROKE_WIDTH_FOR_ENABLE_ANTI_ALIAS();
    }

    public final boolean isDarkBackground() {
        return this.linePaintColor == -1;
    }

    public final boolean isDither() {
        return !isFillRenderType();
    }

    public final boolean isFillRenderType() {
        return getRenderType() == 1;
    }

    public final boolean isLayerVisibleById(int layerId) {
        PageInfo pageInfo = this.pageInfo;
        if (pageInfo == null) {
            return true;
        }
        return NotePageInfoUtils.INSTANCE.isLayerVisibleById(pageInfo, layerId);
    }

    public final boolean isUseLineStyle() {
        return !isFillRenderType();
    }

    public final boolean isViewScaling() {
        return this.renderMeasure.isViewScaling();
    }

    public final void postScale(float sx, float sy, float px, float py) {
        getMatrix().postScale(sx, sy, px, py);
    }

    public final void postTranslate(float dx, float dy) {
        getMatrix().postTranslate(dx, dy);
    }

    public final void recycleBitmap() {
        BitmapUtils.INSTANCE.recycle(this.bitmap);
        this.bitmap = null;
    }

    @MainThread
    public final void recycleTextRender() {
        TextRender textRender = this.textRender;
        if (textRender != null) {
            textRender.clear();
        }
        TextRender textRender2 = this.textRender;
        if (textRender2 != null) {
            textRender2.destroy();
        }
        this.textRender = null;
    }

    public final void reset() {
        this.canvas = null;
        this.lineLayoutArgs = null;
        this.abortRender = new AtomicBoolean(false);
        this.renderMeasure.reset();
        recycleBitmap();
        clearSelectionRect();
    }

    public final void resetClipRect() {
        this.clipRect = new RectF();
    }

    public final void setAbortRender(boolean abort) {
        this.abortRender.set(abort);
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public final void setClipRect(@NotNull RectF clipRect) {
        Intrinsics.checkNotNullParameter(clipRect, "clipRect");
        this.clipRect = clipRect;
    }

    @NotNull
    public final RenderContext setExportModel(boolean exportModel) {
        return this;
    }

    public final void setLineLayoutArgs(@Nullable LineLayoutArgs lineLayoutArgs) {
        this.lineLayoutArgs = lineLayoutArgs;
    }

    public final void setLowLatencyRenderData(@Nullable LowLatencyRenderData lowLatencyRenderData) {
        this.lowLatencyRenderData = lowLatencyRenderData;
    }

    public final void setMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        m33654b(matrix);
        getRenderMeasure().setMatrix(matrix);
    }

    public final void setPaint(@NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<set-?>");
        this.paint = paint;
    }

    @NotNull
    public final RenderContext setRenderColorConfig(int renderColorConfig) {
        this.renderColorConfig = renderColorConfig;
        return this;
    }

    @NotNull
    public final RenderContext setRenderScale(float scale) {
        this.renderMeasure.setRenderScale(scale);
        return this;
    }

    public final void setRenderType(int renderType) {
        this.renderType = renderType;
    }

    public final void setSelectionPath(@NotNull Path selectionPath) {
        Intrinsics.checkNotNullParameter(selectionPath, "selectionPath");
        this.selectionArgs.setSelectionPath(selectionPath);
    }

    public final void setSelectionRect(@Nullable SelectionRect selectionRect) {
        this.selectionArgs.setSelectionRect(selectionRect);
    }

    public final void setShapeShaderManager(@Nullable ShapeShaderManager shapeShaderManager) {
        this.shapeShaderManager = shapeShaderManager;
    }

    public final void setShowExcerptIndicator(boolean z) {
        this.showExcerptIndicator = z;
    }

    @NotNull
    public final RenderContext setSpecifiedRenderColor(int specifiedRenderColor) {
        this.specifiedRenderColor = specifiedRenderColor;
        return this;
    }

    public final void setViewPortRect(@Nullable RectF viewPortRect) {
        if (viewPortRect != null) {
            this.renderMeasure.setViewPortRect(viewPortRect);
        }
    }

    @NotNull
    public final RenderContext setViewPortScale(float viewPortScale) {
        this.renderMeasure.setViewPortScale(viewPortScale);
        return this;
    }

    @NotNull
    public final RenderContext setViewPortScaling(float scaling) {
        this.renderMeasure.setViewPortScaling(scaling);
        return this;
    }

    public final void setZoomRect(@Nullable RectF zoomRect) {
        this.renderMeasure.setZoomRect(zoomRect);
    }

    public final void unionClipRect(@NotNull RectF unionRectF) {
        Intrinsics.checkNotNullParameter(unionRectF, "unionRectF");
        if (this.clipRect.isEmpty()) {
            this.clipRect = new RectF(unionRectF);
        } else {
            this.clipRect.union(unionRectF);
        }
    }

    public final void update(@Nullable Bitmap b, @Nullable Canvas c, @NotNull Paint p, @NotNull Matrix m, @NotNull RectF r) {
        Intrinsics.checkNotNullParameter(p, "p");
        Intrinsics.checkNotNullParameter(m, "m");
        Intrinsics.checkNotNullParameter(r, "r");
        this.bitmap = b;
        this.canvas = c;
        this.paint = p;
        this.clipRect = r;
        setMatrix(m);
    }

    public final void updateCanvas() {
        Bitmap bitmap = getBitmap();
        Intrinsics.checkNotNull(bitmap);
        updateCanvas(new Canvas(bitmap));
    }

    public final void updatePageInfo(@Nullable PageInfo pageInfo) {
        this.pageInfo = pageInfo;
        getRenderMeasure().setPageInfo(pageInfo);
    }

    public final void updateRect(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        setViewPortRect(new RectF(rect));
        setZoomRect(new RectF(rect));
    }

    public final void clearContent(@Nullable RectF clearRect) {
        if (clearRect == null || !BitmapUtils.INSTANCE.isValid(this.bitmap)) {
            return;
        }
        m33653a(this.bitmap, clearRect);
    }

    public final void updateCanvas(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        this.canvas = canvas;
    }

    public final void update(@Nullable Bitmap b, @Nullable Canvas c, @NotNull Paint p) {
        Intrinsics.checkNotNullParameter(p, "p");
        this.bitmap = b;
        this.canvas = c;
        this.paint = p;
    }

    public RenderContext(@NotNull Paint paint, @NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        this.paint = new Paint();
        this.clipRect = new RectF();
        this.renderMeasure = new RenderMeasure();
        this.renderColorConfig = RenderColorConfig.INSTANCE.getDefaultColorConfig();
        this.specifiedRenderColor = -16777216;
        this.selectionArgs = new SelectionArgs();
        this.abortRender = new AtomicBoolean(false);
        this.linePaintColor = -16777216;
        this.showExcerptIndicator = true;
        this.paint = paint;
        setMatrix(matrix);
    }

    public RenderContext(@Nullable Canvas canvas, @NotNull Paint p, @NotNull Matrix m) {
        Intrinsics.checkNotNullParameter(p, "p");
        Intrinsics.checkNotNullParameter(m, "m");
        this.paint = new Paint();
        this.clipRect = new RectF();
        this.renderMeasure = new RenderMeasure();
        this.renderColorConfig = RenderColorConfig.INSTANCE.getDefaultColorConfig();
        this.specifiedRenderColor = -16777216;
        this.selectionArgs = new SelectionArgs();
        this.abortRender = new AtomicBoolean(false);
        this.linePaintColor = -16777216;
        this.showExcerptIndicator = true;
        this.canvas = canvas;
        this.paint = p;
        setMatrix(m);
    }

    public RenderContext(@Nullable Bitmap bitmap, @Nullable Canvas canvas, @NotNull Paint p, @NotNull Matrix m) {
        Intrinsics.checkNotNullParameter(p, "p");
        Intrinsics.checkNotNullParameter(m, "m");
        this.paint = new Paint();
        this.clipRect = new RectF();
        this.renderMeasure = new RenderMeasure();
        this.renderColorConfig = RenderColorConfig.INSTANCE.getDefaultColorConfig();
        this.specifiedRenderColor = -16777216;
        this.selectionArgs = new SelectionArgs();
        this.abortRender = new AtomicBoolean(false);
        this.linePaintColor = -16777216;
        this.showExcerptIndicator = true;
        this.bitmap = bitmap;
        this.canvas = canvas;
        this.paint = p;
        setMatrix(m);
    }

    public RenderContext(@Nullable Bitmap bitmap, @Nullable Canvas canvas, @NotNull Paint p, @NotNull Matrix m, @NotNull RectF r) {
        Intrinsics.checkNotNullParameter(p, "p");
        Intrinsics.checkNotNullParameter(m, "m");
        Intrinsics.checkNotNullParameter(r, "r");
        this.paint = new Paint();
        this.clipRect = new RectF();
        this.renderMeasure = new RenderMeasure();
        this.renderColorConfig = RenderColorConfig.INSTANCE.getDefaultColorConfig();
        this.specifiedRenderColor = -16777216;
        this.selectionArgs = new SelectionArgs();
        this.abortRender = new AtomicBoolean(false);
        this.linePaintColor = -16777216;
        this.showExcerptIndicator = true;
        this.bitmap = bitmap;
        this.canvas = canvas;
        this.paint = p;
        this.clipRect = r;
        setMatrix(m);
    }
}
