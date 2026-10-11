package com.onyx.android.sdk.universal.editor.display;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.bitmap.SafeBitmap;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.debug.LogThrottler;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.render.NoteRenderArgs;
import com.onyx.android.sdk.note.common.data.render.NoteSliceRenderInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.config.ScaleConfig;
import com.onyx.android.sdk.universal.editor.data.AnimateBoxArgs;
import com.onyx.android.sdk.universal.editor.data.EditorAnimatorContext;
import com.onyx.android.sdk.universal.editor.data.PageRenderNodeInfo;
import com.onyx.android.sdk.universal.editor.data.PageSliceInfo;
import com.onyx.android.sdk.universal.editor.data.ShapeFlushInfo;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.display.node.IRenderNode;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000ò\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u0098\u00012\u00020\u0001:\u0004\u0098\u0001\u0099\u0001B\t¢\u0006\u0006\b\u0096\u0001\u0010\u0097\u0001J(\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\b\u001a\u00020\u0007H\u0002J\"\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0005H\u0002J\u001e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J \u0010\u0014\u001a\u00020\t2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u0007H\u0002J\u001a\u0010\u0017\u001a\u00020\t2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0016\u001a\u00020\u0005H\u0002J\b\u0010\u0018\u001a\u00020\tH\u0002J\b\u0010\u0019\u001a\u00020\tH\u0002J\u0010\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0010\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0006\u0010\u001e\u001a\u00020\u000fJ\u0006\u0010\u001f\u001a\u00020\u000fJ\u0006\u0010 \u001a\u00020\u000fJ\u0006\u0010!\u001a\u00020\u000fJ\u0006\u0010\"\u001a\u00020\u000fJ\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u000f0#J\u0006\u0010&\u001a\u00020%J\u0006\u0010(\u001a\u00020'J\u0006\u0010)\u001a\u00020\tJ\u0006\u0010*\u001a\u00020\tJ\u0006\u0010+\u001a\u00020\tJ\u0006\u0010,\u001a\u00020\tJ\u0018\u00101\u001a\u00020\t2\b\u0010.\u001a\u0004\u0018\u00010-2\u0006\u00100\u001a\u00020/J\u001c\u00102\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u001c\u00104\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u001c\u00105\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u001c\u00106\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J&\u00107\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\b\u001a\u00020\u0007J\u0016\u0010:\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00109\u001a\u000208J\u001c\u0010;\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010<\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010?\u001a\u00020\t2\u0006\u0010>\u001a\u00020=J$\u0010A\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010@\u001a\u00020=J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010D\u001a\u00020\t2\u0006\u0010C\u001a\u00020BJ \u0010H\u001a\u00020\t2\u0006\u0010E\u001a\u00020\u001a2\u0006\u0010G\u001a\u00020F2\b\b\u0002\u0010,\u001a\u00020\u0007J\u0018\u0010I\u001a\u00020\t2\u0006\u0010E\u001a\u00020\u001a2\b\b\u0002\u0010,\u001a\u00020\u0007J\u000e\u0010J\u001a\u00020\t2\u0006\u0010E\u001a\u00020\u001aJ\u0014\u0010N\u001a\b\u0012\u0004\u0012\u00020M0L2\u0006\u0010K\u001a\u00020\u001aJ\u0010\u0010P\u001a\u0004\u0018\u00010O2\u0006\u0010K\u001a\u00020\u001aJ\u000e\u0010S\u001a\u00020\t2\u0006\u0010R\u001a\u00020QJ\u000e\u0010V\u001a\u00020\u00072\u0006\u0010U\u001a\u00020TJ\u0018\u0010X\u001a\u00020\u00072\u0006\u0010U\u001a\u00020T2\b\b\u0002\u0010W\u001a\u00020\u0007J\u0016\u0010\\\u001a\u00020\u00072\u0006\u0010Z\u001a\u00020Y2\u0006\u0010[\u001a\u00020\u0005J\u0014\u0010_\u001a\u00020\u00072\f\u0010^\u001a\b\u0012\u0004\u0012\u00020]0\u0004J\u0006\u0010`\u001a\u00020\tJ\u0010\u0010b\u001a\u0004\u0018\u00010a2\u0006\u0010K\u001a\u00020\u001aJ\u000e\u0010c\u001a\u00020\u00072\u0006\u0010K\u001a\u00020\u001aJ\u0010\u0010d\u001a\u00020\t2\b\b\u0002\u0010&\u001a\u00020%J\u0006\u0010e\u001a\u00020\tJ\u0006\u0010f\u001a\u00020\tJ\u0006\u0010g\u001a\u00020\tJ\u000e\u0010h\u001a\u00020\t2\u0006\u0010K\u001a\u00020\u001aJ\u0014\u0010k\u001a\u00020\t2\f\u0010j\u001a\b\u0012\u0004\u0012\u00020\u001a0iJ\u0014\u0010l\u001a\u00020\t2\f\u0010j\u001a\b\u0012\u0004\u0012\u00020\u001a0iJ\u001a\u0010n\u001a\u0004\u0018\u00010O2\u0006\u0010\r\u001a\u00020\u00052\b\b\u0002\u0010m\u001a\u00020\u0007J\u000e\u0010p\u001a\u00020o2\u0006\u0010\r\u001a\u00020\u0005J\u0014\u0010r\u001a\b\u0012\u0004\u0012\u00020q0L2\u0006\u0010\r\u001a\u00020\u0005J\u0010\u0010u\u001a\u00020\t2\b\u0010t\u001a\u0004\u0018\u00010sJ\u0006\u0010v\u001a\u00020\u001aR$\u0010.\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bw\u0010x\u001a\u0004\by\u0010z\"\u0004\b{\u0010|R&\u0010\u0083\u0001\u001a\u00020}8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0004\b\u0017\u0010~\u001a\u0005\b\u007f\u0010\u0080\u0001\"\u0006\b\u0081\u0001\u0010\u0082\u0001R#\u0010\u0086\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u000f0\u0084\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\f\u0010\u0085\u0001R\u001d\u0010\u008c\u0001\u001a\u00030\u0087\u00018\u0006¢\u0006\u0010\n\u0006\b\u0088\u0001\u0010\u0089\u0001\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001R)\u0010>\u001a\u0004\u0018\u00010=8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\n\u0010\u008d\u0001\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001\"\u0006\b\u0090\u0001\u0010\u0091\u0001R\u0018\u0010\u0095\u0001\u001a\u00030\u0092\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001¨\u0006\u009a\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/RenderManager;", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "visibleBoxList", "", "highQualityFirst", "", "e", "Lio/reactivex/rxjava3/core/Observable;", "c", "virtualPageBoxInfo", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;", "pageHandler", "visibleList", C4921e.f26537n, "forceUpdate", "l", "pageNormalBoxInfo", "pageHighQualityBoxInfo", "b", C6999h.f39688c, "i", "", NotificationCompat.CATEGORY_MESSAGE, C6998g.f39679a, "j", "getPageBorderHandler", "getPageNormalHandler", "getPageHighQualityHandler", "getOtherRenderListHandler", "getPageSearchHighlightRenderHandler", "", "getPageHandlerMap", "Lcom/onyx/android/sdk/base/data/Size;", "viewSize", "Landroid/graphics/RectF;", "viewportRect", "destroy", "clearDisplay", "clearShapeFlushInfo", "invalidate", "Landroid/view/View;", "view", "Lorg/greenrobot/eventbus/EventBus;", "eventBus", "updateEditorView", "displayScrollingBoxList", "boxList", "preRenderBoxList", "displayBoxListAfterStopScroll", "displayBoxListAfterStopScale", "displayBoxList", "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;", "context", "displayBoxListAnimation", "displayBoxListAfterRefreshFullScreen", "isPageRendered", "Landroid/graphics/Matrix;", "displayMatrix", "displayWithMatrix", "matrix", "displayScalingBoxList", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "key", "Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;", "renderer", "addRenderer", "removeRenderer", "removeRenderSilent", CouchFieldKey.KEY_TOC_PAGE_ID, "", "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;", "findPageCacheSliceList", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "findPageNormalSlice", "Landroid/graphics/Bitmap;", "bitmap", "draw", "Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;", "shapeFlushInfo", "flushShapeToPage", "resetLowLatencyData", "lowLatencyFlushToPage", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "virtualBoxInfo", "removeVerifyId", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "list", "addNoteSearchBeanList", "clearNoteSearchBeanList", "Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;", "getPageRenderNode", "isPageHighQualityOutOfDate", "resizeCache", "safeClearAllNoteSliceCache", "safeClearAllSliceCache", "cancelAllRenderRequest", "safeClearPageNoteSliceCache", "", "pageIdSet", "invalidateSliceByPages", "invalidateNotVisiblePagesIf", "isHighQuality", "getDisplayContentSlice", "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;", "createNoteRenderArgs", "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;", "computeNoteSliceRenderInfoList", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "geoLayout", "setBackground", "getDisplayDebugString", "a", "Landroid/view/View;", "getView", "()Landroid/view/View;", "setView", "(Landroid/view/View;)V", "", "F", "getScale", "()F", "setScale", "(F)V", "scale", "", "Ljava/util/Map;", "renderHandlerMap", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "d", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "getDrawBenchmark", "()Lcom/onyx/android/sdk/base/utils/Benchmark;", "drawBenchmark", "Landroid/graphics/Matrix;", "getDisplayMatrix", "()Landroid/graphics/Matrix;", "setDisplayMatrix", "(Landroid/graphics/Matrix;)V", "Lcom/onyx/android/sdk/base/utils/debug/LogThrottler;", C6997f.f39671c, "Lcom/onyx/android/sdk/base/utils/debug/LogThrottler;", "logThrottler", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "Renderer", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRenderManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderManager.kt\ncom/onyx/android/sdk/universal/editor/display/RenderManager\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,627:1\n526#2:628\n511#2,6:629\n215#3,2:635\n215#3,2:637\n215#3,2:639\n187#3,3:641\n215#3,2:647\n215#3,2:650\n215#3,2:654\n215#3,2:656\n125#3:658\n152#3,3:659\n125#3:665\n152#3,3:666\n125#3:672\n152#3,3:673\n215#3,2:679\n215#3,2:681\n215#3,2:683\n215#3,2:685\n215#3,2:687\n215#3,2:689\n215#3,2:691\n215#3,2:697\n1855#4,2:644\n1855#4:646\n1856#4:649\n1855#4,2:652\n1747#4,3:662\n1747#4,3:669\n1747#4,3:676\n1549#4:693\n1620#4,3:694\n*S KotlinDebug\n*F\n+ 1 RenderManager.kt\ncom/onyx/android/sdk/universal/editor/display/RenderManager\n*L\n78#1:628\n78#1:629,6\n94#1:635,2\n98#1:637,2\n103#1:639,2\n281#1:641,3\n325#1:647,2\n331#1:650,2\n375#1:654,2\n438#1:656,2\n444#1:658\n444#1:659,3\n457#1:665\n457#1:666,3\n469#1:672\n469#1:673,3\n494#1:679,2\n500#1:681,2\n506#1:683,2\n512#1:685,2\n518#1:687,2\n528#1:689,2\n534#1:691,2\n575#1:697,2\n316#1:644,2\n324#1:646\n324#1:649\n338#1:652,2\n445#1:662,3\n458#1:669,3\n470#1:676,3\n559#1:693\n559#1:694,3\n*E\n"})
/* loaded from: classes8.dex */
public final class RenderManager {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int DRAW_WARNING_TIME_THRESHOLD = 12;

