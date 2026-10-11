package com.onyx.android.sdk.universal.editor.display;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.View;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.MarginPixel;
import com.onyx.android.sdk.geometry.data.SizeConfig;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.geometry.data.SliceKt;
import com.onyx.android.sdk.geometry.data.SliceLruCache;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeRender;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.display.DisplayRenderHighQualitySliceAction;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.config.DebugConfig;
import com.onyx.android.sdk.universal.editor.config.ScaleConfig;
import com.onyx.android.sdk.universal.editor.data.AnimateBoxArgs;
import com.onyx.android.sdk.universal.editor.data.PageRenderNodeInfo;
import com.onyx.android.sdk.universal.editor.data.PageSliceInfo;
import com.onyx.android.sdk.universal.editor.data.ShapeFlushInfo;
import com.onyx.android.sdk.universal.editor.data.UpdatePageRenderNodeSliceResult;
import com.onyx.android.sdk.universal.editor.display.IRenderHandler;
import com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.display.node.IRenderNode;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
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
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000ô\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0001^B\u0007¢\u0006\u0004\b~\u0010\u007fJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u000e\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0002J&\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0014\b\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011H\u0002J&\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0014\b\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011H\u0002J4\u0010\u0019\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\u000f2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011H\u0002J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0016\u0010#\u001a\b\u0012\u0004\u0012\u00020\u001d0\"2\u0006\u0010!\u001a\u00020 H\u0002J\u0016\u0010&\u001a\u00020\u00022\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001d0$H\u0002J\b\u0010'\u001a\u00020\u0002H\u0002J\u0016\u0010)\u001a\u00020\u00022\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001d0$H\u0002J\u0010\u0010*\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0010\u0010+\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0006\u0010-\u001a\u00020,J\u0010\u0010.\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0016J\u0010\u00101\u001a\u00020\u00022\u0006\u00100\u001a\u00020/H\u0016J\u0010\u00104\u001a\u00020\u00022\b\u00103\u001a\u0004\u0018\u000102J\u0012\u00107\u001a\u0004\u0018\u00010\u00072\u0006\u00106\u001a\u000205H\u0016J\u0012\u00108\u001a\u0004\u0018\u0001022\u0006\u00106\u001a\u000205H\u0016J\u0010\u00109\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u0010\u0010:\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010;\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0006\u0010=\u001a\u00020<J\u0018\u0010A\u001a\u00020\u00132\u0006\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020\u001dH\u0016J\b\u0010B\u001a\u00020\u0002H\u0016J$\u0010E\u001a\b\u0012\u0004\u0012\u00020\u001d0\"2\u0006\u0010D\u001a\u00020C2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001d0$H\u0016J$\u0010F\u001a\b\u0012\u0004\u0012\u00020\u001d0\"2\u0006\u0010D\u001a\u00020C2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001d0$H\u0016J$\u0010G\u001a\b\u0012\u0004\u0012\u00020\u001d0\"2\u0006\u0010D\u001a\u00020C2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001d0$H\u0016J\u001c\u0010L\u001a\u0006\u0012\u0002\b\u00030\"2\u0006\u0010I\u001a\u00020H2\u0006\u0010K\u001a\u00020JH\u0016J\u0018\u0010N\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010M\u001a\u00020\u0013H\u0016J\u000e\u0010O\u001a\b\u0012\u0004\u0012\u00020\u001d0$H\u0016J\u0016\u0010R\u001a\u00020\u00022\f\u0010Q\u001a\b\u0012\u0004\u0012\u0002050PH\u0016J\b\u0010S\u001a\u00020\u0002H\u0016J\u0010\u0010T\u001a\u00020\u00022\u0006\u00106\u001a\u000205H\u0016J\b\u0010U\u001a\u00020\u0002H\u0016J\b\u0010V\u001a\u00020\u0002H\u0016J\b\u0010W\u001a\u000205H\u0016J\b\u0010X\u001a\u00020\u0002H\u0016J\b\u0010Y\u001a\u00020\u0002H\u0016J\u0010\u0010\\\u001a\u00020\u00022\u0006\u0010[\u001a\u00020ZH\u0016R\u0014\u0010`\u001a\u00020]8\u0002X\u0082D¢\u0006\u0006\n\u0004\b^\u0010_R\u0014\u0010b\u001a\u00020]8\u0002X\u0082D¢\u0006\u0006\n\u0004\ba\u0010_R\u0014\u0010f\u001a\u00020c8\u0002X\u0082D¢\u0006\u0006\n\u0004\bd\u0010eR\u0014\u0010h\u001a\u00020]8\u0002X\u0082D¢\u0006\u0006\n\u0004\bg\u0010_R2\u0010m\u001a\u001e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020\u00070ij\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020\u0007`j8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\u001b\u0010s\u001a\u00020n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bo\u0010p\u001a\u0004\bq\u0010rR&\u0010w\u001a\u0014\u0012\u0004\u0012\u000205\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0u0t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010vR\u001a\u0010{\u001a\b\u0012\u0004\u0012\u00020 0x8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\by\u0010zR\u0016\u0010}\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010|¨\u0006\u0080\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;", "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;", "", "v", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Lcom/onyx/android/sdk/geometry/data/SliceLruCache;", "x", "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;", "pageNodeInfo", "A", "z", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "m", "Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;", "shapeFlushInfo", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "", "render", "s", "q", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "slice", "p", "Landroid/graphics/Matrix;", "i", "j", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "E", "Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;", "params", "Lio/reactivex/rxjava3/core/Observable;", C4921e.f26537n, "", "boxList", "y", "w", "visibleBoxList", "B", GoogleApiAvailabilityLight.f29016b, C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;", "renderRequestManager", "onDraw", "Landroid/graphics/Bitmap;", "bitmap", "draw", "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;", "pageSliceInfo", "refreshPage", "", CouchFieldKey.KEY_TOC_PAGE_ID, "getPageRenderNodeInfo", "getPageSliceInfo", "isEnabledPageBorder", "flushShapeToPage", "lowLatencyFlushToPage", "Landroid/graphics/RectF;", "viewportRectF", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "virtualBoxInfo", "removeVerifyId", "clearDisplay", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "createDisplayScalingBoxListObservable", "createDisplayScrollingBoxListObservable", "createDisplayBoxListObservable", "Landroid/view/View;", "hostView", "Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;", "args", "animateBoxChange", "forceUpdate", "updateExistsRenderNode", "displayBoxList", "", "keepList", "evict", "safeClearAllNoteSliceCache", "safeClearPageNoteSliceCache", "safeClearAllSliceCache", "cancelAllRenderRequest", "getDisplayDebugString", "destroy", "clearShapeFlushInfo", "Lcom/onyx/android/sdk/base/data/Size;", "viewSize", "resizeCache", "", "a", "I", "PAGE_BITMAP_LAYER_COUNT", "b", "MAX_VIEWPORT_CACHE_COUNT", "", "c", "J", "DISPLAY_FILTER_TIME_MILL", "d", "PENDING_RENDER_TASK_MAX_COUNT", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "e", "Ljava/util/LinkedHashMap;", "pageRenderNodeMap", "Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;", C6997f.f39671c, "Lkotlin/Lazy;", "getSliceStateManager", "()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;", "sliceStateManager", "", "", "Ljava/util/Map;", "shapeFlushInfoMap", "Lcom/onyx/android/sdk/base/rx/RxFilter;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/rx/RxFilter;", "displayFilter", Constants.HASIDCALL_INDEX_SIG, "isAnimating", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPageHighQualityRenderHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageHighQualityRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,550:1\n526#2:551\n511#2,6:552\n215#3,2:558\n215#3,2:560\n215#3,2:574\n215#3,2:592\n76#3:594\n96#3,5:595\n766#4:562\n857#4,2:563\n1855#4,2:565\n1855#4,2:567\n766#4:569\n857#4,2:570\n1855#4,2:572\n766#4:576\n857#4,2:577\n1855#4,2:579\n1855#4,2:581\n766#4:583\n857#4,2:584\n1855#4,2:586\n1549#4:588\n1620#4,3:589\n1855#4,2:600\n*S KotlinDebug\n*F\n+ 1 PageHighQualityRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler\n*L\n80#1:551\n80#1:552,6\n81#1:558,2\n92#1:560,2\n351#1:574,2\n509#1:592,2\n527#1:594\n527#1:595,5\n143#1:562\n143#1:563,2\n146#1:565,2\n152#1:567,2\n153#1:569\n153#1:570,2\n154#1:572,2\n388#1:576\n388#1:577,2\n395#1:579,2\n412#1:581,2\n437#1:583\n437#1:584,2\n438#1:586,2\n474#1:588\n474#1:589,3\n528#1:600,2\n*E\n"})
/* loaded from: classes8.dex */
public final class PageHighQualityRenderHandler implements IRenderHandler {

