package com.onyx.android.sdk.universal.editor.display;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.View;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.debug.PerformanceWatcher;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.GeoLayoutShaderWrapper;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.SizeConfig;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.geometry.data.SliceKt;
import com.onyx.android.sdk.geometry.data.SliceLruCache;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeRender;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.display.DisplayRenderSliceAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.config.DebugConfig;
import com.onyx.android.sdk.universal.editor.config.ScaleConfig;
import com.onyx.android.sdk.universal.editor.data.AnimateBoxArgs;
import com.onyx.android.sdk.universal.editor.data.PageRenderNodeInfo;
import com.onyx.android.sdk.universal.editor.data.PageSliceInfo;
import com.onyx.android.sdk.universal.editor.data.ShapeFlushInfo;
import com.onyx.android.sdk.universal.editor.data.UpdatePageRenderNodeSliceResult;
import com.onyx.android.sdk.universal.editor.display.IRenderHandler;
import com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.display.node.IRenderNode;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
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
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000ð\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001fB\t¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J&\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0014\b\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00100\u0014H\u0002J&\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0014\b\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00100\u0014H\u0002J6\u0010\u001b\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u00122\u0014\b\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00100\u0014H\u0002J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0016\u0010#\u001a\u00020\u000b2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0 H\u0002J\u0016\u0010'\u001a\b\u0012\u0004\u0012\u00020!0&2\u0006\u0010%\u001a\u00020$H\u0002J&\u0010*\u001a\b\u0012\u0004\u0012\u00020!0 2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020!0 2\b\b\u0002\u0010)\u001a\u00020\u0010H\u0002J\u0010\u0010+\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0012\u0010.\u001a\u00020\u000b2\b\u0010-\u001a\u0004\u0018\u00010,H\u0016J\u0006\u00100\u001a\u00020/J\u000e\u00102\u001a\u00020\u000b2\u0006\u00101\u001a\u00020!J\u0016\u00103\u001a\u00020\u000b2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J\u0016\u00104\u001a\u00020\u000b2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J\u0010\u00105\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u00108\u001a\u00020\u000b2\u0006\u00107\u001a\u000206H\u0016J\u000e\u0010;\u001a\u00020\u000b2\u0006\u0010:\u001a\u000209J\u0010\u0010<\u001a\u00020\u000b2\b\u0010:\u001a\u0004\u0018\u000109J\u0012\u0010>\u001a\u0004\u0018\u00010\t2\u0006\u0010=\u001a\u00020\u0005H\u0016J\u0012\u0010?\u001a\u0004\u0018\u0001092\u0006\u0010=\u001a\u00020\u0005H\u0016J\u0010\u0010@\u001a\u00020\u00102\u0006\u00101\u001a\u00020!H\u0016J\u0010\u0010A\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0010\u0010B\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0006\u0010D\u001a\u00020CJ\u0018\u0010H\u001a\u00020\u00102\u0006\u0010F\u001a\u00020E2\u0006\u0010G\u001a\u00020!H\u0016J\b\u0010I\u001a\u00020\u000bH\u0016J$\u0010L\u001a\b\u0012\u0004\u0012\u00020!0&2\u0006\u0010K\u001a\u00020J2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020!0 H\u0016J$\u0010M\u001a\b\u0012\u0004\u0012\u00020!0&2\u0006\u0010K\u001a\u00020J2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020!0 H\u0016J$\u0010N\u001a\b\u0012\u0004\u0012\u00020!0&2\u0006\u0010K\u001a\u00020J2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0 H\u0016J$\u0010O\u001a\b\u0012\u0004\u0012\u00020!0&2\u0006\u0010K\u001a\u00020J2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020!0 H\u0016J\u001c\u0010T\u001a\u0006\u0012\u0002\b\u00030&2\u0006\u0010Q\u001a\u00020P2\u0006\u0010S\u001a\u00020RH\u0016J\u0018\u0010V\u001a\u00020\u000b2\u0006\u00101\u001a\u00020!2\u0006\u0010U\u001a\u00020\u0010H\u0016J\u000e\u0010W\u001a\b\u0012\u0004\u0012\u00020!0 H\u0016J\u0016\u0010Y\u001a\u00020\u000b2\f\u0010X\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0016J\b\u0010Z\u001a\u00020\u000bH\u0016J\u0010\u0010[\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020\u0005H\u0016J\b\u0010\\\u001a\u00020\u000bH\u0016J\b\u0010]\u001a\u00020\u000bH\u0016J\b\u0010^\u001a\u00020\u0005H\u0016J\b\u0010_\u001a\u00020\u000bH\u0016J\b\u0010`\u001a\u00020\u000bH\u0016J\u0010\u0010c\u001a\u00020\u000b2\u0006\u0010b\u001a\u00020aH\u0016J\u0006\u0010e\u001a\u00020dR\u0014\u0010h\u001a\u00020d8\u0002X\u0082D¢\u0006\u0006\n\u0004\bf\u0010gR\u0014\u0010j\u001a\u00020d8\u0002X\u0082D¢\u0006\u0006\n\u0004\bi\u0010gR\u0014\u0010l\u001a\u00020d8\u0002X\u0082D¢\u0006\u0006\n\u0004\bk\u0010gR2\u0010q\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0mj\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t`n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010pR\u001b\u0010w\u001a\u00020r8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bs\u0010t\u001a\u0004\bu\u0010vR&\u0010{\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120y0x8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010zR\u0016\u0010}\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010|R\u0017\u0010\u0080\u0001\u001a\u00020~8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u007f¨\u0006\u0083\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;", "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;", "Lcom/onyx/android/sdk/geometry/data/SliceLruCache;", "x", "", "", "pageIdSet", "", "p", "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;", "pageNodeInfo", "", "z", "A", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "l", "Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;", "shapeFlushInfo", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "render", "u", "s", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "slice", "q", "Landroid/graphics/Matrix;", C6999h.f39688c, "i", C6997f.f39671c, "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxList", "y", "Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;", "params", "Lio/reactivex/rxjava3/core/Observable;", "j", "visibleBoxList", "forceRequestAllBoxList", "m", C6998g.f39679a, "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "geoLayout", "setBackground", "Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;", "renderRequestManager", "virtualPageBoxInfo", "invalidateOtherScaleSlice", "invalidateSliceByPages", "invalidateNotVisiblePagesIf", "onDraw", "Landroid/graphics/Bitmap;", "bitmap", "draw", "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;", "pageSliceInfo", "refreshPageAfterRender", "refreshPage", CouchFieldKey.KEY_TOC_PAGE_ID, "getPageRenderNodeInfo", "getPageSliceInfo", "isEnabledPageBorder", "flushShapeToPage", "lowLatencyFlushToPage", "Landroid/graphics/RectF;", "viewportRectF", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "virtualBoxInfo", "removeVerifyId", "clearDisplay", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "createDisplayScalingBoxListObservable", "createDisplayScrollingBoxListObservable", "createPreRenderBoxListObservable", "createDisplayBoxListObservable", "Landroid/view/View;", "hostView", "Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;", "args", "animateBoxChange", "forceUpdate", "updateExistsRenderNode", "displayBoxList", "keepList", "evict", "safeClearAllNoteSliceCache", "safeClearPageNoteSliceCache", "safeClearAllSliceCache", "cancelAllRenderRequest", "getDisplayDebugString", "destroy", "clearShapeFlushInfo", "Lcom/onyx/android/sdk/base/data/Size;", "viewSize", "resizeCache", "", "pendingRenderTaskMaxCount", "a", "I", "PAGE_BITMAP_LAYER_COUNT", "b", "DISPLAY_CACHE_COUNT", "c", "MAX_VIEWPORT_CACHE_COUNT", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "d", "Ljava/util/LinkedHashMap;", "pageRenderNodeMap", "Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;", "e", "Lkotlin/Lazy;", "getSliceStateManager", "()Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;", "sliceStateManager", "", "", "Ljava/util/Map;", "shapeFlushInfoMap", Constants.HASIDCALL_INDEX_SIG, "isAnimating", "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;", "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;", "geoLayoutShaderWrapper", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPageNormalRenderHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageNormalRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,552:1\n766#2:553\n857#2,2:554\n1855#2,2:556\n766#2:558\n857#2,2:559\n766#2:572\n857#2,2:573\n1855#2,2:575\n1855#2,2:577\n766#2:579\n857#2,2:580\n1855#2,2:582\n1549#2:586\n1620#2,3:587\n1855#2,2:590\n1549#2:592\n1620#2,3:593\n1855#2,2:604\n526#3:561\n511#3,6:562\n215#4,2:568\n215#4,2:570\n215#4,2:584\n215#4,2:596\n76#4:598\n96#4,5:599\n*S KotlinDebug\n*F\n+ 1 PageNormalRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler\n*L\n76#1:553\n76#1:554,2\n87#1:556,2\n100#1:558\n100#1:559,2\n164#1:572\n164#1:573,2\n167#1:575,2\n173#1:577,2\n174#1:579\n174#1:580,2\n175#1:582,2\n418#1:586\n418#1:587,3\n451#1:590,2\n469#1:592\n469#1:593,3\n524#1:604,2\n106#1:561\n106#1:562,6\n107#1:568,2\n119#1:570,2\n360#1:584,2\n505#1:596,2\n523#1:598\n523#1:599,5\n*E\n"})
/* loaded from: classes8.dex */
public final class PageNormalRenderHandler implements IRenderHandler {