    @NotNull
    public static final String OTHER_RENDERER_LIST_HANDLER = "other_renderer_list_handler";

    @NotNull
    public static final String PAGE_BORDER_HANDLER = "page_border_handler";

    @NotNull
    public static final String PAGE_HIGH_QUALITY_HANDLER = "page_high_quality_handler";

    @NotNull
    public static final String PAGE_NORMAL_HANDLER = "page_normal_handler";

    @NotNull
    public static final String PAGE_SEARCH_HIGHLIGHT_HANDLER = "page_search_highlight_handler";

    @NotNull
    public static final String RENDER_KEY_ERASER = "render_key_eraser";

    @NotNull
    public static final String RENDER_KEY_LASER = "render_key_laser";

    @NotNull
    public static final String RENDER_KEY_RECT_EXCERPT = "render_key_rect_excerpt";

    @NotNull
    public static final String RENDER_KEY_SELECTION = "render_key_selection";

    @NotNull
    public static final String RENDER_KEY_SHAPE_DRAWING = "render_key_shape_drawing";

    @NotNull
    public static final String RENDER_KEY_SHAPE_HIGHLIGHT = "render_key_shape_highlight";

    @NotNull
    public static final String RENDER_KEY_TEXT_EXCERPT = "render_key_text_excerpt";