    /* renamed from: a, reason: from kotlin metadata */
    public final int PAGE_BITMAP_LAYER_COUNT = 2;

    /* renamed from: b, reason: from kotlin metadata */
    public final int MAX_VIEWPORT_CACHE_COUNT = 2;

    /* renamed from: c, reason: from kotlin metadata */
    public final long DISPLAY_FILTER_TIME_MILL = 200;

    /* renamed from: d, reason: from kotlin metadata */
    public final int PENDING_RENDER_TASK_MAX_COUNT = 1;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public LinkedHashMap<String, PageRenderNodeInfo> pageRenderNodeMap = new LinkedHashMap<>();

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy sliceStateManager;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Map<String, List<ShapeFlushInfo>> shapeFlushInfoMap;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RxFilter<C10315a> displayFilter;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean isAnimating;

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler$a */
    /* loaded from: classes8.dex */
    public static final class C10315a {

        /* renamed from: a */
        @NotNull
        public final EditorBundle f51383a;

        /* renamed from: b */
        @NotNull
        public final List<BoxInfo> f51384b;

        public C10315a(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
            this.f51383a = editorBundle;
            this.f51384b = visibleBoxList;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: d */
        public static /* synthetic */ C10315a m40656d(C10315a c10315a, EditorBundle editorBundle, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                editorBundle = c10315a.f51383a;
            }
            if ((i & 2) != 0) {
                list = c10315a.f51384b;
            }
            return c10315a.m40659c(editorBundle, list);
        }

        @NotNull
        /* renamed from: a */
        public final EditorBundle m40657a() {
            return this.f51383a;
        }

        @NotNull
        /* renamed from: b */
        public final List<BoxInfo> m40658b() {
            return this.f51384b;
        }

        @NotNull
        /* renamed from: c */
        public final C10315a m40659c(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
            return new C10315a(editorBundle, visibleBoxList);
        }