    /* renamed from: a, reason: from kotlin metadata */
    public final int PAGE_BITMAP_LAYER_COUNT = 2;

    /* renamed from: b, reason: from kotlin metadata */
    public final int DISPLAY_CACHE_COUNT = 1;

    /* renamed from: c, reason: from kotlin metadata */
    public final int MAX_VIEWPORT_CACHE_COUNT = 3 - 1;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public LinkedHashMap<String, PageRenderNodeInfo> pageRenderNodeMap = new LinkedHashMap<>();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy sliceStateManager;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Map<String, List<ShapeFlushInfo>> shapeFlushInfoMap;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean isAnimating;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public GeoLayoutShaderWrapper geoLayoutShaderWrapper;

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler$b */
    /* loaded from: classes8.dex */
    public static final class C10325b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ AnimateBoxArgs f51410f;

        public C10325b(AnimateBoxArgs animateBoxArgs) {
            this.f51410f = animateBoxArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull PageNormalRenderHandler it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageNormalRenderHandler.this.m40696y(this.f51410f.getAnimateBoxList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler$c */
    /* loaded from: classes8.dex */
    public static final class C10326c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RenderNodeAnimator f51411e;

        /* renamed from: f */
        public final /* synthetic */ PageNormalRenderHandler f51412f;

        /* renamed from: g */
        public final /* synthetic */ AnimateBoxArgs f51413g;

        public C10326c(RenderNodeAnimator renderNodeAnimator, PageNormalRenderHandler pageNormalRenderHandler, AnimateBoxArgs animateBoxArgs) {
            this.f51411e = renderNodeAnimator;
            this.f51412f = pageNormalRenderHandler;
            this.f51413g = animateBoxArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull PageNormalRenderHandler it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f51411e.boxAnimationObservable(this.f51412f.pageRenderNodeMap, this.f51413g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler$d */
    /* loaded from: classes8.dex */
    public static final class C10327d<T> implements Consumer {
        public C10327d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageNormalRenderHandler.this.isAnimating = false;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler$e */
    /* loaded from: classes8.dex */
    public static final class C10328e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f51415e;

        /* renamed from: f */
        public final /* synthetic */ PageNormalRenderHandler f51416f;

        public C10328e(EditorBundle editorBundle, PageNormalRenderHandler pageNormalRenderHandler) {
            this.f51415e = editorBundle;
            this.f51416f = pageNormalRenderHandler;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DisplayRenderSliceAction> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new DisplayRenderSliceAction(this.f51415e, this.f51416f, it2.copy(), 0.0f, 8, null).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler$f */
    /* loaded from: classes8.dex */
    public static final class C10330f<T, R> implements Function {

        /* renamed from: e */
        public static final C10330f<T, R> f51417e = new C10330f<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull DisplayRenderSliceAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getVirtualPageBoxInfo();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler$g */
    /* loaded from: classes8.dex */
    public static final class C10331g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f51418e;

        /* renamed from: f */
        public final /* synthetic */ PageNormalRenderHandler f51419f;

        /* renamed from: g */
        public final /* synthetic */ C10324a f51420g;

        public C10331g(EditorBundle editorBundle, PageNormalRenderHandler pageNormalRenderHandler, C10324a c10324a) {
            this.f51418e = editorBundle;
            this.f51419f = pageNormalRenderHandler;
            this.f51420g = c10324a;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DisplayRenderSliceAction> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new DisplayRenderSliceAction(this.f51418e, this.f51419f, it2.copy(), this.f51420g.m40706i()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler$h */
    /* loaded from: classes8.dex */
    public static final class C10332h<T, R> implements Function {

        /* renamed from: e */
        public static final C10332h<T, R> f51421e = new C10332h<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull DisplayRenderSliceAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getVirtualPageBoxInfo();
        }
    }

    public PageNormalRenderHandler() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<SliceStateManager>() { // from class: com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler$sliceStateManager$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SliceStateManager invoke() {
                return new SliceStateManager(AnyKt.toSimpleNameString(PageNormalRenderHandler.this));
            }
        });
        this.sliceStateManager = lazy;
        this.shapeFlushInfoMap = new LinkedHashMap();
        GeoLayoutShaderWrapper geoLayoutShaderWrapper = new GeoLayoutShaderWrapper(null);
        geoLayoutShaderWrapper.setEnabledUnionCanvasBoundingRectF(true);
        this.geoLayoutShaderWrapper = geoLayoutShaderWrapper;
    }

    /* renamed from: e */
    public static final void m40675e(PageNormalRenderHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.isAnimating = false;
    }

    /* renamed from: k */
    public static final void m40676k(PageNormalRenderHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getSliceStateManager().logBitmapDisplayCount(this$0.pageRenderNodeMap);
    }

    /* renamed from: n */
    public static /* synthetic */ List m40677n(PageNormalRenderHandler pageNormalRenderHandler, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return pageNormalRenderHandler.m40690m(list, z);
    }

    /* renamed from: o */
    public static final PageRenderNodeInfo m40678o(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (PageRenderNodeInfo) tmp0.invoke(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: r */
    public static /* synthetic */ boolean m40679r(PageNormalRenderHandler pageNormalRenderHandler, PageRenderNodeInfo pageRenderNodeInfo, SliceInfo sliceInfo, final ShapeFlushInfo shapeFlushInfo, Function1 function1, int i, Object obj) {
        if ((i & 8) != 0) {
            function1 = new Function1<RenderContext, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler$flushShapeToPage$1
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
        return pageNormalRenderHandler.m40692q(pageRenderNodeInfo, sliceInfo, shapeFlushInfo, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: t */
    public static /* synthetic */ boolean m40680t(PageNormalRenderHandler pageNormalRenderHandler, final ShapeFlushInfo shapeFlushInfo, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1<RenderContext, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler$flushShapeToPageImpl$1
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
        return pageNormalRenderHandler.m40693s(shapeFlushInfo, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: v */
    public static /* synthetic */ boolean m40681v(PageNormalRenderHandler pageNormalRenderHandler, final ShapeFlushInfo shapeFlushInfo, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1<RenderContext, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler$flushShapeToPageWithStash$1
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
        return pageNormalRenderHandler.m40694u(shapeFlushInfo, function1);
    }

    /* renamed from: w */
    public static final List m40682w(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* renamed from: A */
    public final void m40683A(PageRenderNodeInfo pageNodeInfo) {
        IRenderNode renderNode = pageNodeInfo.getRenderNode();
        if (!this.isAnimating) {
            renderNode.setPosition(pageNodeInfo.toRenderNodePositionRect());
        }
        try {
            pageNodeInfo.updateDisplayStateAfterDrawPageNode(m40689l(pageNodeInfo, renderNode.beginRecording()));
        } finally {
            renderNode.endRecording();
        }
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
        Observable<?> doFinally = Observable.just(this).doOnNext(new C10325b(args)).flatMap(new C10326c(new RenderNodeAnimator(hostView), this, args)).doOnNext(new C10327d()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.btk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PageNormalRenderHandler.m40675e(PageNormalRenderHandler.this);
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
        this.geoLayoutShaderWrapper.clearCache();
        this.geoLayoutShaderWrapper.setVisible(false);
        for (Map.Entry<String, PageRenderNodeInfo> entry : this.pageRenderNodeMap.entrySet()) {
            entry.getValue().getRenderNode().discardDisplayList();
            getSliceStateManager().moveDisplayToCache(entry.getValue());
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
        return m40688j(new C10324a(editorBundle, visibleBoxList, true, 0.0f, 8, null));
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createDisplayScalingBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        return m40688j(new C10324a(editorBundle, visibleBoxList, false, AppConfig.INSTANCE.getSCALING_RENDER_MAX_SCREEN_SCALE()));
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createDisplayScrollingBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        return m40688j(new C10324a(editorBundle, visibleBoxList, false, 0.0f, 8, null));
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    @NotNull
    public Observable<BoxInfo> createPreRenderBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> boxList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(boxList, "boxList");
        Observable<BoxInfo> map = Observable.fromIterable(boxList).flatMap(new C10328e(editorBundle, this)).map(C10330f.f51417e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void destroy() {
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
        this.geoLayoutShaderWrapper.onDraw(canvas);
        for (Map.Entry<String, PageRenderNodeInfo> entry : this.pageRenderNodeMap.entrySet()) {
            float translationX = entry.getValue().getRenderNode().getTranslationX();
            float translationY = entry.getValue().getRenderNode().getTranslationY();
            canvas.translate(translationX, translationY);
            canvas.save();
            m40689l(entry.getValue(), canvas);
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
                getSliceStateManager().moveDisplayToCache(remove);
                renderRequestManager().cancelPageRenderingRequestList(remove.getVirtualPageBoxInfo().getId());
                log("evict, " + remove.getVirtualPageBoxInfo().getId());
            }
        }
    }

    /* renamed from: f */
    public final void m40684f(PageRenderNodeInfo pageNodeInfo) {
        BoxInfo noteInfo;
        SliceInfo sliceInfo = pageNodeInfo.getSliceInfo();
        if (sliceInfo == null || (noteInfo = pageNodeInfo.getVirtualPageBoxInfo().getNoteInfo()) == null) {
            return;
        }
        boolean z = false;
        if (!ScaleConfig.INSTANCE.isEnabledHighQuality(pageNodeInfo.getVirtualPageBoxInfo(), viewportRectF())) {
            if (!(noteInfo.getActualScale() == sliceInfo.getBoxInfo().getActualScale())) {
                z = true;
            }
        }
        pageNodeInfo.setSliceOutOfDate(z);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public boolean flushShapeToPage(@NotNull ShapeFlushInfo shapeFlushInfo) {
        Intrinsics.checkNotNullParameter(shapeFlushInfo, "shapeFlushInfo");
        return m40681v(this, shapeFlushInfo, null, 2, null);
    }

    /* renamed from: g */
    public final void m40685g(ShapeFlushInfo shapeFlushInfo) {
        log("clearShapeCacheData = " + shapeFlushInfo.clearShapeCacheDataIf());
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
            PageRenderNodeInfo pageRenderNodeInfo = (PageRenderNodeInfo) entry.getValue();
            sb.append("maxScale = " + ScaleConfig.virtualPageMaxScale$default(ScaleConfig.INSTANCE, pageRenderNodeInfo.getVirtualPageBoxInfo(), viewportRectF(), 0.0f, 2, null) + '\n');
            StringBuilder sb2 = new StringBuilder();
            sb2.append(pageRenderNodeInfo.toDebugString());
            sb2.append('\n');
            sb.append(sb2.toString());
        }
        sb.append(", stateCache = " + getSliceStateManager().getSimpleDebugString() + '\n');
        String sb3 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
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
        return new PageSliceInfo(pageRenderNodeInfo.getVirtualPageBoxInfo(), sliceInfo, pageRenderNodeInfo.getContentSliceInfo());
    }

    @NotNull
    public final SliceStateManager getSliceStateManager() {
        return (SliceStateManager) this.sliceStateManager.getValue();
    }

    /* renamed from: h */
    public final Matrix m40686h(PageRenderNodeInfo pageNodeInfo) {
        Matrix m40687i = m40687i(pageNodeInfo);
        m40687i.postTranslate(pageNodeInfo.getRenderNode().getTranslationX(), pageNodeInfo.getRenderNode().getTranslationY());
        return MatrixKt.invertMatrix(m40687i);
    }

    /* renamed from: i */
    public final Matrix m40687i(PageRenderNodeInfo pageNodeInfo) {
        BoxInfo noteInfo;
        SliceInfo sliceInfo = pageNodeInfo.getSliceInfo();
        if (sliceInfo != null && (noteInfo = pageNodeInfo.getVirtualPageBoxInfo().getNoteInfo()) != null) {
            float actualScale = noteInfo.getActualScale() / sliceInfo.getBoxInfo().getActualScale();
            Matrix matrix = new Matrix();
            matrix.postScale(actualScale, actualScale);
            return matrix;
        }
        return new Matrix();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void invalidateNotVisiblePagesIf(@NotNull Collection<String> pageIdSet) {
        Intrinsics.checkNotNullParameter(pageIdSet, "pageIdSet");
        invalidateSliceByPages(m40691p(pageIdSet));
    }

    public final void invalidateOtherScaleSlice(@NotNull BoxInfo virtualPageBoxInfo) {
        SliceInfo sliceInfo;
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        PageRenderNodeInfo pageRenderNodeInfo = this.pageRenderNodeMap.get(virtualPageBoxInfo.getId());
        if (pageRenderNodeInfo == null || (sliceInfo = pageRenderNodeInfo.getSliceInfo()) == null) {
            return;
        }
        List<SliceInfo> findAllScaleSliceList = m40695x().findAllScaleSliceList(sliceInfo);
        ArrayList arrayList = new ArrayList();
        for (Object obj : findAllScaleSliceList) {
            if (!(((SliceInfo) obj).getBoxInfo().getActualScale() == sliceInfo.getBoxInfo().getActualScale())) {
                arrayList.add(obj);
            }
        }
        CommonEditorActionsKt.updateSliceListState(arrayList, SliceInfo.State.NO_CACHE);
        log("invalidateOtherScaleSlice, size = " + arrayList.size() + ", exclude scale = " + sliceInfo.getBoxInfo().getActualScale());
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void invalidateSliceByPages(@NotNull final Collection<String> pageIdSet) {
        Intrinsics.checkNotNullParameter(pageIdSet, "pageIdSet");
        if (CollectionKt.isNullOrEmpty(pageIdSet)) {
            return;
        }
        for (SliceInfo sliceInfo : m40695x().findAllScaleSliceList(new Function1<SliceInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler$invalidateSliceByPages$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SliceInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.isContentNote() && pageIdSet.contains(it2.getBoxInfo().getId()));
            }
        })) {
            log("invalidateSliceByPages, id = " + sliceInfo.getBoxInfo().getId());
            sliceInfo.updateState(SliceInfo.State.NO_CACHE);
        }
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
    public final Observable<BoxInfo> m40688j(C10324a params) {
        int collectionSizeOrDefault;
        List<BoxInfo> m40707j = params.m40707j();
        boolean m40705h = params.m40705h();
        EditorBundle m40704g = params.m40704g();
        evict(BoxInfoUtils.INSTANCE.toBoxIdSet(m40707j));
        List<BoxInfo> m40690m = m40690m(m40707j, m40705h);
        List<BoxInfo> list = m40707j;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((BoxInfo) it2.next()).getBox());
        }
        this.geoLayoutShaderWrapper.updateViewportAndBoundingRectF(EditorBundleKt.viewport(m40704g), RectFKt.boundingRectF(arrayList));
        if (!m40690m.isEmpty()) {
            log("pageCount = " + this.pageRenderNodeMap.size() + ", requestDisplayList = " + m40690m.size() + ", forceRequestAllBoxList = " + m40705h);
        }
        Observable<BoxInfo> map = Observable.fromIterable(m40690m).flatMap(new C10331g(m40704g, this, params)).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.dtk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PageNormalRenderHandler.m40676k(PageNormalRenderHandler.this);
            }
        }).map(C10332h.f51421e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final boolean m40689l(final PageRenderNodeInfo pageNodeInfo, Canvas canvas) {
        SliceInfo sliceInfo = pageNodeInfo.getSliceInfo();
        if (sliceInfo == null || !SliceKt.isValidContentNote(sliceInfo)) {
            return false;
        }
        Bitmap bitmap = sliceInfo.getSafeBitmap().getBitmap();
        if (!BitmapKt.isValid(bitmap)) {
            return false;
        }
        Matrix m40687i = m40687i(pageNodeInfo);
        canvas.drawBitmap(bitmap, m40687i, null);
        DebugConfig.INSTANCE.drawRenderNodeDebugRect(canvas, bitmap, m40687i);
        IRenderNode renderNode = pageNodeInfo.getRenderNode();
        log("drawBitmap, rnId = " + renderNode.getUniqueId() + ", src = " + BitmapKt.boundingRect(bitmap) + ", " + m40687i + ", rn.size = " + renderNode.getWidth() + " x " + renderNode.getHeight() + ", pageId = " + pageNodeInfo.getVirtualPageBoxInfo().getId());
        PerformanceWatcher.INSTANCE.endFirstDisplaySinceOpen(new Function0<String>() { // from class: com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler$drawPageNodeImpl$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                StringBuilder sb = new StringBuilder();
                sb.append("first display after OpenDocumentAction, notePageId = ");
                BoxInfo noteInfo = PageRenderNodeInfo.this.getVirtualPageBoxInfo().getNoteInfo();
                sb.append(noteInfo != null ? noteInfo.getId() : null);
                return sb.toString();
            }
        });
        return true;
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
        return m40694u(shapeFlushInfo, new Function1<RenderContext, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler$lowLatencyFlushToPage$1
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
    public final List<BoxInfo> m40690m(List<BoxInfo> visibleBoxList, boolean forceRequestAllBoxList) {
        ArrayList arrayList = new ArrayList();
        for (final BoxInfo boxInfo : visibleBoxList) {
            LinkedHashMap<String, PageRenderNodeInfo> linkedHashMap = this.pageRenderNodeMap;
            String id = boxInfo.getId();
            final Function1<String, PageRenderNodeInfo> function1 = new Function1<String, PageRenderNodeInfo>() { // from class: com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler$ensureUpdatePageNodeAndCollectRequestDisplayBoxList$1$pageNodeInfo$1
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
            PageRenderNodeInfo computeIfAbsent = linkedHashMap.computeIfAbsent(id, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.ctk
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    PageRenderNodeInfo m40678o;
                    m40678o = PageNormalRenderHandler.m40678o(Function1.this, obj);
                    return m40678o;
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
            PageRenderNodeInfo pageRenderNodeInfo = computeIfAbsent;
            if (pageRenderNodeInfo.isNeedRequestDisplay() || pageRenderNodeInfo.isScaleChanged(boxInfo)) {
                arrayList.add(boxInfo);
                pageRenderNodeInfo.setDisplayState(PageRenderNodeInfo.DisplayState.LOADING);
            }
            pageRenderNodeInfo.updateRenderNodeBoxInfo(boxInfo);
        }
        return forceRequestAllBoxList ? visibleBoxList : arrayList;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        this.geoLayoutShaderWrapper.onDraw(canvas);
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
                m40683A((PageRenderNodeInfo) entry2.getValue());
            }
            ((PageRenderNodeInfo) entry2.getValue()).getRenderNode().drawInto(canvas);
        }
    }

    /* renamed from: p */
    public final Set<String> m40691p(Collection<String> pageIdSet) {
        Set<String> set;
        Intrinsics.checkNotNullExpressionValue(this.pageRenderNodeMap.keySet(), "<get-keys>(...)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : pageIdSet) {
            if (!r3.contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList);
        return set;
    }

    public final int pendingRenderTaskMaxCount() {
        return ((Number) MathUtils.INSTANCE.atLeast(Integer.valueOf(this.pageRenderNodeMap.size() * 2), Integer.valueOf(AppConfig.INSTANCE.getPendingRenderTaskMaxCount()))).intValue();
    }

    /* renamed from: q */
    public final boolean m40692q(PageRenderNodeInfo pageNodeInfo, SliceInfo slice, ShapeFlushInfo shapeFlushInfo, Function1<? super RenderContext, Boolean> render) {
        Bitmap bitmap = slice.getSafeBitmap().getBitmap();
        if (!BitmapKt.isValid(bitmap)) {
            logW("flushShapeToPage, bitmap invalid, slice.state = " + slice.getState());
            return false;
        }
        Shape shape = shapeFlushInfo.getShapeReference().getShape();
        RenderContext renderContext = shapeFlushInfo.getRenderContext();
        Canvas canvas = new Canvas(bitmap);
        Matrix m40686h = m40686h(pageNodeInfo);
        Matrix copy = MatrixKt.copy(m40686h);
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
        shapeFlushInfo.setPageNormalFlushFinish(!pageNodeInfo.getIsSliceOutOfDate());
        log("flushShapeToPage, lastRenderShapeId = " + shape.getShapeUniqueId() + ", flushFinish = " + shapeFlushInfo.getIsPageNormalFlushFinish() + ", normalizeMatrix = " + m40686h + ", isSliceOutOfDate = " + pageNodeInfo.getIsSliceOutOfDate());
        return true;
    }

    public final void refreshPage(@Nullable PageSliceInfo pageSliceInfo) {
        if (pageSliceInfo == null) {
            logW("pageSliceInfo null, refresh fail");
            return;
        }
        BoxInfo virtualPageBoxInfo = pageSliceInfo.getVirtualPageBoxInfo();
        PageRenderNodeInfo pageRenderNodeInfo = this.pageRenderNodeMap.get(virtualPageBoxInfo.getId());
        if (pageRenderNodeInfo == null) {
            return;
        }
        UpdatePageRenderNodeSliceResult updateSliceInfo = pageRenderNodeInfo.updateSliceInfo(pageSliceInfo);
        if (updateSliceInfo.getSuccess() || pageRenderNodeInfo.isRenderNodeSizeChanged()) {
            m40683A(pageRenderNodeInfo);
            m40684f(pageRenderNodeInfo);
            m40697z(pageRenderNodeInfo);
            getSliceStateManager().afterRefreshPage(updateSliceInfo);
        }
        log("refreshPage, id = " + virtualPageBoxInfo.getId() + ", actualScale = " + virtualPageBoxInfo.getActualScale());
    }

    public final void refreshPageAfterRender(@NotNull PageSliceInfo pageSliceInfo) {
        Intrinsics.checkNotNullParameter(pageSliceInfo, "pageSliceInfo");
        BoxInfo virtualPageBoxInfo = pageSliceInfo.getVirtualPageBoxInfo();
        PageRenderNodeInfo pageRenderNodeInfo = this.pageRenderNodeMap.get(virtualPageBoxInfo.getId());
        if (pageRenderNodeInfo == null) {
            return;
        }
        if (pageRenderNodeInfo.isScaleChanged(virtualPageBoxInfo)) {
            logW("isScaleChanged, do not refresh page");
        } else {
            refreshPage(pageSliceInfo);
            invalidateOtherScaleSlice(virtualPageBoxInfo);
        }
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
        int roundToInt;
        Intrinsics.checkNotNullParameter(viewSize, "viewSize");
        AppConfig appConfig = AppConfig.INSTANCE;
        roundToInt = MathKt__MathJVMKt.roundToInt(appConfig.getRENDER_MAX_SCREEN_SCALE() * appConfig.getRENDER_MAX_SCREEN_SCALE() * this.PAGE_BITMAP_LAYER_COUNT * this.MAX_VIEWPORT_CACHE_COUNT);
        log("resizeCache, viewSize = " + viewSize + ", maxViewportCount = " + roundToInt);
        m40695x().resize(new SizeConfig(viewSize, roundToInt));
    }

    /* renamed from: s */
    public final boolean m40693s(ShapeFlushInfo shapeFlushInfo, Function1<? super RenderContext, Boolean> render) {
        SliceInfo sliceInfo;
        PageRenderNodeInfo pageRenderNodeInfo = this.pageRenderNodeMap.get(shapeFlushInfo.getVirtualPageBoxInfo().getId());
        if (pageRenderNodeInfo == null || (sliceInfo = pageRenderNodeInfo.getSliceInfo()) == null) {
            return false;
        }
        return m40692q(pageRenderNodeInfo, sliceInfo, shapeFlushInfo, render);
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
        this.geoLayoutShaderWrapper.setGeoLayout(geoLayout);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void setPageVisible(@NotNull BoxInfo boxInfo, boolean z) {
        IRenderHandler.DefaultImpls.setPageVisible(this, boxInfo, z);
    }

    /* renamed from: u */
    public final boolean m40694u(ShapeFlushInfo shapeFlushInfo, Function1<? super RenderContext, Boolean> render) {
        boolean m40693s = m40693s(shapeFlushInfo, render);
        if (!shapeFlushInfo.getIsPageNormalFlushFinish()) {
            ShapeFlushInfo stashShapeFlushInfo = shapeFlushInfo.stashShapeFlushInfo();
            Map<String, List<ShapeFlushInfo>> map = this.shapeFlushInfoMap;
            String id = stashShapeFlushInfo.getVirtualPageBoxInfo().getId();
            final PageNormalRenderHandler$flushShapeToPageWithStash$2 pageNormalRenderHandler$flushShapeToPageWithStash$2 = new Function1<String, List<ShapeFlushInfo>>() { // from class: com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler$flushShapeToPageWithStash$2
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final List<ShapeFlushInfo> invoke(@NotNull String it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new ArrayList();
                }
            };
            map.computeIfAbsent(id, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.atk
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    List m40682w;
                    m40682w = PageNormalRenderHandler.m40682w(Function1.this, obj);
                    return m40682w;
                }
            }).add(stashShapeFlushInfo);
        }
        return m40693s;
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
            m40684f(pageRenderNodeInfo);
            pageRenderNodeInfo.getRenderNode().discardDisplayList();
            m40683A(pageRenderNodeInfo);
            log("updateExistsRenderNode, isSliceOutOfDate = " + pageRenderNodeInfo.getIsSliceOutOfDate());
        }
    }

    @NotNull
    public final RectF viewportRectF() {
        return m40695x().getSizeConfig().getViewportSize().toRectF();
    }

    /* renamed from: x */
    public final SliceLruCache m40695x() {
        return getSliceStateManager().getLruCache();
    }

    /* renamed from: y */
    public final void m40696y(List<BoxInfo> boxList) {
        evict(BoxInfoUtils.INSTANCE.toBoxIdSet(boxList));
        m40690m(boxList, true);
    }

    /* renamed from: z */
    public final void m40697z(PageRenderNodeInfo pageNodeInfo) {
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
            shapeFlushInfo.setPageNormalFlushFinish(true);
            m40685g(shapeFlushInfo);
        }
        list.removeAll(arrayList);
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            m40680t(this, (ShapeFlushInfo) it2.next(), null, 2, null);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list2) {
            if (((ShapeFlushInfo) obj2).getIsPageNormalFlushFinish()) {
                arrayList2.add(obj2);
            }
        }
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            m40685g((ShapeFlushInfo) it3.next());
        }
        list.removeAll(arrayList2);
        log("reFlushToPage, rn.id = " + pageNodeInfo.getRenderNode().getUniqueId() + ", page.id = " + id + ", reFlushList = " + arrayList2.size() + ", hasRenderList = " + arrayList.size() + ", remainList = " + list.size());
    }

    @Override // com.onyx.android.sdk.universal.editor.display.IRenderHandler
    public void log(@NotNull Function0<String> function0) {
        IRenderHandler.DefaultImpls.log(this, function0);
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.display.PageNormalRenderHandler$a */
    /* loaded from: classes8.dex */
    public static final class C10324a {

        /* renamed from: a */
        @NotNull
        public final EditorBundle f51405a;

        /* renamed from: b */
        @NotNull
        public final List<BoxInfo> f51406b;

        /* renamed from: c */
        public final boolean f51407c;

        /* renamed from: d */
        public final float f51408d;

        public C10324a(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList, boolean z, float f) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
            this.f51405a = editorBundle;
            this.f51406b = visibleBoxList;
            this.f51407c = z;
            this.f51408d = f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: f */
        public static /* synthetic */ C10324a m40698f(C10324a c10324a, EditorBundle editorBundle, List list, boolean z, float f, int i, Object obj) {
            if ((i & 1) != 0) {
                editorBundle = c10324a.f51405a;
            }
            if ((i & 2) != 0) {
                list = c10324a.f51406b;
            }
            if ((i & 4) != 0) {
                z = c10324a.f51407c;
            }
            if ((i & 8) != 0) {
                f = c10324a.f51408d;
            }
            return c10324a.m40703e(editorBundle, list, z, f);
        }

        @NotNull
        /* renamed from: a */
        public final EditorBundle m40699a() {
            return this.f51405a;
        }

        @NotNull
        /* renamed from: b */
        public final List<BoxInfo> m40700b() {
            return this.f51406b;
        }

        /* renamed from: c */
        public final boolean m40701c() {
            return this.f51407c;
        }

        /* renamed from: d */
        public final float m40702d() {
            return this.f51408d;
        }

        @NotNull
        /* renamed from: e */
        public final C10324a m40703e(@NotNull EditorBundle editorBundle, @NotNull List<BoxInfo> visibleBoxList, boolean z, float f) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
            return new C10324a(editorBundle, visibleBoxList, z, f);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C10324a)) {
                return false;
            }
            C10324a c10324a = (C10324a) obj;
            return Intrinsics.areEqual(this.f51405a, c10324a.f51405a) && Intrinsics.areEqual(this.f51406b, c10324a.f51406b) && this.f51407c == c10324a.f51407c && Float.compare(this.f51408d, c10324a.f51408d) == 0;
        }

        @NotNull
        /* renamed from: g */
        public final EditorBundle m40704g() {
            return this.f51405a;
        }

        /* renamed from: h */
        public final boolean m40705h() {
            return this.f51407c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = ((this.f51405a.hashCode() * 31) + this.f51406b.hashCode()) * 31;
            boolean z = this.f51407c;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            return ((hashCode + i) * 31) + Float.hashCode(this.f51408d);
        }

        /* renamed from: i */
        public final float m40706i() {
            return this.f51408d;
        }

        @NotNull
        /* renamed from: j */
        public final List<BoxInfo> m40707j() {
            return this.f51406b;
        }

        @NotNull
        public String toString() {
            return "DisplayBoxListParams(editorBundle=" + this.f51405a + ", visibleBoxList=" + this.f51406b + ", forceRequestAllBoxList=" + this.f51407c + ", renderMaxScale=" + this.f51408d + ')';
        }

        public /* synthetic */ C10324a(EditorBundle editorBundle, List list, boolean z, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(editorBundle, list, (i & 4) != 0 ? false : z, (i & 8) != 0 ? AppConfig.INSTANCE.getRENDER_MAX_SCREEN_SCALE() : f);
        }
    }
}