    @NotNull
    public static final String RENDER_KEY_TEXT_SELECTION = "render_key_text_selection";

    @NotNull
    public static final String RENDER_KEY_TRANSFORM = "render_key_transform";

    @NotNull
    public static final String RENDER_KEY_UNIVERSAL = "render_key_universal";

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public View view;

    /* renamed from: b, reason: from kotlin metadata */
    public float scale = 1.0f;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Map<String, IRenderHandler> renderHandlerMap;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Benchmark drawBenchmark;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Matrix displayMatrix;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final LogThrottler logThrottler;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Companion;", "", "()V", "DRAW_WARNING_TIME_THRESHOLD", "", "OTHER_RENDERER_LIST_HANDLER", "", "PAGE_BORDER_HANDLER", "PAGE_HIGH_QUALITY_HANDLER", "PAGE_NORMAL_HANDLER", "PAGE_SEARCH_HIGHLIGHT_HANDLER", "RENDER_KEY_ERASER", "RENDER_KEY_LASER", "RENDER_KEY_RECT_EXCERPT", "RENDER_KEY_SELECTION", "RENDER_KEY_SHAPE_DRAWING", "RENDER_KEY_SHAPE_HIGHLIGHT", "RENDER_KEY_TEXT_EXCERPT", "RENDER_KEY_TEXT_SELECTION", "RENDER_KEY_TRANSFORM", "RENDER_KEY_UNIVERSAL", "isPageHandler", "", "key", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0032 A[ORIG_RETURN, RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:5:0x0030 A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean isPageHandler(@org.jetbrains.annotations.NotNull java.lang.String r1) {
            /*
                r0 = this;
                java.lang.String r0 = "key"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
                int r0 = r1.hashCode()
                switch(r0) {
                    case -694599193: goto L28;
                    case 12597021: goto L1f;
                    case 1367387032: goto L16;
                    case 1581817762: goto Ld;
                    default: goto Lc;
                }
            Lc:
                goto L32
            Ld:
                java.lang.String r0 = "page_normal_handler"
                boolean r0 = r1.equals(r0)
                if (r0 != 0) goto L30
                goto L32
            L16:
                java.lang.String r0 = "page_search_highlight_handler"
                boolean r0 = r1.equals(r0)
                if (r0 != 0) goto L30
                goto L32
            L1f:
                java.lang.String r0 = "page_high_quality_handler"
                boolean r0 = r1.equals(r0)
                if (r0 != 0) goto L30
                goto L32
            L28:
                java.lang.String r0 = "page_border_handler"
                boolean r0 = r1.equals(r0)
                if (r0 == 0) goto L32
            L30:
                r0 = 1
                goto L33
            L32:
                r0 = 0
            L33:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.display.RenderManager.Companion.isPageHandler(java.lang.String):boolean");
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;", "", "onDraw", "", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public interface Renderer {
        void onDraw(@NotNull Canvas canvas);
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$a */
    /* loaded from: classes8.dex */
    public static final class C10337a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f51448f;