        @NotNull
        /* renamed from: e */
        public final EditorBundle m40660e() {
            return this.f51383a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C10315a)) {
                return false;
            }
            C10315a c10315a = (C10315a) obj;
            return Intrinsics.areEqual(this.f51383a, c10315a.f51383a) && Intrinsics.areEqual(this.f51384b, c10315a.f51384b);
        }

        @NotNull
        /* renamed from: f */
        public final List<BoxInfo> m40661f() {
            return this.f51384b;
        }

        public int hashCode() {
            return (this.f51383a.hashCode() * 31) + this.f51384b.hashCode();
        }

        @NotNull
        public String toString() {
            return "DisplayBoxListParams(editorBundle=" + this.f51383a + ", visibleBoxList=" + this.f51384b + ')';
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler$b */
    /* loaded from: classes8.dex */
    public static final class C10316b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ AnimateBoxArgs f51386f;

        public C10316b(AnimateBoxArgs animateBoxArgs) {
            this.f51386f = animateBoxArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull PageHighQualityRenderHandler it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageHighQualityRenderHandler.this.m40654y(this.f51386f.getAnimateBoxList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler$c */
    /* loaded from: classes8.dex */
    public static final class C10317c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RenderNodeAnimator f51387e;

        /* renamed from: f */
        public final /* synthetic */ PageHighQualityRenderHandler f51388f;

        /* renamed from: g */
        public final /* synthetic */ AnimateBoxArgs f51389g;

        public C10317c(RenderNodeAnimator renderNodeAnimator, PageHighQualityRenderHandler pageHighQualityRenderHandler, AnimateBoxArgs animateBoxArgs) {
            this.f51387e = renderNodeAnimator;
            this.f51388f = pageHighQualityRenderHandler;
            this.f51389g = animateBoxArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull PageHighQualityRenderHandler it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f51387e.boxAnimationObservable(this.f51388f.pageRenderNodeMap, this.f51389g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler$d */
    /* loaded from: classes8.dex */
    public static final class C10318d<T> implements Consumer {
        public C10318d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageHighQualityRenderHandler.this.isAnimating = false;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler$e */
    /* loaded from: classes8.dex */
    public static final class C10319e<T> implements Consumer {
        public C10319e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageHighQualityRenderHandler.this.m40641E(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler$f */
    /* loaded from: classes8.dex */
    public static final class C10321f<T> implements Consumer {
        public C10321f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageHighQualityRenderHandler.this.m40641E(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler$g */
    /* loaded from: classes8.dex */
    public static final class C10322g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f51393e;

        /* renamed from: f */
        public final /* synthetic */ PageHighQualityRenderHandler f51394f;

        /* renamed from: com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler$g$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public static final a<T, R> f51395e = new a<>();

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final BoxInfo apply(@NotNull DisplayRenderHighQualitySliceAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getVirtualPageBoxInfo();
            }
        }

        public C10322g(EditorBundle editorBundle, PageHighQualityRenderHandler pageHighQualityRenderHandler) {
            this.f51393e = editorBundle;
            this.f51394f = pageHighQualityRenderHandler;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull BoxInfo boxInfo) {
            Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
            return new DisplayRenderHighQualitySliceAction(this.f51393e, this.f51394f, boxInfo.copy()).build().map(a.f51395e);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler$h */
    /* loaded from: classes8.dex */
    public static final class C10323h<T> implements Consumer {
        public C10323h() {
        }

        /* renamed from: c */
        public static final void m40669c(C10315a it2) {
            Intrinsics.checkNotNullParameter(it2, "$it");
            EditorBundleKt.renderManager(it2.m40660e()).invalidate();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull final C10315a it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageHighQualityRenderHandler.this.log("displayFilter, onNext");
            PageHighQualityRenderHandler.this.renderRequestManager().cancelLimitPendingRequestList(PageHighQualityRenderHandler.this.PENDING_RENDER_TASK_MAX_COUNT);
            Observable<T> doOnComplete = PageHighQualityRenderHandler.this.m40645k(it2).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.jsk
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    PageHighQualityRenderHandler.C10323h.m40669c(PageHighQualityRenderHandler.C10315a.this);
                }
            });
            Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
            RxjavaKt.subscribeWithDefault$default(doOnComplete, null, null, null, 7, null);
        }
    }

    public PageHighQualityRenderHandler() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<SliceStateManager>() { // from class: com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler$sliceStateManager$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SliceStateManager invoke() {
                return new SliceStateManager(AnyKt.toSimpleNameString(PageHighQualityRenderHandler.this));
            }
        });
        this.sliceStateManager = lazy;
        this.shapeFlushInfoMap = new LinkedHashMap();
        this.displayFilter = new RxFilter<>();
        m40651v();
    }

    /* renamed from: f */
    public static final void m40630f(PageHighQualityRenderHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.isAnimating = false;
    }

    /* renamed from: h */
    public static final void m40631h(PageHighQualityRenderHandler this$0, EditorBundle editorBundle, List visibleBoxList) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(editorBundle, "$editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "$visibleBoxList");
        this$0.displayFilter.onNext(new C10315a(editorBundle, visibleBoxList));
    }

    /* renamed from: l */
    public static final void m40632l(PageHighQualityRenderHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getSliceStateManager().removeNotDisplayCache();
        this$0.m40652w();
    }

    /* renamed from: o */
    public static final PageRenderNodeInfo m40633o(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (PageRenderNodeInfo) tmp0.invoke(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: r */
    public static /* synthetic */ boolean m40634r(PageHighQualityRenderHandler pageHighQualityRenderHandler, final ShapeFlushInfo shapeFlushInfo, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1<RenderContext, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler$flushShapeToPageImpl$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull RenderContext it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(ShapeFlushInfo.this.getShapeReference().getShape().lowLatencyRender(it2));
                }
            };
        }
        return pageHighQualityRenderHandler.m40649q(shapeFlushInfo, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: t */
    public static /* synthetic */ boolean m40635t(PageHighQualityRenderHandler pageHighQualityRenderHandler, final ShapeFlushInfo shapeFlushInfo, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1<RenderContext, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler$flushShapeToPageWithStash$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull RenderContext it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(ShapeFlushInfo.this.getShapeReference().getShape().lowLatencyRender(it2));
                }
            };
        }
        return pageHighQualityRenderHandler.m40650s(shapeFlushInfo, function1);
    }

    /* renamed from: u */
    public static final List m40636u(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* renamed from: A */
    public final void m40637A(PageRenderNodeInfo pageNodeInfo) {
        log("removeDisplayBitmap, id = " + pageNodeInfo.getVirtualPageBoxInfo().getId() + ", contentNote = " + getSliceStateManager().removeDisplayBitmap(pageNodeInfo.getSliceInfo()) + ", content = " + getSliceStateManager().removeDisplayBitmap(pageNodeInfo.getContentSliceInfo()));
    }

    /* renamed from: B */
    public final void m40638B(List<BoxInfo> visibleBoxList) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : visibleBoxList) {
            if (!ScaleConfig.INSTANCE.isEnabledHighQuality((BoxInfo) obj, viewportRectF())) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            PageRenderNodeInfo remove = this.pageRenderNodeMap.remove(((BoxInfo) it2.next()).getId());
            if (remove != null) {
                Intrinsics.checkNotNull(remove);
                m40637A(remove);
                remove.clearRenderNode();
                log("actual scale < maxScale, remove node, rnId = " + remove.getRenderNode().getUniqueId() + ", pageId = " + remove.getVirtualPageBoxInfo().getId());
            }
        }
    }

    /* renamed from: C */
    public final void m40639C(PageRenderNodeInfo pageNodeInfo) {
        IRenderNode renderNode = pageNodeInfo.getRenderNode();
        if (!this.isAnimating) {
            renderNode.setPosition(pageNodeInfo.toRenderNodePositionRect());
        }
        try {
            m40646m(pageNodeInfo, renderNode.beginRecording());
            renderNode.endRecording();
            log("renderPageNode, rnId = " + renderNode.getUniqueId());
        } catch (Throwable th) {
            renderNode.endRecording();
            throw th;
        }
    }

    /* renamed from: D */
    public final void m40640D() {
        this.displayFilter.dispose();
        m40651v();
    }

    /* renamed from: E */
    public final boolean m40641E(BoxInfo virtualPageBoxInfo) {
        PageRenderNodeInfo pageRenderNodeInfo = this.pageRenderNodeMap.get(virtualPageBoxInfo.getId());
        if (pageRenderNodeInfo == null) {
            return false;
        }
        return pageRenderNodeInfo.updateRenderNodeBoxInfo(virtualPageBoxInfo);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean addNoteSearchBeanList(@NotNull List<NoteSearchBean> list) {
        return IRenderHandler.DefaultImpls.addNoteSearchBeanList(this, list);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void addRenderer(@NotNull String str, @NotNull RenderManager.Renderer renderer) {
        IRenderHandler.DefaultImpls.addRenderer(this, str, renderer);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<?> animateBoxChange(@NotNull View hostView, @NotNull AnimateBoxArgs args) {
        Intrinsics.checkNotNullParameter(hostView, "hostView");
        Intrinsics.checkNotNullParameter(args, "args");
        if (this.isAnimating) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        this.isAnimating = true;
        Observable<?> doFinally = Observable.just(this).doOnNext(new C10316b(args)).flatMap(new C10317c(new RenderNodeAnimator(hostView), this, args)).doOnNext(new C10318d()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.fsk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PageHighQualityRenderHandler.m40630f(PageHighQualityRenderHandler.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void cancelAllRenderRequest() {
        renderRequestManager().cancelAllRequest();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void clearDisplay() {
        for (Map.Entry<String, PageRenderNodeInfo> entry : this.pageRenderNodeMap.entrySet()) {
            entry.getValue().getRenderNode().discardDisplayList();
            m40637A(entry.getValue());
        }
        this.pageRenderNodeMap.clear();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean clearNoteSearchBeanList() {
        return IRenderHandler.DefaultImpls.clearNoteSearchBeanList(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void clearRenderer() {
        IRenderHandler.DefaultImpls.clearRenderer(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void clearShapeFlushInfo() {
        if (this.shapeFlushInfoMap.isEmpty()) {
            return;
        }
        Map<String, List<ShapeFlushInfo>> map = this.shapeFlushInfoMap;
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, List<ShapeFlushInfo>>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, it2.next().getValue());
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((ShapeFlushInfo) it3.next()).forceClearShapeCacheData();
        }
        log("clearShapeFlushInfo, size = " + this.shapeFlushInfoMap.size());
        this.shapeFlushInfoMap.clear();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createDisplayBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        log("displayBoxList, resetDisplayFilter");
        m40640D();
        cancelAllRenderRequest();
        return m40645k(new C10315a(editorBundle, visibleBoxList));
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createDisplayScalingBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        cancelAllRenderRequest();
        evict(BoxInfoUtils.INSTANCE.toBoxIdSet(visibleBoxList));
        Observable<BoxInfo> doOnNext = Observable.fromIterable(visibleBoxList).doOnNext(new C10319e());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createDisplayScrollingBoxListObservable(@NotNull final EditorBundle editorBundle, @NotNull final List<BoxInfo> visibleBoxList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        evict(BoxInfoUtils.INSTANCE.toBoxIdSet(visibleBoxList));
        Observable<BoxInfo> doOnComplete = Observable.fromIterable(visibleBoxList).doOnNext(new C10321f()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.esk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PageHighQualityRenderHandler.m40631h(PageHighQualityRenderHandler.this, editorBundle, visibleBoxList);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
        return doOnComplete;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createPreRenderBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> list) {
        return IRenderHandler.DefaultImpls.createPreRenderBoxListObservable(this, editorBundle, list);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void destroy() {
        this.displayFilter.dispose();
        clearDisplay();
        getSliceStateManager().clear();
        clearShapeFlushInfo();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public List<BoxInfo> displayBoxList() {
        int collectionSizeOrDefault;
        Collection<PageRenderNodeInfo> values = this.pageRenderNodeMap.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        Collection<PageRenderNodeInfo> collection = values;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(collection, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = collection.iterator();
        while (it2.hasNext()) {
            arrayList.add(((PageRenderNodeInfo) it2.next()).getVirtualPageBoxInfo());
        }
        return arrayList;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void draw(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Canvas canvas = new Canvas(bitmap);
        for (Map.Entry<String, PageRenderNodeInfo> entry : this.pageRenderNodeMap.entrySet()) {
            float translationX = entry.getValue().getRenderNode().getTranslationX();
            float translationY = entry.getValue().getRenderNode().getTranslationY();
            canvas.translate(translationX, translationY);
            canvas.save();
            m40646m(entry.getValue(), canvas);
            canvas.restore();
            canvas.translate(-translationX, -translationY);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void evict(@NotNull Set<String> keepList) {
        Map map;
        PageRenderNodeInfo remove;
        Intrinsics.checkNotNullParameter(keepList, "keepList");
        map = MapsKt__MapsKt.toMap(this.pageRenderNodeMap);
        for (Map.Entry entry : map.entrySet()) {
            if (!keepList.contains(entry.getKey()) && (remove = this.pageRenderNodeMap.remove(entry.getKey())) != null) {
                remove.getRenderNode().discardDisplayList();
                m40637A(remove);
                log("evict, " + remove.getVirtualPageBoxInfo().getId());
            }
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean flushShapeToPage(@NotNull ShapeFlushInfo shapeFlushInfo) {
        Intrinsics.checkNotNullParameter(shapeFlushInfo, "shapeFlushInfo");
        return m40635t(this, shapeFlushInfo, null, 2, null);
    }

    /* renamed from: g */
    public final void m40642g(ShapeFlushInfo shapeFlushInfo) {
        log(shapeFlushInfo.shapeId() + ", clearShapeCacheData = " + shapeFlushInfo.clearShapeCacheDataIf());
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public String getDisplayDebugString() {
        Map map;
        StringBuilder sb = new StringBuilder();
        sb.append(AnyKt.toSimpleNameString(this) + '\n');
        sb.append("pageRenderNodeMap.size = " + this.pageRenderNodeMap.size() + '\n');
        map = MapsKt__MapsKt.toMap(this.pageRenderNodeMap);
        for (Map.Entry entry : map.entrySet()) {
            sb.append(((PageRenderNodeInfo) entry.getValue()).toDebugString() + '\n');
        }
        sb.append(", cacheSize = " + getSliceStateManager().getSimpleDebugString() + '\n');
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @Nullable
    public PageRenderNodeInfo getPageRenderNodeInfo(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return this.pageRenderNodeMap.get(pageId);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @Nullable
    public PageSliceInfo getPageSliceInfo(@NotNull String pageId) {
        SliceInfo sliceInfo;
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        PageRenderNodeInfo pageRenderNodeInfo = this.pageRenderNodeMap.get(pageId);
        if (pageRenderNodeInfo == null || (sliceInfo = pageRenderNodeInfo.getSliceInfo()) == null) {
            return null;
        }
        if (!pageRenderNodeInfo.getIsSliceOutOfDate()) {
            return new PageSliceInfo(pageRenderNodeInfo.getVirtualPageBoxInfo(), sliceInfo, pageRenderNodeInfo.getContentSliceInfo());
        }
        log("id = " + pageId + ", isSliceOutOfDate, return null");
        return null;
    }

    @NotNull
    public final SliceStateManager getSliceStateManager() {
        return (SliceStateManager) this.sliceStateManager.getValue();
    }

    /* renamed from: i */
    public final Matrix m40643i(PageRenderNodeInfo pageNodeInfo) {
        Matrix m40644j = m40644j(pageNodeInfo);
        m40644j.postTranslate(pageNodeInfo.getRenderNode().getTranslationX(), pageNodeInfo.getRenderNode().getTranslationY());
        return MatrixKt.invertMatrix(m40644j);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void invalidateNotVisiblePagesIf(@NotNull Collection<String> collection) {
        IRenderHandler.DefaultImpls.invalidateNotVisiblePagesIf(this, collection);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void invalidateSliceByPages(@NotNull Collection<String> collection) {
        IRenderHandler.DefaultImpls.invalidateSliceByPages(this, collection);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean isEnabledPageBorder(@NotNull BoxInfo virtualPageBoxInfo) {
        SliceInfo sliceInfo;
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        PageRenderNodeInfo pageRenderNodeInfo = this.pageRenderNodeMap.get(virtualPageBoxInfo.getId());
        if (pageRenderNodeInfo == null || (sliceInfo = pageRenderNodeInfo.getSliceInfo()) == null) {
            return false;
        }
        return SliceKt.isValidContentNote(sliceInfo);
    }

    /* renamed from: j */
    public final Matrix m40644j(PageRenderNodeInfo pageNodeInfo) {
        BoxInfo noteInfo;
        SliceInfo sliceInfo = pageNodeInfo.getSliceInfo();
        if (sliceInfo != null && (noteInfo = pageNodeInfo.getVirtualPageBoxInfo().getNoteInfo()) != null) {
            RectF sliceRectFInPage = sliceInfo.getSliceRectFInPage();
            float actualScale = noteInfo.getActualScale() / sliceInfo.getBoxInfo().getActualScale();
            Matrix matrix = new Matrix();
            matrix.postTranslate(sliceRectFInPage.left, sliceRectFInPage.top);
            matrix.postScale(actualScale, actualScale);
            MarginPixel marginDisplayPixel = pageNodeInfo.getVirtualPageBoxInfo().getMarginDisplayPixel();
            matrix.postTranslate(((RectF) marginDisplayPixel).left, ((RectF) marginDisplayPixel).top);
            return matrix;
        }
        return new Matrix();
    }

    /* renamed from: k */
    public final Observable<BoxInfo> m40645k(C10315a params) {
        EditorBundle m40660e = params.m40660e();
        List<BoxInfo> m40661f = params.m40661f();
        m40638B(m40661f);
        ArrayList arrayList = new ArrayList();
        for (Object obj : m40661f) {
            if (ScaleConfig.INSTANCE.isEnabledHighQuality((BoxInfo) obj, viewportRectF())) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            clearDisplay();
            safeClearAllSliceCache();
            Observable<BoxInfo> fromIterable = Observable.fromIterable(arrayList);
            Intrinsics.checkNotNullExpressionValue(fromIterable, "fromIterable(...)");
            return fromIterable;
        }
        evict(BoxInfoUtils.INSTANCE.toBoxIdSet(arrayList));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            m40647n((BoxInfo) it2.next());
        }
        log("pageCount = " + this.pageRenderNodeMap.size());
        Observable<BoxInfo> doOnComplete = Observable.fromIterable(arrayList).flatMap(new C10322g(m40660e, this)).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.isk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PageHighQualityRenderHandler.m40632l(PageHighQualityRenderHandler.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
        return doOnComplete;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void log(@NotNull String str) {
        IRenderHandler.DefaultImpls.log(this, str);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void logW(@NotNull String str) {
        IRenderHandler.DefaultImpls.logW(this, str);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean lowLatencyFlushToPage(@NotNull final ShapeFlushInfo shapeFlushInfo) {
        Intrinsics.checkNotNullParameter(shapeFlushInfo, "shapeFlushInfo");
        return m40650s(shapeFlushInfo, new Function1<RenderContext, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler$lowLatencyFlushToPage$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RenderContext it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(ShapeRender.DefaultImpls.lowLatencyFlush$default(ShapeFlushInfo.this.getShapeReference().getShape(), it2, false, 2, null));
            }
        });
    }

    /* renamed from: m */
    public final void m40646m(PageRenderNodeInfo pageNodeInfo, Canvas canvas) {
        SliceInfo sliceInfo = pageNodeInfo.getSliceInfo();
        if (sliceInfo == null) {
            return;
        }
        if (!SliceKt.isValidContentNote(sliceInfo)) {
            log("drawPageNodeImpl fail, invalid bitmap, rnId = " + pageNodeInfo.getRenderNode().getUniqueId() + ", sliceRectFInPage = " + sliceInfo.getSliceRectFInPage().toShortString());
            return;
        }
        Bitmap bitmap = sliceInfo.getSafeBitmap().getBitmap();
        if (BitmapKt.isValid(bitmap)) {
            Matrix m40644j = m40644j(pageNodeInfo);
            RectF boundingRectF = BitmapKt.boundingRectF(bitmap);
            m40644j.mapRect(boundingRectF);
            canvas.clipRect(boundingRectF);
            canvas.drawBitmap(bitmap, m40644j, null);
            DebugConfig.INSTANCE.drawRenderNodeDebugRect(canvas);
            log("drawBitmap, rnId = " + pageNodeInfo.getRenderNode().getUniqueId() + ", sliceRectFInPage = " + sliceInfo.getSliceRectFInPage().toShortString() + ", " + sliceInfo.getSliceRectFInPage().width() + " * " + sliceInfo.getSliceRectFInPage().height() + ", bitmap.rect = " + BitmapKt.boundingRect(bitmap) + ", verifyId = " + sliceInfo.lastVerifyId() + ", displayMatrix = " + m40644j);
        }
    }

    /* renamed from: n */
    public final PageRenderNodeInfo m40647n(final BoxInfo virtualPageBoxInfo) {
        LinkedHashMap<String, PageRenderNodeInfo> linkedHashMap = this.pageRenderNodeMap;
        String id = virtualPageBoxInfo.getId();
        final Function1<String, PageRenderNodeInfo> function1 = new Function1<String, PageRenderNodeInfo>() { // from class: com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler$ensureRenderNodeExists$pageNodeInfo$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final PageRenderNodeInfo invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new PageRenderNodeInfo(BoxInfo.this, null, 2, null);
            }
        };
        PageRenderNodeInfo computeIfAbsent = linkedHashMap.computeIfAbsent(id, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.gsk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                PageRenderNodeInfo m40633o;
                m40633o = PageHighQualityRenderHandler.m40633o(Function1.this, obj);
                return m40633o;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        PageRenderNodeInfo pageRenderNodeInfo = computeIfAbsent;
        pageRenderNodeInfo.updateRenderNodeBoxInfo(virtualPageBoxInfo);
        return pageRenderNodeInfo;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        LinkedHashMap<String, PageRenderNodeInfo> linkedHashMap = this.pageRenderNodeMap;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry<String, PageRenderNodeInfo> entry : linkedHashMap.entrySet()) {
            if (entry.getValue().getIsVisible()) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            if (!((PageRenderNodeInfo) entry2.getValue()).getRenderNode().hasDisplayList()) {
                log("no display list, re-record page render node, rn.id = " + ((PageRenderNodeInfo) entry2.getValue()).getRenderNode().getUniqueId());
                m40639C((PageRenderNodeInfo) entry2.getValue());
            }
            ((PageRenderNodeInfo) entry2.getValue()).getRenderNode().drawInto(canvas);
        }
    }

    /* renamed from: p */
    public final boolean m40648p(PageRenderNodeInfo pageNodeInfo, SliceInfo slice, ShapeFlushInfo shapeFlushInfo, Function1<? super RenderContext, Boolean> render) {
        Bitmap bitmap = slice.getSafeBitmap().getBitmap();
        if (!BitmapKt.isValid(bitmap)) {
            logW("flushShapeToPage, bitmap invalid, slice.state = " + slice.getState() + ", sliceRectInPage = " + slice.getSliceRectFInPage().toShortString());
            return false;
        }
        Shape shape = shapeFlushInfo.getShapeReference().getShape();
        RenderContext renderContext = shapeFlushInfo.getRenderContext();
        Canvas canvas = new Canvas(bitmap);
        Matrix m40643i = m40643i(pageNodeInfo);
        Matrix copy = MatrixKt.copy(m40643i);
        copy.postConcat(shapeFlushInfo.createFlushMatrix(pageNodeInfo.getVirtualPageBoxInfo()));
        canvas.concat(copy);
        renderContext.updateCanvas(canvas);
        if (!render.invoke(renderContext).booleanValue()) {
            logW("flushShapeToPage, lowLatencyRender fail");
            return false;
        }
        shape.ensureShapeUniqueId();
        if (shapeFlushInfo.getAddVerifyId()) {
            CollectionKt.addIfNotContains(slice.getVerifyIdList(), shape.getShapeUniqueId());
        }
        shapeFlushInfo.setPageHighQualityFlushFinish(!pageNodeInfo.getIsSliceOutOfDate());
        log("flushShapeToPage, lastRenderShapeId = " + shape.getShapeUniqueId() + ", flushFinish = " + shapeFlushInfo.getIsPageHighQualityFlushFinish() + ", normalizeMatrix = " + m40643i + ", isSliceOutOfDate = " + pageNodeInfo.getIsSliceOutOfDate());
        return true;
    }

    /* renamed from: q */
    public final boolean m40649q(ShapeFlushInfo shapeFlushInfo, Function1<? super RenderContext, Boolean> render) {
        SliceInfo sliceInfo;
        PageRenderNodeInfo pageRenderNodeInfo = this.pageRenderNodeMap.get(shapeFlushInfo.getVirtualPageBoxInfo().getId());
        if (pageRenderNodeInfo == null || (sliceInfo = pageRenderNodeInfo.getSliceInfo()) == null) {
            return false;
        }
        if (ScaleConfig.INSTANCE.isEnabledHighQuality(pageRenderNodeInfo.getVirtualPageBoxInfo(), viewportRectF())) {
            return m40648p(pageRenderNodeInfo, sliceInfo, shapeFlushInfo, render);
        }
        return false;
    }

    public final void refreshPage(@Nullable final PageSliceInfo pageSliceInfo) {
        if (pageSliceInfo == null) {
            logW("pageSliceInfo null, refresh fail");
            return;
        }
        final BoxInfo virtualPageBoxInfo = pageSliceInfo.getVirtualPageBoxInfo();
        final PageRenderNodeInfo pageRenderNodeInfo = this.pageRenderNodeMap.get(virtualPageBoxInfo.getId());
        if (pageRenderNodeInfo == null) {
            return;
        }
        final UpdatePageRenderNodeSliceResult updateSliceInfo = pageRenderNodeInfo.updateSliceInfo(pageSliceInfo);
        final boolean isRenderNodeSizeChanged = pageRenderNodeInfo.isRenderNodeSizeChanged();
        final boolean areEqual = Intrinsics.areEqual(pageRenderNodeInfo.getVirtualPageBoxInfo().getVisibleRect(), virtualPageBoxInfo.getVisibleRect());
        if (updateSliceInfo.getSuccess() || isRenderNodeSizeChanged) {
            m40639C(pageRenderNodeInfo);
            pageRenderNodeInfo.setSliceOutOfDate(false);
            m40655z(pageRenderNodeInfo);
            getSliceStateManager().afterRefreshPage(updateSliceInfo);
        }
        pageRenderNodeInfo.setSliceOutOfDate(false);
        log(new Function0<String>() { // from class: com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler$refreshPage$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return "refreshPage, id = " + BoxInfo.this.getId() + ", updateSliceInfoSuccess = " + updateSliceInfo.getSuccess() + ", renderNodeSizeChanged = " + isRenderNodeSizeChanged + ", isSliceOutOfDate = false\n, isSameVisibleRectF = " + areEqual + "\n, rn.visibleRect = " + pageRenderNodeInfo.getVirtualPageBoxInfo().getVisibleRect() + "\n, pageSliceInfo.visibleRect = " + pageSliceInfo.getVirtualPageBoxInfo().getVisibleRect();
            }
        });
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void removeRenderer(@NotNull String str) {
        IRenderHandler.DefaultImpls.removeRenderer(this, str);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean removeVerifyId(@NotNull Shape shape, @NotNull BoxInfo virtualBoxInfo) {
        SliceInfo sliceInfo;
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        PageRenderNodeInfo pageRenderNodeInfo = this.pageRenderNodeMap.get(virtualBoxInfo.getId());
        if (pageRenderNodeInfo == null || (sliceInfo = pageRenderNodeInfo.getSliceInfo()) == null) {
            return false;
        }
        return sliceInfo.getVerifyIdList().remove(shape.getShapeUniqueId());
    }

    @NotNull
    public final RenderRequestManager renderRequestManager() {
        return getSliceStateManager().getRenderRequestManager();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public int rendererSize() {
        return IRenderHandler.DefaultImpls.rendererSize(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void resizeCache(@NotNull Size viewSize) {
        Intrinsics.checkNotNullParameter(viewSize, "viewSize");
        int i = this.PAGE_BITMAP_LAYER_COUNT * this.MAX_VIEWPORT_CACHE_COUNT;
        log("resizeCache, viewSize = " + viewSize + ", maxViewportCount = " + i);
        m40653x().resize(new SizeConfig(viewSize, i));
    }

    /* renamed from: s */
    public final boolean m40650s(ShapeFlushInfo shapeFlushInfo, Function1<? super RenderContext, Boolean> render) {
        if (!ScaleConfig.INSTANCE.isEnabledHighQuality(shapeFlushInfo.getVirtualPageBoxInfo(), viewportRectF())) {
            shapeFlushInfo.setPageHighQualityFlushFinish(true);
            return false;
        }
        m40652w();
        boolean m40649q = m40649q(shapeFlushInfo, render);
        if (!shapeFlushInfo.getIsPageHighQualityFlushFinish()) {
            ShapeFlushInfo stashShapeFlushInfo = shapeFlushInfo.stashShapeFlushInfo();
            Map<String, List<ShapeFlushInfo>> map = this.shapeFlushInfoMap;
            String id = stashShapeFlushInfo.getVirtualPageBoxInfo().getId();
            final PageHighQualityRenderHandler$flushShapeToPageWithStash$2 pageHighQualityRenderHandler$flushShapeToPageWithStash$2 = new Function1<String, List<ShapeFlushInfo>>() { // from class: com.onyx.android.sdk.universal.editor.display.PageHighQualityRenderHandler$flushShapeToPageWithStash$2
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final List<ShapeFlushInfo> invoke(@NotNull String it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new ArrayList();
                }
            };
            map.computeIfAbsent(id, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.hsk
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    List m40636u;
                    m40636u = PageHighQualityRenderHandler.m40636u(Function1.this, obj);
                    return m40636u;
                }
            }).add(stashShapeFlushInfo);
        }
        return m40649q;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void safeClearAllNoteSliceCache() {
        getSliceStateManager().safeClearAllNoteSliceCache();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void safeClearAllSliceCache() {
        getSliceStateManager().clear();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void safeClearPageNoteSliceCache(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        getSliceStateManager().safeClearPageNoteSliceCache(pageId);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void setBackground(@Nullable GeoLayout geoLayout) {
        IRenderHandler.DefaultImpls.setBackground(this, geoLayout);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void setPageVisible(@NotNull BoxInfo boxInfo, boolean z) {
        IRenderHandler.DefaultImpls.setPageVisible(this, boxInfo, z);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void updateExistsRenderNode(@NotNull BoxInfo virtualPageBoxInfo, boolean forceUpdate) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        PageRenderNodeInfo pageRenderNodeInfo = this.pageRenderNodeMap.get(virtualPageBoxInfo.getId());
        if (pageRenderNodeInfo == null) {
            return;
        }
        boolean updateRenderNodeBoxInfo = pageRenderNodeInfo.updateRenderNodeBoxInfo(virtualPageBoxInfo);
        if (forceUpdate || updateRenderNodeBoxInfo) {
            pageRenderNodeInfo.getRenderNode().discardDisplayList();
            m40639C(pageRenderNodeInfo);
            pageRenderNodeInfo.setSliceOutOfDate(true);
            log("updateExistsRenderNode, id = " + virtualPageBoxInfo.getId() + ", isSliceOutOfDate = true, forceUpdate = " + forceUpdate + ", updateResult = " + updateRenderNodeBoxInfo);
        }
    }

    /* renamed from: v */
    public final void m40651v() {
        this.displayFilter.subscribeThrottleLast(this.DISPLAY_FILTER_TIME_MILL, new C10323h());
    }

    @NotNull
    public final RectF viewportRectF() {
        return m40653x().getSizeConfig().getViewportSize().toRectF();
    }

    /* renamed from: w */
    public final void m40652w() {
        getSliceStateManager().logBitmapDisplayCount(this.pageRenderNodeMap);
    }

    /* renamed from: x */
    public final SliceLruCache m40653x() {
        return getSliceStateManager().getLruCache();
    }

    /* renamed from: y */
    public final void m40654y(List<BoxInfo> boxList) {
        evict(BoxInfoUtils.INSTANCE.toBoxIdSet(boxList));
        Iterator<T> it2 = boxList.iterator();
        while (it2.hasNext()) {
            m40647n((BoxInfo) it2.next());
        }
    }

    /* renamed from: z */
    public final void m40655z(PageRenderNodeInfo pageNodeInfo) {
        SliceInfo sliceInfo;
        String id = pageNodeInfo.getVirtualPageBoxInfo().getId();
        List<ShapeFlushInfo> list = this.shapeFlushInfoMap.get(id);
        if (list == null || list.isEmpty() || (sliceInfo = pageNodeInfo.getSliceInfo()) == null) {
            return;
        }
        List<ShapeFlushInfo> list2 = list;
        ArrayList<ShapeFlushInfo> arrayList = new ArrayList();
        for (Object obj : list2) {
            if (sliceInfo.getVerifyIdList().contains(((ShapeFlushInfo) obj).shapeId())) {
                arrayList.add(obj);
            }
        }
        for (ShapeFlushInfo shapeFlushInfo : arrayList) {
            shapeFlushInfo.setPageHighQualityFlushFinish(true);
            m40642g(shapeFlushInfo);
        }
        list.removeAll(arrayList);
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            m40634r(this, (ShapeFlushInfo) it2.next(), null, 2, null);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list2) {
            if (((ShapeFlushInfo) obj2).getIsPageHighQualityFlushFinish()) {
                arrayList2.add(obj2);
            }
        }
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            m40642g((ShapeFlushInfo) it3.next());
        }
        list.removeAll(arrayList2);
        log("reFlushToPage, rn.id = " + pageNodeInfo.getRenderNode().getUniqueId() + ", page.id = " + id + ", reFlushList = " + arrayList2.size() + ", hasRenderList = " + arrayList.size() + ", remainList = " + list.size());
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void log(@NotNull Function0<String> function0) {
        IRenderHandler.DefaultImpls.log(this, function0);
    }
}