        public C10337a(EditorBundle editorBundle) {
            this.f51448f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.this.m40747n(this.f51448f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$b */
    /* loaded from: classes8.dex */
    public static final class C10338b<T> implements Consumer {
        public C10338b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.this.invalidate();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$c */
    /* loaded from: classes8.dex */
    public static final class C10339c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f51451f;

        /* renamed from: g */
        public final /* synthetic */ List<BoxInfo> f51452g;

        public C10339c(EditorBundle editorBundle, List<BoxInfo> list) {
            this.f51451f = editorBundle;
            this.f51452g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderManager.this.m40739c(this.f51451f, this.f51452g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$d */
    /* loaded from: classes8.dex */
    public static final class C10340d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f51454f;

        /* renamed from: g */
        public final /* synthetic */ List<BoxInfo> f51455g;

        public C10340d(EditorBundle editorBundle, List<BoxInfo> list) {
            this.f51454f = editorBundle;
            this.f51455g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderManager.this.getPageSearchHighlightRenderHandler().createDisplayBoxListObservable(this.f51454f, this.f51455g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$e */
    /* loaded from: classes8.dex */
    public static final class C10341e<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<BoxInfo> f51457f;

        public C10341e(List<BoxInfo> list) {
            this.f51457f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager renderManager = RenderManager.this;
            renderManager.m40745k(renderManager.getPageSearchHighlightRenderHandler(), this.f51457f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$f */
    /* loaded from: classes8.dex */
    public static final class C10342f<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f51459f;

        public C10342f(EditorBundle editorBundle) {
            this.f51459f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.this.m40747n(this.f51459f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$g */
    /* loaded from: classes8.dex */
    public static final class C10343g<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f51461f;

        /* renamed from: g */
        public final /* synthetic */ List<BoxInfo> f51462g;

        public C10343g(EditorBundle editorBundle, List<BoxInfo> list) {
            this.f51461f = editorBundle;
            this.f51462g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderManager.this.getPageHighQualityHandler().createDisplayBoxListObservable(this.f51461f, this.f51462g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$h */
    /* loaded from: classes8.dex */
    public static final class C10344h<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<BoxInfo> f51464f;

        public C10344h(List<BoxInfo> list) {
            this.f51464f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager renderManager = RenderManager.this;
            renderManager.m40745k(renderManager.getPageHighQualityHandler(), this.f51464f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$i */
    /* loaded from: classes8.dex */
    public static final class C10345i<T> implements Consumer {
        public C10345i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.this.invalidate();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$j */
    /* loaded from: classes8.dex */
    public static final class C10346j<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f51467f;

        /* renamed from: g */
        public final /* synthetic */ List<BoxInfo> f51468g;

        public C10346j(EditorBundle editorBundle, List<BoxInfo> list) {
            this.f51467f = editorBundle;
            this.f51468g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderManager.this.getPageNormalHandler().createDisplayBoxListObservable(this.f51467f, this.f51468g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$k */
    /* loaded from: classes8.dex */
    public static final class C10347k<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<BoxInfo> f51470f;

        public C10347k(List<BoxInfo> list) {
            this.f51470f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager renderManager = RenderManager.this;
            renderManager.m40745k(renderManager.getPageNormalHandler(), this.f51470f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$l */
    /* loaded from: classes8.dex */
    public static final class C10348l<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f51472f;

        public C10348l(EditorBundle editorBundle) {
            this.f51472f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.this.m40747n(this.f51472f, it2);
            RenderManager.this.invalidate();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$m */
    /* loaded from: classes8.dex */
    public static final class C10349m<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f51474f;

        /* renamed from: g */
        public final /* synthetic */ List<BoxInfo> f51475g;

        public C10349m(EditorBundle editorBundle, List<BoxInfo> list) {
            this.f51474f = editorBundle;
            this.f51475g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderManager.this.getPageBorderHandler().createDisplayBoxListObservable(this.f51474f, this.f51475g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$n */
    /* loaded from: classes8.dex */
    public static final class C10350n<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<BoxInfo> f51477f;

        public C10350n(List<BoxInfo> list) {
            this.f51477f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager renderManager = RenderManager.this;
            renderManager.m40745k(renderManager.getPageBorderHandler(), this.f51477f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$o */
    /* loaded from: classes8.dex */
    public static final class C10351o<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f51479f;

        public C10351o(EditorBundle editorBundle) {
            this.f51479f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.this.m40747n(this.f51479f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$p */
    /* loaded from: classes8.dex */
    public static final class C10352p<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f51481f;

        public C10352p(EditorBundle editorBundle) {
            this.f51481f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.this.m40747n(this.f51481f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$q */
    /* loaded from: classes8.dex */
    public static final class C10353q<T> implements Consumer {
        public C10353q() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.this.invalidate();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$r */
    /* loaded from: classes8.dex */
    public static final class C10354r<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f51484f;

        public C10354r(EditorBundle editorBundle) {
            this.f51484f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.this.m40747n(this.f51484f, it2);
            RenderManager.this.invalidate();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$s */
    /* loaded from: classes8.dex */
    public static final class C10355s<T> implements Consumer {
        public C10355s() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.this.invalidate();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$t */
    /* loaded from: classes8.dex */
    public static final class C10356t<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f51487f;

        public C10356t(EditorBundle editorBundle) {
            this.f51487f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.this.m40747n(this.f51487f, it2);
            RenderManager.this.invalidate();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$u */
    /* loaded from: classes8.dex */
    public static final class C10357u<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f51489f;

        public C10357u(EditorBundle editorBundle) {
            this.f51489f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.this.m40747n(this.f51489f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$v */
    /* loaded from: classes8.dex */
    public static final class C10358v<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f51491f;

        public C10358v(EditorBundle editorBundle) {
            this.f51491f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.this.m40747n(this.f51491f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$w */
    /* loaded from: classes8.dex */
    public static final class C10359w<T> implements Consumer {
        public C10359w() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.this.invalidate();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$x */
    /* loaded from: classes8.dex */
    public static final class C10360x<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f51494f;

        public C10360x(EditorBundle editorBundle) {
            this.f51494f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.this.m40747n(this.f51494f, it2);
            RenderManager.this.invalidate();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$y */
    /* loaded from: classes8.dex */
    public static final class C10361y<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f51496f;

        public C10361y(EditorBundle editorBundle) {
            this.f51496f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.this.m40747n(this.f51496f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.RenderManager$z */
    /* loaded from: classes8.dex */
    public static final class C10362z<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f51498f;

        public C10362z(EditorBundle editorBundle) {
            this.f51498f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.this.m40747n(this.f51498f, it2);
        }
    }

    public RenderManager() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.renderHandlerMap = linkedHashMap;
        this.drawBenchmark = new Benchmark();
        this.logThrottler = new LogThrottler(1);
        linkedHashMap.put(PAGE_BORDER_HANDLER, new PageBorderRenderHandler());
        linkedHashMap.put(PAGE_NORMAL_HANDLER, new PageNormalRenderHandler());
        linkedHashMap.put(PAGE_HIGH_QUALITY_HANDLER, new PageHighQualityRenderHandler());
        linkedHashMap.put(OTHER_RENDERER_LIST_HANDLER, new OtherRendererListHandler());
        linkedHashMap.put(PAGE_SEARCH_HIGHLIGHT_HANDLER, new PageSearchHighlightRenderHandler());
    }

    public static /* synthetic */ void addRenderer$default(RenderManager renderManager, String str, Renderer renderer, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        renderManager.addRenderer(str, renderer, z);
    }

    /* renamed from: d */
    public static final void m40735d(RenderManager this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.invalidate();
    }

    public static /* synthetic */ void displayBoxList$default(RenderManager renderManager, EditorBundle editorBundle, List list, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        renderManager.displayBoxList(editorBundle, list, z);
    }

    /* renamed from: f */
    public static /* synthetic */ void m40736f(RenderManager renderManager, EditorBundle editorBundle, List list, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        renderManager.m40740e(editorBundle, list, z);
    }

    public static /* synthetic */ SliceInfo getDisplayContentSlice$default(RenderManager renderManager, BoxInfo boxInfo, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = ScaleConfig.INSTANCE.isEnabledHighQuality(boxInfo, renderManager.viewportRect());
        }
        return renderManager.getDisplayContentSlice(boxInfo, z);
    }

    public static /* synthetic */ boolean lowLatencyFlushToPage$default(RenderManager renderManager, ShapeFlushInfo shapeFlushInfo, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return renderManager.lowLatencyFlushToPage(shapeFlushInfo, z);
    }

    /* renamed from: m */
    public static /* synthetic */ void m40737m(RenderManager renderManager, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        renderManager.m40746l(list, z);
    }

    public static /* synthetic */ void removeRenderer$default(RenderManager renderManager, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        renderManager.removeRenderer(str, z);
    }

    public static /* synthetic */ void resizeCache$default(RenderManager renderManager, Size size, int i, Object obj) {
        if ((i & 1) != 0) {
            size = renderManager.viewSize();
        }
        renderManager.resizeCache(size);
    }

    public final boolean addNoteSearchBeanList(@NotNull List<NoteSearchBean> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        boolean addNoteSearchBeanList = getPageSearchHighlightRenderHandler().addNoteSearchBeanList(list);
        if (addNoteSearchBeanList && CollectionKt.contains(BoxInfoUtils.INSTANCE.toBoxIdSet(visibleBoxList()), NoteSearchBean.INSTANCE.toPageIdSet(list))) {
            invalidate();
        }
        return addNoteSearchBeanList;
    }

    public final void addRenderer(@NotNull String key, @NotNull Renderer renderer, boolean invalidate) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(renderer, "renderer");
        getOtherRenderListHandler().addRenderer(key, renderer);
        if (invalidate) {
            invalidate();
        }
    }

    /* renamed from: b */
    public final void m40738b(final BoxInfo pageNormalBoxInfo, final BoxInfo pageHighQualityBoxInfo) {
        LogThrottler.collectLogIf$default(this.logThrottler, null, new Function1<StringBuilder, Unit>() { // from class: com.onyx.android.sdk.universal.editor.display.RenderManager$collectBoxInfoLogIf$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(StringBuilder sb) {
                invoke2(sb);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull StringBuilder stringBuilder) {
                Intrinsics.checkNotNullParameter(stringBuilder, "stringBuilder");
                BoxInfo boxInfo = BoxInfo.this;
                if (boxInfo == null) {
                    stringBuilder.append("pageNormalBoxInfo is null");
                    stringBuilder.append(", pageHighQualityBoxInfo = " + pageHighQualityBoxInfo.getVisibleDebugString());
                    stringBuilder.append("\n");
                    return;
                }
                if (boxInfo.hasSameVisibility(pageHighQualityBoxInfo)) {
                    return;
                }
                stringBuilder.append("maybe display error after flushShape");
                stringBuilder.append("\npageNormalBoxInfo = " + AnyKt.toSimpleNameString(BoxInfo.this));
                stringBuilder.append(", " + BoxInfo.this.getVisibleDebugString());
                stringBuilder.append("\npageHighQualityBoxInfo = " + AnyKt.toSimpleNameString(pageHighQualityBoxInfo));
                stringBuilder.append(", " + pageHighQualityBoxInfo.getVisibleDebugString());
                stringBuilder.append("\n");
            }
        }, 1, null);
    }

    /* renamed from: c */
    public final Observable<?> m40739c(EditorBundle editorBundle, List<BoxInfo> visibleBoxList) {
        if (EditorBundleKt.getUiFeature(editorBundle).supportPageBorder()) {
            Observable<BoxInfo> doOnNext = getPageBorderHandler().createDisplayBoxListObservable(editorBundle, visibleBoxList).doOnNext(new C10337a(editorBundle));
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            return doOnNext;
        }
        Observable<?> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    public final void cancelAllRenderRequest() {
        Iterator<Map.Entry<String, IRenderHandler>> it2 = getPageHandlerMap().entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().cancelAllRenderRequest();
        }
    }

    public final void clearDisplay() {
        Iterator<Map.Entry<String, IRenderHandler>> it2 = this.renderHandlerMap.entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().clearDisplay();
        }
        invalidate();
    }

    public final void clearNoteSearchBeanList() {
        if (getPageSearchHighlightRenderHandler().clearNoteSearchBeanList()) {
            invalidate();
        }
    }

    public final void clearShapeFlushInfo() {
        Iterator<Map.Entry<String, IRenderHandler>> it2 = this.renderHandlerMap.entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().clearShapeFlushInfo();
        }
    }

    @NotNull
    public final List<NoteSliceRenderInfo> computeNoteSliceRenderInfoList(@NotNull BoxInfo virtualPageBoxInfo) {
        int collectionSizeOrDefault;
        List<NoteSliceRenderInfo> mutableList;
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        List<PageSliceInfo> findPageCacheSliceList = findPageCacheSliceList(virtualPageBoxInfo.getId());
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findPageCacheSliceList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (PageSliceInfo pageSliceInfo : findPageCacheSliceList) {
            SliceInfo copy = pageSliceInfo.getSliceInfo().copy();
            copy.setSafeBitmap(new SafeBitmap());
            SliceInfo contentSliceInfo = pageSliceInfo.getContentSliceInfo();
            arrayList.add(new NoteSliceRenderInfo(copy, contentSliceInfo != null ? contentSliceInfo.copy() : null));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    @NotNull
    public final NoteRenderArgs createNoteRenderArgs(@NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        NoteRenderArgs noteRenderArgs = new NoteRenderArgs(virtualPageBoxInfo);
        noteRenderArgs.setShowExcerptIndicator(MMKVNote.INSTANCE.getExcerptShapeAttrOption().get().getShowIndicator());
        noteRenderArgs.setSliceRenderInfoList(computeNoteSliceRenderInfoList(virtualPageBoxInfo));
        return noteRenderArgs;
    }

    public final void destroy() {
        this.view = null;
        Iterator<Map.Entry<String, IRenderHandler>> it2 = this.renderHandlerMap.entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().destroy();
        }
    }

    public final void displayBoxList(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList, boolean highQualityFirst) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        m40746l(visibleBoxList, false);
        invalidate();
        m40740e(editorBundle, visibleBoxList, highQualityFirst);
    }

    public final void displayBoxListAfterRefreshFullScreen(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        m40746l(visibleBoxList, false);
        RxjavaKt.takeLastOne(getPageHighQualityHandler().createDisplayBoxListObservable(editorBundle, visibleBoxList)).doOnNext(new C10338b()).subscribe();
        RxjavaKt.takeLastOne(getPageNormalHandler().createDisplayBoxListObservable(editorBundle, visibleBoxList)).flatMap(new C10339c(editorBundle, visibleBoxList)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.ekl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                RenderManager.m40735d(RenderManager.this);
            }
        }).subscribe();
        getPageSearchHighlightRenderHandler().createDisplayBoxListObservable(editorBundle, visibleBoxList).subscribe();
    }

    public final void displayBoxListAfterStopScale(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        cancelAllRenderRequest();
        m40746l(visibleBoxList, true);
        invalidate();
        m40736f(this, editorBundle, visibleBoxList, false, 4, null);
    }

    public final void displayBoxListAfterStopScroll(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        m40746l(visibleBoxList, true);
        invalidate();
        m40736f(this, editorBundle, visibleBoxList, false, 4, null);
    }

    public final void displayBoxListAnimation(@NotNull EditorBundle editorBundle, @NotNull EditorAnimatorContext context) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        List<BoxInfo> animateBoxList = context.getAnimateBoxList();
        List<BoxInfo> visibleBoxList = context.getVisibleBoxList();
        AnimateBoxArgs animateBoxArgs = new AnimateBoxArgs(context.getAnimateBoxList(), visibleBoxList, context.getMoveList(), context.getAddList(), context.getRemoveList());
        View editorView = EditorBundleKt.editorView(editorBundle);
        if (editorView == null) {
            return;
        }
        getPageHighQualityHandler().animateBoxChange(editorView, animateBoxArgs).flatMap(new C10343g(editorBundle, animateBoxList)).doOnNext(new C10344h(visibleBoxList)).doOnNext(new C10345i()).subscribe();
        getPageNormalHandler().animateBoxChange(editorView, animateBoxArgs).flatMap(new C10346j(editorBundle, animateBoxList)).doOnNext(new C10347k(visibleBoxList)).doOnNext(new C10348l(editorBundle)).subscribe();
        getPageBorderHandler().animateBoxChange(editorView, animateBoxArgs).flatMap(new C10349m(editorBundle, animateBoxList)).doOnNext(new C10350n(visibleBoxList)).doOnNext(new C10351o(editorBundle)).subscribe();
        getPageSearchHighlightRenderHandler().animateBoxChange(editorView, animateBoxArgs).flatMap(new C10340d(editorBundle, animateBoxList)).doOnNext(new C10341e(visibleBoxList)).doOnNext(new C10342f(editorBundle)).subscribe();
    }

    public final void displayScalingBoxList(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList, @NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        getPageHighQualityHandler().createDisplayScalingBoxListObservable(editorBundle, visibleBoxList).doOnNext(new C10355s()).subscribe();
        getPageNormalHandler().createDisplayScalingBoxListObservable(editorBundle, visibleBoxList).doOnNext(new C10356t(editorBundle)).subscribe();
        if (EditorBundleKt.getUiFeature(editorBundle).supportPageBorder()) {
            getPageBorderHandler().createDisplayScalingBoxListObservable(editorBundle, visibleBoxList).doOnNext(new C10357u(editorBundle)).subscribe();
        }
        getPageSearchHighlightRenderHandler().createDisplayScalingBoxListObservable(editorBundle, visibleBoxList).doOnNext(new C10358v(editorBundle)).subscribe();
        displayWithMatrix(matrix);
    }

    public final void displayScrollingBoxList(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        getPageHighQualityHandler().createDisplayScrollingBoxListObservable(editorBundle, visibleBoxList).doOnNext(new C10359w()).subscribe();
        getPageNormalHandler().createDisplayScrollingBoxListObservable(editorBundle, visibleBoxList).doOnNext(new C10360x(editorBundle)).subscribe();
        if (EditorBundleKt.getUiFeature(editorBundle).supportPageBorder()) {
            getPageBorderHandler().createDisplayScrollingBoxListObservable(editorBundle, visibleBoxList).doOnNext(new C10361y(editorBundle)).subscribe();
        }
        getPageSearchHighlightRenderHandler().createDisplayScrollingBoxListObservable(editorBundle, visibleBoxList).doOnNext(new C10362z(editorBundle)).subscribe();
    }

    public final void displayWithMatrix(@NotNull Matrix displayMatrix) {
        Intrinsics.checkNotNullParameter(displayMatrix, "displayMatrix");
        this.displayMatrix = displayMatrix;
        invalidate();
    }

    public final void draw(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        m40741g("draw");
        Iterator<Map.Entry<String, IRenderHandler>> it2 = getPageHandlerMap().entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().draw(bitmap);
        }
    }

    /* renamed from: e */
    public final void m40740e(EditorBundle editorBundle, List<BoxInfo> visibleBoxList, boolean highQualityFirst) {
        Observable<BoxInfo> doOnNext = getPageHighQualityHandler().createDisplayBoxListObservable(editorBundle, visibleBoxList).doOnNext(new C10353q());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<BoxInfo> doOnNext2 = getPageNormalHandler().createDisplayBoxListObservable(editorBundle, visibleBoxList).doOnNext(new C10354r(editorBundle));
        Intrinsics.checkNotNullExpressionValue(doOnNext2, "doOnNext(...)");
        if (highQualityFirst) {
            doOnNext.concatWith(doOnNext2).subscribe();
        } else {
            doOnNext.subscribe();
            doOnNext2.subscribe();
        }
        m40739c(editorBundle, visibleBoxList).subscribe();
        getPageSearchHighlightRenderHandler().createDisplayBoxListObservable(editorBundle, visibleBoxList).doOnNext(new C10352p(editorBundle)).subscribe();
    }

    @NotNull
    public final List<PageSliceInfo> findPageCacheSliceList(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        ArrayList arrayList = new ArrayList();
        PageSliceInfo pageSliceInfo = getPageHighQualityHandler().getPageSliceInfo(pageId);
        if (pageSliceInfo != null) {
            arrayList.add(pageSliceInfo);
        }
        PageSliceInfo pageSliceInfo2 = getPageNormalHandler().getPageSliceInfo(pageId);
        if (pageSliceInfo2 != null) {
            arrayList.add(pageSliceInfo2);
        }
        return arrayList;
    }

    @Nullable
    public final SliceInfo findPageNormalSlice(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        PageSliceInfo pageSliceInfo = getPageNormalHandler().getPageSliceInfo(pageId);
        if (pageSliceInfo != null) {
            return pageSliceInfo.getSliceInfo();
        }
        return null;
    }

    public final boolean flushShapeToPage(@NotNull ShapeFlushInfo shapeFlushInfo) {
        Intrinsics.checkNotNullParameter(shapeFlushInfo, "shapeFlushInfo");
        shapeFlushInfo.getShapeReference().getShape().ensureShapeUniqueId();
        Map<String, IRenderHandler> map = this.renderHandlerMap;
        ArrayList arrayList = new ArrayList(map.size());
        Iterator<Map.Entry<String, IRenderHandler>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            arrayList.add(Boolean.valueOf(it2.next().getValue().flushShapeToPage(shapeFlushInfo)));
        }
        boolean z = false;
        if (!arrayList.isEmpty()) {
            Iterator it3 = arrayList.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                if (((Boolean) it3.next()).booleanValue()) {
                    z = true;
                    break;
                }
            }
        }
        m40741g("flushShapeToPage, shape.id = " + shapeFlushInfo.shapeId() + ", result = " + z + ", clearCache = " + shapeFlushInfo.clearShapeCacheDataIf());
        return z;
    }

    /* renamed from: g */
    public final void m40741g(String msg) {
    }

    @Nullable
    public final SliceInfo getDisplayContentSlice(@NotNull BoxInfo virtualPageBoxInfo, boolean isHighQuality) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        if (isHighQuality) {
            PageSliceInfo pageSliceInfo = getPageHighQualityHandler().getPageSliceInfo(virtualPageBoxInfo.getId());
            if (pageSliceInfo != null) {
                return pageSliceInfo.getContentSliceInfo();
            }
            return null;
        }
        PageSliceInfo pageSliceInfo2 = getPageNormalHandler().getPageSliceInfo(virtualPageBoxInfo.getId());
        if (pageSliceInfo2 != null) {
            return pageSliceInfo2.getContentSliceInfo();
        }
        return null;
    }

    @NotNull
    public final String getDisplayDebugString() {
        Map map;
        StringBuilder sb = new StringBuilder();
        sb.append(AnyKt.toSimpleNameString(this) + '\n');
        map = MapsKt__MapsKt.toMap(this.renderHandlerMap);
        for (Map.Entry entry : map.entrySet()) {
            sb.append(((IRenderHandler) entry.getValue()).getDisplayDebugString() + '\n');
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @Nullable
    public final Matrix getDisplayMatrix() {
        return this.displayMatrix;
    }

    @NotNull
    public final Benchmark getDrawBenchmark() {
        return this.drawBenchmark;
    }

    @NotNull
    public final IRenderHandler getOtherRenderListHandler() {
        IRenderHandler iRenderHandler = this.renderHandlerMap.get(OTHER_RENDERER_LIST_HANDLER);
        Intrinsics.checkNotNull(iRenderHandler);
        return iRenderHandler;
    }

    @NotNull
    public final IRenderHandler getPageBorderHandler() {
        IRenderHandler iRenderHandler = this.renderHandlerMap.get(PAGE_BORDER_HANDLER);
        Intrinsics.checkNotNull(iRenderHandler);
        return iRenderHandler;
    }

    @NotNull
    public final Map<String, IRenderHandler> getPageHandlerMap() {
        Map<String, IRenderHandler> map = this.renderHandlerMap;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, IRenderHandler> entry : map.entrySet()) {
            if (INSTANCE.isPageHandler(entry.getKey())) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    @NotNull
    public final IRenderHandler getPageHighQualityHandler() {
        IRenderHandler iRenderHandler = this.renderHandlerMap.get(PAGE_HIGH_QUALITY_HANDLER);
        Intrinsics.checkNotNull(iRenderHandler);
        return iRenderHandler;
    }

    @NotNull
    public final IRenderHandler getPageNormalHandler() {
        IRenderHandler iRenderHandler = this.renderHandlerMap.get(PAGE_NORMAL_HANDLER);
        Intrinsics.checkNotNull(iRenderHandler);
        return iRenderHandler;
    }

    @Nullable
    public final IRenderNode getPageRenderNode(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        PageRenderNodeInfo pageRenderNodeInfo = getPageNormalHandler().getPageRenderNodeInfo(pageId);
        if (pageRenderNodeInfo != null) {
            return pageRenderNodeInfo.getRenderNode();
        }
        return null;
    }

    @NotNull
    public final IRenderHandler getPageSearchHighlightRenderHandler() {
        IRenderHandler iRenderHandler = this.renderHandlerMap.get(PAGE_SEARCH_HIGHLIGHT_HANDLER);
        Intrinsics.checkNotNull(iRenderHandler);
        return iRenderHandler;
    }

    public final float getScale() {
        return this.scale;
    }

    @Nullable
    public final View getView() {
        return this.view;
    }

    /* renamed from: h */
    public final void m40742h() {
    }

    /* renamed from: i */
    public final void m40743i() {
    }

    public final void invalidate() {
        View view = this.view;
        if (view != null) {
            view.invalidate();
        }
        m40741g("invalidate");
    }

    public final void invalidateNotVisiblePagesIf(@NotNull Collection<String> pageIdSet) {
        Intrinsics.checkNotNullParameter(pageIdSet, "pageIdSet");
        Iterator<Map.Entry<String, IRenderHandler>> it2 = getPageHandlerMap().entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().invalidateNotVisiblePagesIf(pageIdSet);
        }
    }

    public final void invalidateSliceByPages(@NotNull Collection<String> pageIdSet) {
        Intrinsics.checkNotNullParameter(pageIdSet, "pageIdSet");
        if (pageIdSet.isEmpty()) {
            return;
        }
        m40741g("invalidateSliceByPages: " + pageIdSet);
        Iterator<Map.Entry<String, IRenderHandler>> it2 = getPageHandlerMap().entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().invalidateSliceByPages(pageIdSet);
        }
    }

    public final boolean isPageHighQualityOutOfDate(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        PageRenderNodeInfo pageRenderNodeInfo = getPageHighQualityHandler().getPageRenderNodeInfo(pageId);
        if (pageRenderNodeInfo != null) {
            return pageRenderNodeInfo.getIsSliceOutOfDate();
        }
        return false;
    }

    public final boolean isPageRendered(@NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Map<String, IRenderHandler> pageHandlerMap = getPageHandlerMap();
        if (pageHandlerMap.isEmpty()) {
            return false;
        }
        Iterator<Map.Entry<String, IRenderHandler>> it2 = pageHandlerMap.entrySet().iterator();
        while (it2.hasNext()) {
            if (it2.next().getValue().isEnabledPageBorder(virtualPageBoxInfo)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: j */
    public final void m40744j(String msg) {
        LogUtils.wTag(AnyKt.toSimpleNameString(this), msg);
    }

    /* renamed from: k */
    public final void m40745k(IRenderHandler pageHandler, List<BoxInfo> visibleList) {
        this.displayMatrix = null;
        Iterator<T> it2 = visibleList.iterator();
        while (it2.hasNext()) {
            pageHandler.updateExistsRenderNode((BoxInfo) it2.next(), false);
        }
        pageHandler.evict(BoxInfoUtils.INSTANCE.toBoxIdSet(visibleList));
    }

    /* renamed from: l */
    public final void m40746l(List<BoxInfo> visibleList, boolean forceUpdate) {
        this.displayMatrix = null;
        for (BoxInfo boxInfo : visibleList) {
            Iterator<Map.Entry<String, IRenderHandler>> it2 = getPageHandlerMap().entrySet().iterator();
            while (it2.hasNext()) {
                it2.next().getValue().updateExistsRenderNode(boxInfo, forceUpdate);
            }
        }
        Set<String> boxIdSet = BoxInfoUtils.INSTANCE.toBoxIdSet(visibleList);
        Iterator<Map.Entry<String, IRenderHandler>> it3 = getPageHandlerMap().entrySet().iterator();
        while (it3.hasNext()) {
            it3.next().getValue().evict(boxIdSet);
        }
    }

    public final boolean lowLatencyFlushToPage(@NotNull ShapeFlushInfo shapeFlushInfo, boolean resetLowLatencyData) {
        Intrinsics.checkNotNullParameter(shapeFlushInfo, "shapeFlushInfo");
        shapeFlushInfo.getShapeReference().getShape().ensureShapeUniqueId();
        Map<String, IRenderHandler> map = this.renderHandlerMap;
        ArrayList arrayList = new ArrayList(map.size());
        Iterator<Map.Entry<String, IRenderHandler>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            arrayList.add(Boolean.valueOf(it2.next().getValue().lowLatencyFlushToPage(shapeFlushInfo)));
        }
        boolean z = false;
        if (!arrayList.isEmpty()) {
            Iterator it3 = arrayList.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                if (((Boolean) it3.next()).booleanValue()) {
                    z = true;
                    break;
                }
            }
        }
        if (z && resetLowLatencyData) {
            shapeFlushInfo.getShapeReference().getShape().resetLowLatencyData();
        }
        return z;
    }

    /* renamed from: n */
    public final void m40747n(EditorBundle editorBundle, BoxInfo virtualPageBoxInfo) {
        if (EditorBundleKt.getUiFeature(editorBundle).supportPageBorder()) {
            getPageBorderHandler().setPageVisible(virtualPageBoxInfo, isPageRendered(virtualPageBoxInfo));
        }
    }

    public final void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        m40743i();
        this.drawBenchmark.restart();
        if (canvas.isHardwareAccelerated()) {
            int save = canvas.save();
            canvas.concat(this.displayMatrix);
            Iterator<Map.Entry<String, IRenderHandler>> it2 = getPageHandlerMap().entrySet().iterator();
            while (it2.hasNext()) {
                it2.next().getValue().onDraw(canvas);
            }
            canvas.restoreToCount(save);
            getOtherRenderListHandler().onDraw(canvas);
            m40742h();
        }
    }

    public final void preRenderBoxList(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> boxList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(boxList, "boxList");
        m40741g("preRenderBoxList, size = " + boxList.size());
        if (boxList.isEmpty()) {
            return;
        }
        getPageNormalHandler().createPreRenderBoxListObservable(editorBundle, boxList).subscribe();
    }

    public final void removeRenderSilent(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        removeRenderer(key, false);
    }

    public final void removeRenderer(@NotNull String key, boolean invalidate) {
        Intrinsics.checkNotNullParameter(key, "key");
        getOtherRenderListHandler().removeRenderer(key);
        if (invalidate) {
            invalidate();
        }
    }

    public final boolean removeVerifyId(@NotNull Shape shape, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Map<String, IRenderHandler> map = this.renderHandlerMap;
        ArrayList arrayList = new ArrayList(map.size());
        Iterator<Map.Entry<String, IRenderHandler>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            arrayList.add(Boolean.valueOf(it2.next().getValue().removeVerifyId(shape, virtualBoxInfo)));
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            if (((Boolean) it3.next()).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public final void resizeCache(@NotNull Size viewSize) {
        Intrinsics.checkNotNullParameter(viewSize, "viewSize");
        Iterator<Map.Entry<String, IRenderHandler>> it2 = getPageHandlerMap().entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().resizeCache(Size.copy$default(viewSize, 0, 0, 3, null));
        }
    }

    public final void safeClearAllNoteSliceCache() {
        Iterator<Map.Entry<String, IRenderHandler>> it2 = getPageHandlerMap().entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().safeClearAllNoteSliceCache();
        }
    }

    public final void safeClearAllSliceCache() {
        Iterator<Map.Entry<String, IRenderHandler>> it2 = getPageHandlerMap().entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().safeClearAllSliceCache();
        }
    }

    public final void safeClearPageNoteSliceCache(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Iterator<Map.Entry<String, IRenderHandler>> it2 = getPageHandlerMap().entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().safeClearPageNoteSliceCache(pageId);
        }
    }

    public final void setBackground(@Nullable GeoLayout geoLayout) {
        getPageNormalHandler().setBackground(geoLayout);
    }

    public final void setDisplayMatrix(@Nullable Matrix matrix) {
        this.displayMatrix = matrix;
    }

    public final void setScale(float f) {
        this.scale = f;
    }

    public final void setView(@Nullable View view) {
        this.view = view;
    }

    public final void updateEditorView(@Nullable View view, @NotNull EventBus eventBus) {
        Intrinsics.checkNotNullParameter(eventBus, "eventBus");
        this.view = view;
        if (view == null || !(view instanceof EditorView)) {
            return;
        }
        EditorView editorView = (EditorView) view;
        editorView.setRenderManager(this);
        editorView.setEventBus(eventBus);
    }

    @NotNull
    public final Size viewSize() {
        Size default_size = AppConfig.INSTANCE.getDEFAULT_SIZE();
        View view = this.view;
        return (view == null || view.getWidth() == 0 || view.getHeight() == 0) ? default_size : new Size(view.getWidth(), view.getHeight());
    }

    @NotNull
    public final RectF viewportRect() {
        return viewSize().toRectF();
    }

    @NotNull
    public final List<BoxInfo> visibleBoxList() {
        Map mutableMap;
        List<BoxInfo> list;
        mutableMap = MapsKt__MapsKt.toMutableMap(CollectionKt.toMap(getPageNormalHandler().displayBoxList(), new Function1<BoxInfo, String>() { // from class: com.onyx.android.sdk.universal.editor.display.RenderManager$visibleBoxList$idBoxMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getId();
            }
        }));
        for (BoxInfo boxInfo : getPageHighQualityHandler().displayBoxList()) {
            m40738b((BoxInfo) mutableMap.put(boxInfo.getId(), boxInfo), boxInfo);
        }
        LogThrottler.printLogIf$default(this.logThrottler, null, new Function1<String, Unit>() { // from class: com.onyx.android.sdk.universal.editor.display.RenderManager$visibleBoxList$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                RenderManager.this.m40744j(it2);
            }
        }, 1, null);
        list = CollectionsKt___CollectionsKt.toList(mutableMap.values());
        return list;
    }
}
